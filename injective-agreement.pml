// Needham-Schroeder 协议的单射一致性(injective-agreement)的验证
#define HASH(x) (x % 255)
// 接收消息并将消息放入接收缓冲区
#define EnqueueRcvBuffer(msg) receiveBuffer[HASH(msg.num)].num = msg.num; \\
    receiveBuffer[HASH(msg.num)].sender = msg.sender; \\
    receiveBuffer[HASH(msg.num)].receiver = msg.receiver; \\
    receiveBuffer[HASH(msg.num)].msg1 = msg.msg1; \\
    receiveBuffer[HASH(msg.num)].msg2 = msg.msg2; \\
    receiveBuffer[HASH(msg.num)].key = msg.key; \\
    printf("Enqueue Message:%d to receiveBuffer\n",HASH(msg.num));

// 发送消息并将消息放入发送缓冲区
#define EnqueueSendBuffer(msg) sendBuffer[HASH(msg.num)].num = msg.num; \\
    sendBuffer[HASH(msg.num)].sender = msg.sender; \\
    sendBuffer[HASH(msg.num)].receiver = msg.receiver; \\
    sendBuffer[HASH(msg.num)].msg1 = msg.msg1; \\
    sendBuffer[HASH(msg.num)].msg2 = msg.msg2; \\
    sendBuffer[HASH(msg.num)].key = msg.key; \\
    printf("Enqueue Message:%d to sendBuffer\n",HASH(msg.num));

#define COPY(from,to) to.num = from.num; \\
    to.sender = from.sender \\
    to.receiver = from.receiver; \\
    to.msg1 = from.msg1; \\
    to.msg2 = from.msg2; \\
    to.key = from.key; 

#define EQUAL (x,y) x.num == y.num && x.sender == y.sender && x.receiver == y.receiver && x.msg1 == y.msg1 && x.msg2 == y.msg2 && x.key == y.key;

// 通信者的身份
mtype:ID = {IDA,IDB,IDS};
// 公钥列表
mtype:KEY = {KPA,KPB,KPS};
// 消息类型，表示消息类型
mtype:DATA = {NA,NB,ANY};
// 验证消息，表示消息验证者的身份
mtype:VERIFY = {VA,VB,VS};

byte Num = 0;
bool AliceAgree = false;
bool BobAgree = false;
bool AliceSuccess = false;
bool BobSuccess = false;
typedef Message{
    byte num;
    mtype:ID sender,receiver;
    mtype:DATA msg1,msg2;
    mtype:KEY key;
}

// 用于交换消息的信道
chan ch = [0] of {mtype:ID, mtype:VERIFY,Message};


Message sendBuffer[255];
Message receiveBuffer[255];

proctype Alice () {
    mtype:ID sender,receiver;
    mtype:VERIFY verifier;
    mtype:KEY key;
    mtype:DATA nonce;
    Message outmsg,inmsg; // 发送的消息和接收的消息
    // A认为在与B通信,但是是与伪装成B的Eve通信
    // 所以receiver = IDS
    atomic {
        receiver = IDS;
        key = KPS;
        verifier = VB;
    }
    // A向伪装成B的Eve发送消息，表示请求连接。
    atomic {
        outmsg.num = Num;
        outmsg.sender = IDA;
        outmsg.msg1 = NA;
        outmsg.msg2 = ANY;
        outmsg.receiver = receiver;
        outmsg.key = key;
        ch ! receiver,VA,outmsg;
        EnqueueSendBuffer(outmsg);
    }
    // A接收到Eve发来的消息，里面包含的是B的nonce
    atomic {
        ch ? IDA,VB,inmsg;
    }
    
    atomic {
        if 
        :: inmsg.msg1 != NA -> 
            printf("Wrong Message\n");
        :: else -> nonce = inmsg.msg2;
        fi;
    }
    // A向Eve发送消息，里面包含了B的nonce
    atomic {
        Num = Num + 1; 
        outmsg.num = Num;
        outmsg.sender = IDA;
        outmsg.receiver = receiver;
        outmsg.msg1 = nonce;
        outmsg.msg2 = ANY;
        outmsg.key = key;
        ch ! receiver,VA,outmsg;
        EnqueueSendBuffer(outmsg);
    }
    AliceSuccess = true;
    // 遍历数组判断Alice和Bob对变量集的内容是否达成一致
    byte cnt = 0;
    do
        ::atomic {
            for (cnt : 1 .. Num - 1){
                if 
                    :: EQUAL(sendBuffer[cnt],receiveBuffer[cnt]) -> 
                        goto err;
                    :: else -> skip;
                fi;                                            
            }                              
        }
    od;
err:
    printf("Alice not agree with Bob\n");
end:

}

proctype Bob () {
    Message outmsg,inmsg;
    mtype:ID receiver;
    mtype:VERIFY verifier;
    mtype:KEY key;
    // B接收到Eve发来的消息，里面包含的是A的nonce
    atomic {
        ch ? IDB,verifier,inmsg;
    }
    atomic {
        if 
        :: inmsg.key != KPB -> 
            printf("Wrong Public Key\n");
        :: else -> skip;
        fi;
        EnqueueRcvBuffer(inmsg);
    }
    
    atomic {
        if 
        // B认为在与A通信
        :: verifier == VA -> 
            printf("Bob receive A's Message\n");
            key = KPA;
        :: else -> skip;
        fi;
        // 接收到的消息放入接收缓冲区
        EnqueueRcvBuffer(inmsg);
        outmsg.num = inmsg.num;
        outmsg.sender = IDB;
        outmsg.receiver = IDS;
        outmsg.msg1 = inmsg.msg1;
        outmsg.msg2 = NB;
        outmsg.key = key;
        ch ! IDS,VB,outmsg;
    }
    // B接受到Eve发来的消息，里面包含了B的nonce 
    atomic {
        ch ? IDB,verifier,inmsg;
        // 如果消息体包含了B的nonce，则表示A和B通信成功
        if 
        :: inmsg.msg1 == NB -> BobSuccess = true;
        :: else -> goto err;
        fi;
        EnqueueRcvBuffer(inmsg);
        goto end;
    }
    // 遍历数组判断Alice和Bob对变量集的内容是否达成一致
    byte cnt = 0
    do
        :: true -> 
            if 
                :: EQUAL(receiveBuffer[cnt],sendBuffer[cnt]) -> 
                    cnt = cnt + 1;
                    if 
                        :: cnt == Num -> 
                            BobAgree = true;
                            goto end;
                        :: else -> break;
                    fi;
                :: else -> goto err;
            fi;
    od;   
err:
    printf("Bob receive wrong message\n");
end:

}

proctype Eve () {
    Message outmsg,inmsg;
    mtype:VERIFY verifier;
    atomic {
        // Eve接收A的消息，然后将消息转发给B
        ch ? IDS,verifier,inmsg;
        COPY(inmsg,outmsg);
        outmsg.receiver = IDB;
        outmsg.key = KPB;
    }
    atomic {
        ch ! IDB,verifier,outmsg;
    }
    // Eve接收B的消息，然后将消息转发给A,其中包含了B的nonce
    atomic {
        ch ? IDS,verifier,inmsg;
        COPY(inmsg,outmsg);
    }
    atomic {
        ch ! IDA,verifier,outmsg;
    }
    // Eve转发A的消息给B，其中包含了B的nonce
    atomic {
        ch ? IDS,verifier,inmsg;
        COPY(inmsg,outmsg);
        outmsg.key = KPB;
        outmsg.receiver = IDB;
    }
    
    atomic {
        ch ! IDB,verifier,outmsg;
    }
    
}


ltl agreement {
    [] (AliceSuccess && BobSuccess) ->  (<> AliceAgree&&BobAgree);
}

init {
    run Alice();
    run Bob();
    run Eve();
}
