// NS protocol中间人攻击属性验证

mtype:ID = {A, B, C};
mtype:KEY = {KEY_A, KEY_B, KEY_C};
mtype:DATA = {NA, NB, ANY};
mtype:VERIFY = {VA, VB, VC};
typedef Message {
    mtype:ID sender,receiver;
    mtype:DATA msg1,msg2;
    mtype:KEY key;
}


chan ch = [0] of {mtype:ID,mtype:VERIFY, Message}

proctype Alice () {
    mtype:DATA na = NA;
    mtype:KEY kpa = KPA;
    mtype:KEY kpb = KPB;
    mtype:KEY kpc = KPC;
    mtype:ID receiver;
    mtype:VERIFY verified;
    Message out_msg,in_msg;
    out_msg.sender = A;
    out_msg.msg1 = na; 
    out_msg.msg2 = ANY;
    atomic {
        // 随机选择发送者,代表可能给Bob发消息也可能给C发消息
        if 
        ::receiver = B;
        ::receiver = C;
        fi;
        out_msg.receiver = receiver;
        // 根据发送者选择对应的公钥
        if 
        ::out_msg.receiver == B -> 
            out_msg.key = KPB;
            verified = VB;
        ::out_msg.receiver == C -> 
            out_msg.key = KPC;
            verified = VC;
        fi;
        ch ! receiver, VA,ut_msg; 
    }
    atomic {
        ch ? A, verified,in_msg;
    }
}

proctype Bob () {
    mtype:DATA nb = NB;
    mtype:KEY kpa = KPA;
    mtype:KEY kpb = KPB;
    mtype:KEY kpc = KPC;
    mtype:VERIFY verified;
    Message out_msg,in_msg;
    ch ? B,VA,in_msg; 
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
        :: out_msg.receiver == A -> out_msg.key = kpa;
        :: out_msg.receiver == C -> out_msg.key = kpc;
        fi;
        ch ! out_msg.receiver,VB,out_msg;
    }
}

proctype Attack () {
    Message out_msg,in_msg;
    mtype:VERIFY verified;
    atomic {
        ch ? C,verified,in_msg;
        out_msg.receiver = B;
        out_msg.sender = in_msg.sender; 
        out_msg.msg1 = in_msg.msg1;
        out_msg.msg2 = in_msg.msg2;
        out_msg.key = KPB;
    }
    atomic {
        ch ! B,VA,out_msg;
    }
    atomic {
        ch ? A,VB,in_msg;
         
    }
}

init {
    run Alice();
    run Bob();
    run Attack();
}
