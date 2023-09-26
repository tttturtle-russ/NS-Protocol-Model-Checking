// NS protocol中间人攻击属性验证

mtype:ID = {A, B, C};
mtype:KEY = {KEY_A, KEY_B, KEY_C};
mtype:DATA = {NA, NB, ANY};

typedef Message {
    mtype:ID sender,receiver;
    mtype:DATA msg;
    mtype:KEY key;
}


chan ch = [0] of {mtype:ID, Message}

proctype Alice () {
    mtype:DATA na = NA;
    mtype:KEY kpa = KPA;
    mtype:KEY kpb = KPB;
    mtype:KEY kpc = KPC;
    mtype:ID receiver;
    Message out_msg,in_msg;
    out_msg.sender = A;
    out_msg.msg = na; 
    atomic {
        // 随机选择发送者
        if 
        ::receiver = B;
        ::receiver = C;
        fi;
        out_msg.receiver = receiver;
        // 根据发送者选择对应的公钥
        if 
        ::out_msg.receiver == B -> out_msg.key = KEY_B;
        ::out_msg.receiver == C -> out_msg.key = KEY_C;
        fi;
        ch ! receiver, out_msg; 
    }
    atomic {
        ch ? A, in_msg;
    }
}

proctype Bob () {
    mtype:DATA nb = NB;
    mtype:KEY kpa = KPA;
    mtype:KEY kpb = KPB;
    mtype:KEY kpc = KPC;
    Message out_msg,in_msg;
    ch ? B,in_msg; 
    atomic {
        if 
        ::in_msg.receiver != B -> 
            printf("Wrong receiver in B\n");
        ::else -> skip;
        fi;
    }
}

proctype Attack () {
    Message out_msg,in_msg;
    ch ? C,in_msg;
}

init {
    run Alice();
    run Bob();
    run Attack();
}
