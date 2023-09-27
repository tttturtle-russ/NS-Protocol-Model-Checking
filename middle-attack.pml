// NS protocol中间人攻击属性验证

// 通信者的身份
mtype:ID = {A, B, C};
// 通信者对应的公钥
mtype:KEY = {KPA, KPB, KPC};
// 消息类型，表示消息内容，主要是生产的随机数
mtype:DATA = {NA, NB, ANY, TestA, TestB};
// 验证消息，表示验证者身份
mtype:VERIFY = {VA, VB, VC};
typedef Message {
    mtype:ID sender,receiver;
    mtype:DATA msg1,msg2;
    mtype:KEY key;
}

bool AliceSuccess = false;
bool BobSuccess = false;

// 通信信道，ID表示通信者身份，VERIFY表示验证者身份，Message表示消息内容
chan ch = [0] of {mtype:ID,mtype:VERIFY, Message}

proctype Alice () {
    mtype:DATA na = NA;
    mtype:KEY key;
    mtype:ID receiver;
    mtype:VERIFY verified;
    Message out_msg,in_msg;
    atomic {
        out_msg.sender = A;
        out_msg.msg1 = na; 
        out_msg.msg2 = ANY;
        // 随机选择发送者,代表可能给Bob发消息也可能给C发消息
        if 
        ::receiver = B;
        ::receiver = C;
        fi;
        out_msg.receiver = receiver;
        // 根据发送者选择对应的公钥
        if 
        ::out_msg.receiver == B -> 
            key = KPB;
            verified = VB;
        ::out_msg.receiver == C -> 
            key = KPC;
            verified = VC;
        fi;
        out_msg.key = key;
        ch ! receiver, VA,out_msg; 
    }
    atomic {
        ch ? A, verified,in_msg;
    }
    atomic {
        out_msg.sender = A;
        out_msg.receiver = receiver;
        out_msg.msg1 = in_msg.msg2;
        out_msg.msg2 = ANY;
        out_msg.key = key;
        ch ! receiver,VA,out_msg;
    }
    atomic {
        ch ? A,verified,in_msg;
        if 
        :: in_msg.msg1 == TestA -> 
        atomic {
            AliceSuccess = true;
            printf("Alice receive message TestA\n");
        }
        :: else ->
        atomic {
            printf("Alice receive wrong message\n");   
        }
        fi;
    }
}

proctype Bob () {
    mtype:DATA nb = NB;
    mtype:VERIFY verified;
    mtype:ID receiver;
    Message out_msg,in_msg;
    atomic {
        ch ? B,verified,in_msg; 
    }
    atomic {
        if 
        ::in_msg.key != KPB -> 
            printf("Wrong Public Key\n");
        ::else -> skip;
        fi;
        out_msg.receiver = in_msg.sender;
        out_msg.sender = B;
        out_msg.msg1 = in_msg.msg1;
        out_msg.msg2 = nb;
        if 
        :: out_msg.receiver == A -> 
            out_msg.key = KPA;
            receiver = A;
        :: out_msg.receiver == C -> 
            out_msg.key = KPC;
            receiver = C;
        fi;
        // 发送消息给Alice或者C
        ch ! receiver,VB,out_msg;
    }
    atomic {
        ch ? B,verified,in_msg;
        out_msg.sender = B;
        out_msg.receiver = in_msg.sender;
        out_msg.msg1 = TestB;
        out_msg.msg2 = ANY;
        out_msg.key = KPA;
        ch ! A,VB,out_msg;
    }
    atomic {
        printf("Bob Send Message TestB\n");
        BobSuccess = true;
    }
    
}

proctype Attack () {
    Message out_msg,in_msg;
    mtype:VERIFY verified;
    atomic {
        // 模拟Alice->C的消息
        ch ? C,verified,in_msg;
        out_msg.receiver = B;
        out_msg.sender = in_msg.sender; 
        out_msg.msg1 = in_msg.msg1;
        out_msg.msg2 = in_msg.msg2;
        out_msg.key = KPB;
    }
    atomic {
        ch ! B,verified,out_msg;
    }
    atomic {
        ch ? A,VB,in_msg;
        out_msg.sender = C;
        out_msg.receiver = in_msg.receiver;
        out_msg.msg1 = in_msg.msg1;
        out_msg.msg2 = in_msg.msg2;
        out_msg.key = in_msg.key;
        ch ! A,VC,out_msg;
    }
    atomic {
        ch ? C,verified,in_msg;
        out_msg.sender = in_msg.sender;
        out_msg.receiver = B;
        out_msg.msg1 = in_msg.msg1;
        out_msg.msg2 = in_msg.msg2;
        out_msg.key = KPB;
        ch ! B,verified,out_msg;
    }
    atomic {
        ch ? A,VB,in_msg;
        out_msg.sender = in_msg.sender
        out_msg.receiver = in_msg.receiver;
        if 
        :: in_msg.msg1 == TestB -> out_msg.msg1 = TestA;
        :: else -> out_msg.msg1 = ANY;
        fi;
        out_msg.msg2 = ANY;
        out_msg.key = in_msg.key;
        ch ! A,VC,out_msg;
    }
    
}

active proctype monitor () {
    assert(!(BobSuccess && AliceSuccess));
}

init {
    run Alice();
    run Bob();
    run Attack();
}
