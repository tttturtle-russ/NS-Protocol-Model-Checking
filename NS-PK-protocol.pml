// Needham-Schroeder 协议的公钥算法分析
bool AliceSuccess = false;
bool BobSuccess = false;

mtype:ID = {IDA, IDB, IDS};
mtype:DATA = {A, B, KPA, KPB, KSS, NA, NB,ANY}

chan ch = [0] of {mtype:ID, mtype:ID,mtype:DATA, mtype:DATA, mtype:DATA}

proctype Alice() {
    mtype:DATA kpb;
    mtype:DATA nb;
    ch ! IDA,IDS,A,B,ANY;
    ch ? IDS,IDA,kpb,B,KSS;
    printf("receive kpb");printm(kpb);printf("\n");
    ch ! IDA,IDB,NA,A,kpb;
    ch ? IDB,IDA,NA,nb,KPA;
    printf("receive nb ");printm(nb);printf("\n");
    ch ! IDA,IDB,nb,kpb;
    atomic {
        printf("Alice Success\n");
        AliceSuccess = true;
    }
}

proctype Bob() {
    mtype:DATA kpa;
    mtype:DATA na;
    ch ? IDA,IDB,na,A,KPB;
    printf("receive Na ");printm(na);printf("\n");
    ch ! IDB,IDS,B,A,ANY;
    ch ? IDS,IDB,kpa,A,KSS;
    printf("receive KPA ");printm(kpa);printf("\n");
    ch ! IDB,IDA,na,NB,kpa;
    atomic {
        printf("Bob Success\n");
        BobSuccess = true;
    }
}

proctype Server () {
    do
    :: ch ? IDA,IDS,A,B,ANY -> ch ! IDS,IDA,KPB,B,KSS;
    :: ch ? IDB,IDS,B,A,ANY -> ch ! IDS,IDB,KPA,A,KSS;
    :: (AliceSuccess && BobSuccess) -> break;
    od;
    printf("done !\n");
}


init {
    run Alice();
    run Bob();
    run Server();
}
