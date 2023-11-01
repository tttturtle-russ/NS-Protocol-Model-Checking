// Needham-Schroeder 协议的单射一致性(injective-agreement)的验证
#define HASH(x) (x % 255)
// 接收消息并将消息放入接收缓冲区
#define EnqueueRcvBuffer(msg) (receiveBuffer[HASH(msg.num)].num = msg.num; receiveBuffer[HASH(msg.num)].sender = msg.sender; receiveBuffer[HASH(msg.num)].receiver = msg.receiver; receiveBuffer[HASH(msg.num)].msg1 = msg.msg1; receiveBuffer[HASH(msg.num)].msg2 = msg.msg2;receiveBuffer[HASH(msg.num)].key = msg.key; printf("Enqueue Message:%d to receiveBuffer\n",HASH(msg.num));)

// 发送消息并将消息放入发送缓冲区
#define EnqueueSendBuffer(msg) (sendBuffer[HASH(msg.num)].num = msg.num; \\
    sendBuffer[HASH(msg.num)].sender = msg.sender; \\
    sendBuffer[HASH(msg.num)].receiver = msg.receiver; \\
    sendBuffer[HASH(msg.num)].msg1 = msg.msg1; \\
    sendBuffer[HASH(msg.num)].msg2 = msg.msg2; \\
    sendBuffer[HASH(msg.num)].key = msg.key; \\
    printf("Enqueue Message:%d to sendBuffer\n",HASH(msg.num));)

#define COPY(from,to) (to.num = from.num; \\
    to.sender = from.sender; \\
    to.receiver = from.receiver; \\
    to.msg1 = from.msg1; \\
    to.msg2 = from.msg2; \\
    to.key = from.key; \\)

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

init {
    Message out,in;
    EQUAL(out,in);
}
