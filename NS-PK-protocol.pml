// Needham-Schroeder 协议的公钥算法分析
bool AliceSuccess = false;
bool BobSuccess = false;

mtype:ID = {IDA, IDB, IDS};
mtype:DATA = {A, B, KPA, KPB, KSS, NA, NB}

chan ch = [0] of {mtype:ID, mtype:ID,mtype:DATA, mtype:DATA, mtype:DATA}

proctype Alice() {
    mtype:DATA kpb;
    mtype:DATA nb;
    ch ! IDA,IDS,A,B,_;
    ch ? IDS,IDA,kpb,B,KSS;
    ch ! IDA,IDB,NA,A,kpb;
    ch ? IDB,IDA,NA,nb,KPA;
    ch ! IDA,IDB,nb,kpb;
    atomic {
        AliceSuccess = true;
    }
}

proctype Bob() {
    mtype:DATA kpa;
    mtype:DATA na;
    ch ? IDA,IDB,na,A,KPB;
    ch ! IDB,IDS,B,A,_;
    ch ? IDS,IDB,kpa,A,KSS;
    ch ! IDB,IDA,na,NB,kpa;
    atomic {
        BobSuccess = true;
    }
}

proctype Server () {
    do
    ::ch ? IDA,IDS,A,B,_ -> ch ! IDS,IDA,KPB,B,KSS;
    ::ch ? IDB,IDS,B,A,_ -> ch ! IDS,IDB,KPA,A,KSS;
    ::(AliceSuccess && BobSuccess) -> break;
    od;
}


init {
    run Alice();
    run Bob();
    run Server();
}
