#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM agreement */
	case 3: // STATE 1 - _spin_nvr.tmp:4 - [((!(AliceAgree)&&(AliceSuccess&&BobSuccess)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !(((int)now.AliceAgree))&&(((int)now.AliceSuccess)&&((int)now.BobSuccess)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 3 - _spin_nvr.tmp:5 - [((!(BobAgree)&&(AliceSuccess&&BobSuccess)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][3] = 1;
		if (!(( !(((int)now.BobAgree))&&(((int)now.AliceSuccess)&&((int)now.BobSuccess)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 8 - _spin_nvr.tmp:10 - [((!(AliceAgree)&&(AliceSuccess&&BobSuccess)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][8] = 1;
		if (!(( !(((int)now.AliceAgree))&&(((int)now.AliceSuccess)&&((int)now.BobSuccess)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 13 - _spin_nvr.tmp:15 - [((AliceSuccess&&BobSuccess))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][13] = 1;
		if (!((((int)now.AliceSuccess)&&((int)now.BobSuccess))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 18 - _spin_nvr.tmp:17 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported18 = 0;
			if (verbose && !reported18)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported18 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][18] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 8: // STATE 1 - ../injective-agreement.pml:241 - [(run Alice())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 2 - ../injective-agreement.pml:242 - [(run Bob())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: // STATE 3 - ../injective-agreement.pml:243 - [(run Eve())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 4 - ../injective-agreement.pml:244 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Eve */
	case 12: // STATE 1 - ../injective-agreement.pml:207 - [ch?1,verifier,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:7 - 1)
		reached[2][1] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->verifier;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->inmsg.key;
		;
		((P2 *)_this)->verifier = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Eve:verifier", ((P2 *)_this)->verifier);
#endif
		;
		((P2 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.num", ((int)((P2 *)_this)->inmsg.num));
#endif
		;
		((P2 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.sender", ((P2 *)_this)->inmsg.sender);
#endif
		;
		((P2 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.receiver", ((P2 *)_this)->inmsg.receiver);
#endif
		;
		((P2 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg1", ((P2 *)_this)->inmsg.msg1);
#endif
		;
		((P2 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg2", ((P2 *)_this)->inmsg.msg2);
#endif
		;
		((P2 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Eve:inmsg.key", ((P2 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 13: // STATE 2 - ../injective-agreement.pml:29 - [outmsg.num = inmsg.num] (0:13:8 - 1)
		IfNotBlocked
		reached[2][2] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->outmsg.num);
		((P2 *)_this)->outmsg.num = ((int)((P2 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("Eve:outmsg.num", ((int)((P2 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = inmsg.sender(13, 3, 13) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->outmsg.sender;
		((P2 *)_this)->outmsg.sender = ((P2 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("Eve:outmsg.sender", ((P2 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.receiver = inmsg.receiver(13, 4, 13) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->outmsg.receiver;
		((P2 *)_this)->outmsg.receiver = ((P2 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("Eve:outmsg.receiver", ((P2 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.msg1 = inmsg.msg1(13, 5, 13) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->outmsg.msg1;
		((P2 *)_this)->outmsg.msg1 = ((P2 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg1", ((P2 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = inmsg.msg2(13, 6, 13) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->outmsg.msg2;
		((P2 *)_this)->outmsg.msg2 = ((P2 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg2", ((P2 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.key = inmsg.key(13, 7, 13) */
		reached[2][7] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->outmsg.key;
		((P2 *)_this)->outmsg.key = ((P2 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("Eve:outmsg.key", ((P2 *)_this)->outmsg.key);
#endif
		;
		/* merge: outmsg.receiver = 2(13, 9, 13) */
		reached[2][9] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->outmsg.receiver;
		((P2 *)_this)->outmsg.receiver = 2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.receiver", ((P2 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.key = 2(13, 10, 13) */
		reached[2][10] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->outmsg.key;
		((P2 *)_this)->outmsg.key = 2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.key", ((P2 *)_this)->outmsg.key);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 14: // STATE 12 - ../injective-agreement.pml:213 - [ch!2,verifier,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][12] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 2, ((P2 *)_this)->verifier, ((int)((P2 *)_this)->outmsg.num), ((P2 *)_this)->outmsg.sender, ((P2 *)_this)->outmsg.receiver, ((P2 *)_this)->outmsg.msg1, ((P2 *)_this)->outmsg.msg2, ((P2 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 15: // STATE 14 - ../injective-agreement.pml:217 - [ch?1,verifier,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:7 - 1)
		reached[2][14] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->verifier;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->inmsg.key;
		;
		((P2 *)_this)->verifier = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Eve:verifier", ((P2 *)_this)->verifier);
#endif
		;
		((P2 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.num", ((int)((P2 *)_this)->inmsg.num));
#endif
		;
		((P2 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.sender", ((P2 *)_this)->inmsg.sender);
#endif
		;
		((P2 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.receiver", ((P2 *)_this)->inmsg.receiver);
#endif
		;
		((P2 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg1", ((P2 *)_this)->inmsg.msg1);
#endif
		;
		((P2 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg2", ((P2 *)_this)->inmsg.msg2);
#endif
		;
		((P2 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Eve:inmsg.key", ((P2 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 16: // STATE 15 - ../injective-agreement.pml:29 - [outmsg.num = inmsg.num] (0:24:6 - 1)
		IfNotBlocked
		reached[2][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->outmsg.num);
		((P2 *)_this)->outmsg.num = ((int)((P2 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("Eve:outmsg.num", ((int)((P2 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = inmsg.sender(24, 16, 24) */
		reached[2][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->outmsg.sender;
		((P2 *)_this)->outmsg.sender = ((P2 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("Eve:outmsg.sender", ((P2 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.receiver = inmsg.receiver(24, 17, 24) */
		reached[2][17] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->outmsg.receiver;
		((P2 *)_this)->outmsg.receiver = ((P2 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("Eve:outmsg.receiver", ((P2 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.msg1 = inmsg.msg1(24, 18, 24) */
		reached[2][18] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->outmsg.msg1;
		((P2 *)_this)->outmsg.msg1 = ((P2 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg1", ((P2 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = inmsg.msg2(24, 19, 24) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->outmsg.msg2;
		((P2 *)_this)->outmsg.msg2 = ((P2 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg2", ((P2 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.key = inmsg.key(24, 20, 24) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->outmsg.key;
		((P2 *)_this)->outmsg.key = ((P2 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("Eve:outmsg.key", ((P2 *)_this)->outmsg.key);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 17: // STATE 23 - ../injective-agreement.pml:221 - [ch!3,verifier,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][23] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 3, ((P2 *)_this)->verifier, ((int)((P2 *)_this)->outmsg.num), ((P2 *)_this)->outmsg.sender, ((P2 *)_this)->outmsg.receiver, ((P2 *)_this)->outmsg.msg1, ((P2 *)_this)->outmsg.msg2, ((P2 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 18: // STATE 25 - ../injective-agreement.pml:225 - [ch?1,verifier,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:7 - 1)
		reached[2][25] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->verifier;
		(trpt+1)->bup.ovals[1] = ((int)((P2 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->inmsg.key;
		;
		((P2 *)_this)->verifier = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Eve:verifier", ((P2 *)_this)->verifier);
#endif
		;
		((P2 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.num", ((int)((P2 *)_this)->inmsg.num));
#endif
		;
		((P2 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.sender", ((P2 *)_this)->inmsg.sender);
#endif
		;
		((P2 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.receiver", ((P2 *)_this)->inmsg.receiver);
#endif
		;
		((P2 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg1", ((P2 *)_this)->inmsg.msg1);
#endif
		;
		((P2 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Eve:inmsg.msg2", ((P2 *)_this)->inmsg.msg2);
#endif
		;
		((P2 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Eve:inmsg.key", ((P2 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 19: // STATE 26 - ../injective-agreement.pml:29 - [outmsg.num = inmsg.num] (0:37:8 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((int)((P2 *)_this)->outmsg.num);
		((P2 *)_this)->outmsg.num = ((int)((P2 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("Eve:outmsg.num", ((int)((P2 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = inmsg.sender(37, 27, 37) */
		reached[2][27] = 1;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->outmsg.sender;
		((P2 *)_this)->outmsg.sender = ((P2 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("Eve:outmsg.sender", ((P2 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.receiver = inmsg.receiver(37, 28, 37) */
		reached[2][28] = 1;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->outmsg.receiver;
		((P2 *)_this)->outmsg.receiver = ((P2 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("Eve:outmsg.receiver", ((P2 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.msg1 = inmsg.msg1(37, 29, 37) */
		reached[2][29] = 1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->outmsg.msg1;
		((P2 *)_this)->outmsg.msg1 = ((P2 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg1", ((P2 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = inmsg.msg2(37, 30, 37) */
		reached[2][30] = 1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->outmsg.msg2;
		((P2 *)_this)->outmsg.msg2 = ((P2 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.msg2", ((P2 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.key = inmsg.key(37, 31, 37) */
		reached[2][31] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->outmsg.key;
		((P2 *)_this)->outmsg.key = ((P2 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("Eve:outmsg.key", ((P2 *)_this)->outmsg.key);
#endif
		;
		/* merge: outmsg.key = 2(37, 33, 37) */
		reached[2][33] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->outmsg.key;
		((P2 *)_this)->outmsg.key = 2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.key", ((P2 *)_this)->outmsg.key);
#endif
		;
		/* merge: outmsg.receiver = 2(37, 34, 37) */
		reached[2][34] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->outmsg.receiver;
		((P2 *)_this)->outmsg.receiver = 2;
#ifdef VAR_RANGES
		logval("Eve:outmsg.receiver", ((P2 *)_this)->outmsg.receiver);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 20: // STATE 36 - ../injective-agreement.pml:232 - [ch!2,verifier,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][36] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P2 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 2, ((P2 *)_this)->verifier, ((int)((P2 *)_this)->outmsg.num), ((P2 *)_this)->outmsg.sender, ((P2 *)_this)->outmsg.receiver, ((P2 *)_this)->outmsg.msg1, ((P2 *)_this)->outmsg.msg2, ((P2 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 21: // STATE 38 - ../injective-agreement.pml:235 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][38] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 22: // STATE 1 - ../injective-agreement.pml:140 - [ch?2,verifier,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:7 - 1)
		reached[1][1] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (2 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->verifier;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[5] = ((P1 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[6] = ((P1 *)_this)->inmsg.key;
		;
		((P1 *)_this)->verifier = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Bob:verifier", ((P1 *)_this)->verifier);
#endif
		;
		((P1 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.num", ((int)((P1 *)_this)->inmsg.num));
#endif
		;
		((P1 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.sender", ((P1 *)_this)->inmsg.sender);
#endif
		;
		((P1 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.receiver", ((P1 *)_this)->inmsg.receiver);
#endif
		;
		((P1 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.msg1", ((P1 *)_this)->inmsg.msg1);
#endif
		;
		((P1 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.msg2", ((P1 *)_this)->inmsg.msg2);
#endif
		;
		((P1 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Bob:inmsg.key", ((P1 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 23: // STATE 3 - ../injective-agreement.pml:144 - [((inmsg.key!=2))] (16:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->inmsg.key!=2)))
			continue;
		/* merge: printf('Wrong Public Key\\n')(0, 4, 16) */
		reached[1][4] = 1;
		Printf("Wrong Public Key\n");
		/* merge: .(goto)(0, 8, 16) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 24: // STATE 9 - ../injective-agreement.pml:5 - [receiveBuffer[(inmsg.num%255)].num = inmsg.num] (0:40:6 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num);
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = ((int)((P1 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].num", ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num));
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].sender = inmsg.sender(40, 10, 40) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = ((P1 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].sender", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].receiver = inmsg.receiver(40, 11, 40) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = ((P1 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].receiver", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg1 = inmsg.msg1(40, 12, 40) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = ((P1 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg1", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg2 = inmsg.msg2(40, 13, 40) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[4] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = ((P1 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg2", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].key = inmsg.key(40, 14, 40) */
		reached[1][14] = 1;
		(trpt+1)->bup.ovals[5] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = ((P1 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].key", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key);
#endif
		;
		/* merge: printf('Enqueue Message:%d to receiveBuffer\\n',(inmsg.num%255))(40, 15, 40) */
		reached[1][15] = 1;
		Printf("Enqueue Message:%d to receiveBuffer\n", (((int)((P1 *)_this)->inmsg.num)%255));
		_m = 3; goto P999; /* 6 */
	case 25: // STATE 18 - ../injective-agreement.pml:154 - [((verifier==3))] (32:0:2 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((P1 *)_this)->verifier==3)))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: verifier */  (trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->verifier;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->verifier = 0;
		/* merge: printf('Bob receive A's Message\\n')(32, 19, 32) */
		reached[1][19] = 1;
		Printf("Bob receive A's Message\n");
		/* merge: key = 3(32, 20, 32) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->key;
		((P1 *)_this)->key = 3;
#ifdef VAR_RANGES
		logval("Bob:key", ((P1 *)_this)->key);
#endif
		;
		/* merge: .(goto)(0, 24, 32) */
		reached[1][24] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: // STATE 25 - ../injective-agreement.pml:5 - [receiveBuffer[(inmsg.num%255)].num = inmsg.num] (0:39:12 - 1)
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.ovals = grab_ints(12);
		(trpt+1)->bup.ovals[0] = ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num);
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = ((int)((P1 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].num", ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num));
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].sender = inmsg.sender(39, 26, 39) */
		reached[1][26] = 1;
		(trpt+1)->bup.ovals[1] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = ((P1 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].sender", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].receiver = inmsg.receiver(39, 27, 39) */
		reached[1][27] = 1;
		(trpt+1)->bup.ovals[2] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = ((P1 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].receiver", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg1 = inmsg.msg1(39, 28, 39) */
		reached[1][28] = 1;
		(trpt+1)->bup.ovals[3] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = ((P1 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg1", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg2 = inmsg.msg2(39, 29, 39) */
		reached[1][29] = 1;
		(trpt+1)->bup.ovals[4] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = ((P1 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg2", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].key = inmsg.key(39, 30, 39) */
		reached[1][30] = 1;
		(trpt+1)->bup.ovals[5] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = ((P1 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].key", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key);
#endif
		;
		/* merge: printf('Enqueue Message:%d to receiveBuffer\\n',(inmsg.num%255))(39, 31, 39) */
		reached[1][31] = 1;
		Printf("Enqueue Message:%d to receiveBuffer\n", (((int)((P1 *)_this)->inmsg.num)%255));
		/* merge: outmsg.num = inmsg.num(39, 33, 39) */
		reached[1][33] = 1;
		(trpt+1)->bup.ovals[6] = ((int)((P1 *)_this)->outmsg.num);
		((P1 *)_this)->outmsg.num = ((int)((P1 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("Bob:outmsg.num", ((int)((P1 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = 2(39, 34, 39) */
		reached[1][34] = 1;
		(trpt+1)->bup.ovals[7] = ((P1 *)_this)->outmsg.sender;
		((P1 *)_this)->outmsg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:outmsg.sender", ((P1 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.receiver = 1(39, 35, 39) */
		reached[1][35] = 1;
		(trpt+1)->bup.ovals[8] = ((P1 *)_this)->outmsg.receiver;
		((P1 *)_this)->outmsg.receiver = 1;
#ifdef VAR_RANGES
		logval("Bob:outmsg.receiver", ((P1 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.msg1 = inmsg.msg1(39, 36, 39) */
		reached[1][36] = 1;
		(trpt+1)->bup.ovals[9] = ((P1 *)_this)->outmsg.msg1;
		((P1 *)_this)->outmsg.msg1 = ((P1 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("Bob:outmsg.msg1", ((P1 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = 2(39, 37, 39) */
		reached[1][37] = 1;
		(trpt+1)->bup.ovals[10] = ((P1 *)_this)->outmsg.msg2;
		((P1 *)_this)->outmsg.msg2 = 2;
#ifdef VAR_RANGES
		logval("Bob:outmsg.msg2", ((P1 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.key = key(39, 38, 39) */
		reached[1][38] = 1;
		(trpt+1)->bup.ovals[11] = ((P1 *)_this)->outmsg.key;
		((P1 *)_this)->outmsg.key = ((P1 *)_this)->key;
#ifdef VAR_RANGES
		logval("Bob:outmsg.key", ((P1 *)_this)->outmsg.key);
#endif
		;
		_m = 3; goto P999; /* 12 */
	case 27: // STATE 39 - ../injective-agreement.pml:167 - [ch!1,2,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[1][39] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 1, 2, ((int)((P1 *)_this)->outmsg.num), ((P1 *)_this)->outmsg.sender, ((P1 *)_this)->outmsg.receiver, ((P1 *)_this)->outmsg.msg1, ((P1 *)_this)->outmsg.msg2, ((P1 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 28: // STATE 41 - ../injective-agreement.pml:171 - [ch?2,verifier,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:8 - 1)
		reached[1][41] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (2 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(8);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->verifier;
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[5] = ((P1 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[6] = ((P1 *)_this)->inmsg.key;
		;
		((P1 *)_this)->verifier = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Bob:verifier", ((P1 *)_this)->verifier);
#endif
		;
		((P1 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.num", ((int)((P1 *)_this)->inmsg.num));
#endif
		;
		((P1 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.sender", ((P1 *)_this)->inmsg.sender);
#endif
		;
		((P1 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.receiver", ((P1 *)_this)->inmsg.receiver);
#endif
		;
		((P1 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.msg1", ((P1 *)_this)->inmsg.msg1);
#endif
		;
		((P1 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Bob:inmsg.msg2", ((P1 *)_this)->inmsg.msg2);
#endif
		;
		((P1 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Bob:inmsg.key", ((P1 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->verifier); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		if (TstOnly) return 1; /* TT */
		/* dead 2: verifier */  (trpt+1)->bup.ovals[7] = ((P1 *)_this)->verifier;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->verifier = 0;
		_m = 4; goto P999; /* 0 */
	case 29: // STATE 42 - ../injective-agreement.pml:174 - [((inmsg.msg1==2))] (55:0:1 - 1)
		IfNotBlocked
		reached[1][42] = 1;
		if (!((((P1 *)_this)->inmsg.msg1==2)))
			continue;
		/* merge: BobSuccess = 1(0, 43, 55) */
		reached[1][43] = 1;
		(trpt+1)->bup.oval = ((int)now.BobSuccess);
		now.BobSuccess = 1;
#ifdef VAR_RANGES
		logval("BobSuccess", ((int)now.BobSuccess));
#endif
		;
		/* merge: .(goto)(0, 47, 55) */
		reached[1][47] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 30: // STATE 48 - ../injective-agreement.pml:5 - [receiveBuffer[(inmsg.num%255)].num = inmsg.num] (0:78:6 - 1)
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num);
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = ((int)((P1 *)_this)->inmsg.num);
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].num", ((int)now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].num));
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].sender = inmsg.sender(78, 49, 78) */
		reached[1][49] = 1;
		(trpt+1)->bup.ovals[1] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = ((P1 *)_this)->inmsg.sender;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].sender", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].sender);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].receiver = inmsg.receiver(78, 50, 78) */
		reached[1][50] = 1;
		(trpt+1)->bup.ovals[2] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = ((P1 *)_this)->inmsg.receiver;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].receiver", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].receiver);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg1 = inmsg.msg1(78, 51, 78) */
		reached[1][51] = 1;
		(trpt+1)->bup.ovals[3] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = ((P1 *)_this)->inmsg.msg1;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg1", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg1);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].msg2 = inmsg.msg2(78, 52, 78) */
		reached[1][52] = 1;
		(trpt+1)->bup.ovals[4] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = ((P1 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].msg2", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].msg2);
#endif
		;
		/* merge: receiveBuffer[(inmsg.num%255)].key = inmsg.key(78, 53, 78) */
		reached[1][53] = 1;
		(trpt+1)->bup.ovals[5] = now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = ((P1 *)_this)->inmsg.key;
#ifdef VAR_RANGES
		logval("receiveBuffer[(Bob:inmsg.num%255)].key", now.receiveBuffer[ Index((((int)((P1 *)_this)->inmsg.num)%255), 255) ].key);
#endif
		;
		/* merge: printf('Enqueue Message:%d to receiveBuffer\\n',(inmsg.num%255))(78, 54, 78) */
		reached[1][54] = 1;
		Printf("Enqueue Message:%d to receiveBuffer\n", (((int)((P1 *)_this)->inmsg.num)%255));
		/* merge: goto end(78, 56, 78) */
		reached[1][56] = 1;
		;
		_m = 3; goto P999; /* 7 */
	case 31: // STATE 60 - ../injective-agreement.pml:25 - [(((((((receiveBuffer[cnt].num==sendBuffer[cnt].num)&&(receiveBuffer[cnt].sender==sendBuffer[cnt].sender))&&(receiveBuffer[cnt].receiver==sendBuffer[cnt].receiver))&&(receiveBuffer[cnt].msg1==sendBuffer[cnt].msg1))&&(receiveBuffer[cnt].msg2==sendBuffer[cnt].msg2))&&(receiveBuffer[cnt].key==sendBuffer[cnt].key)))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][60] = 1;
		if (!(((((((((int)now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].num)==((int)now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].num))&&(now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].sender==now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].sender))&&(now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].receiver==now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].receiver))&&(now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].msg1==now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].msg1))&&(now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].msg2==now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].msg2))&&(now.receiveBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].key==now.sendBuffer[ Index(((int)((P1 *)_this)->cnt), 255) ].key))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 62 - ../injective-agreement.pml:186 - [cnt = (cnt+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][62] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)_this)->cnt);
		((P1 *)_this)->cnt = (((int)((P1 *)_this)->cnt)+1);
#ifdef VAR_RANGES
		logval("Bob:cnt", ((int)((P1 *)_this)->cnt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: // STATE 63 - ../injective-agreement.pml:188 - [((cnt==Num))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][63] = 1;
		if (!((((int)((P1 *)_this)->cnt)==((int)now.Num))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cnt */  (trpt+1)->bup.oval = ((P1 *)_this)->cnt;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->cnt = 0;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 64 - ../injective-agreement.pml:189 - [BobAgree = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((int)now.BobAgree);
		now.BobAgree = 1;
#ifdef VAR_RANGES
		logval("BobAgree", ((int)now.BobAgree));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 77 - ../injective-agreement.pml:197 - [printf('Bob receive wrong message\\n')] (0:0:0 - 6)
		IfNotBlocked
		reached[1][77] = 1;
		Printf("Bob receive wrong message\n");
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 79 - ../injective-agreement.pml:200 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][79] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 37: // STATE 1 - ../injective-agreement.pml:74 - [receiver = 1] (0:20:4 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->receiver;
		((P0 *)_this)->receiver = 1;
#ifdef VAR_RANGES
		logval("Alice:receiver", ((P0 *)_this)->receiver);
#endif
		;
		/* merge: key = 1(20, 2, 20) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->key;
		((P0 *)_this)->key = 1;
#ifdef VAR_RANGES
		logval("Alice:key", ((P0 *)_this)->key);
#endif
		;
		/* merge: verifier = 2(20, 3, 20) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->verifier;
		((P0 *)_this)->verifier = 2;
#ifdef VAR_RANGES
		logval("Alice:verifier", ((P0 *)_this)->verifier);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: verifier */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->verifier = 0;
		_m = 3; goto P999; /* 2 */
	case 38: // STATE 5 - ../injective-agreement.pml:80 - [outmsg.num = Num] (0:11:6 - 1)
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->outmsg.num);
		((P0 *)_this)->outmsg.num = ((int)now.Num);
#ifdef VAR_RANGES
		logval("Alice:outmsg.num", ((int)((P0 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = 3(11, 6, 11) */
		reached[0][6] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->outmsg.sender;
		((P0 *)_this)->outmsg.sender = 3;
#ifdef VAR_RANGES
		logval("Alice:outmsg.sender", ((P0 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.msg1 = 3(11, 7, 11) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->outmsg.msg1;
		((P0 *)_this)->outmsg.msg1 = 3;
#ifdef VAR_RANGES
		logval("Alice:outmsg.msg1", ((P0 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = 1(11, 8, 11) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->outmsg.msg2;
		((P0 *)_this)->outmsg.msg2 = 1;
#ifdef VAR_RANGES
		logval("Alice:outmsg.msg2", ((P0 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.receiver = receiver(11, 9, 11) */
		reached[0][9] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->outmsg.receiver;
		((P0 *)_this)->outmsg.receiver = ((P0 *)_this)->receiver;
#ifdef VAR_RANGES
		logval("Alice:outmsg.receiver", ((P0 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.key = key(11, 10, 11) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->outmsg.key;
		((P0 *)_this)->outmsg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:outmsg.key", ((P0 *)_this)->outmsg.key);
#endif
		;
		_m = 3; goto P999; /* 5 */
	case 39: // STATE 11 - ../injective-agreement.pml:86 - [ch!receiver,3,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[0][11] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", ((P0 *)_this)->receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, ((P0 *)_this)->receiver, 3, ((int)((P0 *)_this)->outmsg.num), ((P0 *)_this)->outmsg.sender, ((P0 *)_this)->outmsg.receiver, ((P0 *)_this)->outmsg.msg1, ((P0 *)_this)->outmsg.msg2, ((P0 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 40: // STATE 12 - ../injective-agreement.pml:15 - [sendBuffer[(outmsg.num%255)].num = outmsg.num] (0:22:6 - 1)
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].num);
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].num = ((int)((P0 *)_this)->outmsg.num);
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].num", ((int)now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].num));
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].sender = outmsg.sender(22, 13, 22) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].sender;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].sender = ((P0 *)_this)->outmsg.sender;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].sender", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].sender);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].receiver = outmsg.receiver(22, 14, 22) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[2] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].receiver;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].receiver = ((P0 *)_this)->outmsg.receiver;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].receiver", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].receiver);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].msg1 = outmsg.msg1(22, 15, 22) */
		reached[0][15] = 1;
		(trpt+1)->bup.ovals[3] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg1;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg1 = ((P0 *)_this)->outmsg.msg1;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].msg1", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg1);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].msg2 = outmsg.msg2(22, 16, 22) */
		reached[0][16] = 1;
		(trpt+1)->bup.ovals[4] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg2;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg2 = ((P0 *)_this)->outmsg.msg2;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].msg2", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg2);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].key = outmsg.key(22, 17, 22) */
		reached[0][17] = 1;
		(trpt+1)->bup.ovals[5] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].key;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].key = ((P0 *)_this)->outmsg.key;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].key", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].key);
#endif
		;
		/* merge: printf('Enqueue Message:%d to sendBuffer\\n',(outmsg.num%255))(22, 18, 22) */
		reached[0][18] = 1;
		Printf("Enqueue Message:%d to sendBuffer\n", (((int)((P0 *)_this)->outmsg.num)%255));
		_m = 3; goto P999; /* 6 */
	case 41: // STATE 21 - ../injective-agreement.pml:91 - [ch?3,2,inmsg.num,inmsg.sender,inmsg.receiver,inmsg.msg1,inmsg.msg2,inmsg.key] (0:0:6 - 1)
		reached[0][21] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (3 != qrecv(now.ch, 0, 0, 0)) continue;
		if (2 != qrecv(now.ch, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)_this)->inmsg.num);
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->inmsg.sender;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->inmsg.receiver;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->inmsg.msg1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->inmsg.msg2;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->inmsg.key;
		;
		((P0 *)_this)->inmsg.num = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Alice:inmsg.num", ((int)((P0 *)_this)->inmsg.num));
#endif
		;
		((P0 *)_this)->inmsg.sender = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Alice:inmsg.sender", ((P0 *)_this)->inmsg.sender);
#endif
		;
		((P0 *)_this)->inmsg.receiver = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Alice:inmsg.receiver", ((P0 *)_this)->inmsg.receiver);
#endif
		;
		((P0 *)_this)->inmsg.msg1 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Alice:inmsg.msg1", ((P0 *)_this)->inmsg.msg1);
#endif
		;
		((P0 *)_this)->inmsg.msg2 = qrecv(now.ch, XX-1, 6, 0);
#ifdef VAR_RANGES
		logval("Alice:inmsg.msg2", ((P0 *)_this)->inmsg.msg2);
#endif
		;
		((P0 *)_this)->inmsg.key = qrecv(now.ch, XX-1, 7, 1);
#ifdef VAR_RANGES
		logval("Alice:inmsg.key", ((P0 *)_this)->inmsg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->inmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->inmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->inmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->inmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->inmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->inmsg.key); strcat(simvals, simtmp);		}
#endif
		if (q_zero(now.ch))
		{	boq = -1;
#ifndef NOFAIR
			if (fairness
			&& !(trpt->o_pm&32)
			&& (now._a_t&2)
			&&  now._cnt[now._a_t&1] == II+2)
			{	now._cnt[now._a_t&1] -= 1;
#ifdef VERI
				if (II == 1)
					now._cnt[now._a_t&1] = 1;
#endif
#ifdef DEBUG
			printf("%3ld: proc %d fairness ", depth, II);
			printf("Rule 2: --cnt to %d (%d)\n",
				now._cnt[now._a_t&1], now._a_t);
#endif
				trpt->o_pm |= (32|64);
			}
#endif

		};
		_m = 4; goto P999; /* 0 */
	case 42: // STATE 23 - ../injective-agreement.pml:96 - [((inmsg.msg1!=3))] (46:0:0 - 1)
		IfNotBlocked
		reached[0][23] = 1;
		if (!((((P0 *)_this)->inmsg.msg1!=3)))
			continue;
		/* merge: printf('Wrong Message\\n')(46, 24, 46) */
		reached[0][24] = 1;
		Printf("Wrong Message\n");
		/* merge: .(goto)(46, 28, 46) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 43: // STATE 28 - ../injective-agreement.pml:100 - [.(goto)] (0:46:0 - 2)
		IfNotBlocked
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 26 - ../injective-agreement.pml:98 - [nonce = inmsg.msg2] (0:46:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->nonce;
		((P0 *)_this)->nonce = ((P0 *)_this)->inmsg.msg2;
#ifdef VAR_RANGES
		logval("Alice:nonce", ((P0 *)_this)->nonce);
#endif
		;
		/* merge: .(goto)(46, 28, 46) */
		reached[0][28] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 45: // STATE 30 - ../injective-agreement.pml:103 - [Num = (Num+1)] (0:37:7 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((int)now.Num);
		now.Num = (((int)now.Num)+1);
#ifdef VAR_RANGES
		logval("Num", ((int)now.Num));
#endif
		;
		/* merge: outmsg.num = Num(37, 31, 37) */
		reached[0][31] = 1;
		(trpt+1)->bup.ovals[1] = ((int)((P0 *)_this)->outmsg.num);
		((P0 *)_this)->outmsg.num = ((int)now.Num);
#ifdef VAR_RANGES
		logval("Alice:outmsg.num", ((int)((P0 *)_this)->outmsg.num));
#endif
		;
		/* merge: outmsg.sender = 3(37, 32, 37) */
		reached[0][32] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->outmsg.sender;
		((P0 *)_this)->outmsg.sender = 3;
#ifdef VAR_RANGES
		logval("Alice:outmsg.sender", ((P0 *)_this)->outmsg.sender);
#endif
		;
		/* merge: outmsg.receiver = receiver(37, 33, 37) */
		reached[0][33] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->outmsg.receiver;
		((P0 *)_this)->outmsg.receiver = ((P0 *)_this)->receiver;
#ifdef VAR_RANGES
		logval("Alice:outmsg.receiver", ((P0 *)_this)->outmsg.receiver);
#endif
		;
		/* merge: outmsg.msg1 = nonce(37, 34, 37) */
		reached[0][34] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->outmsg.msg1;
		((P0 *)_this)->outmsg.msg1 = ((P0 *)_this)->nonce;
#ifdef VAR_RANGES
		logval("Alice:outmsg.msg1", ((P0 *)_this)->outmsg.msg1);
#endif
		;
		/* merge: outmsg.msg2 = 1(37, 35, 37) */
		reached[0][35] = 1;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->outmsg.msg2;
		((P0 *)_this)->outmsg.msg2 = 1;
#ifdef VAR_RANGES
		logval("Alice:outmsg.msg2", ((P0 *)_this)->outmsg.msg2);
#endif
		;
		/* merge: outmsg.key = key(37, 36, 37) */
		reached[0][36] = 1;
		(trpt+1)->bup.ovals[6] = ((P0 *)_this)->outmsg.key;
		((P0 *)_this)->outmsg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:outmsg.key", ((P0 *)_this)->outmsg.key);
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 46: // STATE 37 - ../injective-agreement.pml:110 - [ch!receiver,3,outmsg.num,outmsg.sender,outmsg.receiver,outmsg.msg1,outmsg.msg2,outmsg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[0][37] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", ((P0 *)_this)->receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)_this)->outmsg.num)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->outmsg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, ((P0 *)_this)->receiver, 3, ((int)((P0 *)_this)->outmsg.num), ((P0 *)_this)->outmsg.sender, ((P0 *)_this)->outmsg.receiver, ((P0 *)_this)->outmsg.msg1, ((P0 *)_this)->outmsg.msg2, ((P0 *)_this)->outmsg.key, 8);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 47: // STATE 38 - ../injective-agreement.pml:15 - [sendBuffer[(outmsg.num%255)].num = outmsg.num] (0:47:6 - 1)
		IfNotBlocked
		reached[0][38] = 1;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].num);
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].num = ((int)((P0 *)_this)->outmsg.num);
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].num", ((int)now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].num));
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].sender = outmsg.sender(47, 39, 47) */
		reached[0][39] = 1;
		(trpt+1)->bup.ovals[1] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].sender;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].sender = ((P0 *)_this)->outmsg.sender;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].sender", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].sender);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].receiver = outmsg.receiver(47, 40, 47) */
		reached[0][40] = 1;
		(trpt+1)->bup.ovals[2] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].receiver;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].receiver = ((P0 *)_this)->outmsg.receiver;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].receiver", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].receiver);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].msg1 = outmsg.msg1(47, 41, 47) */
		reached[0][41] = 1;
		(trpt+1)->bup.ovals[3] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg1;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg1 = ((P0 *)_this)->outmsg.msg1;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].msg1", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg1);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].msg2 = outmsg.msg2(47, 42, 47) */
		reached[0][42] = 1;
		(trpt+1)->bup.ovals[4] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg2;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg2 = ((P0 *)_this)->outmsg.msg2;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].msg2", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].msg2);
#endif
		;
		/* merge: sendBuffer[(outmsg.num%255)].key = outmsg.key(47, 43, 47) */
		reached[0][43] = 1;
		(trpt+1)->bup.ovals[5] = now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].key;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].key = ((P0 *)_this)->outmsg.key;
#ifdef VAR_RANGES
		logval("sendBuffer[(Alice:outmsg.num%255)].key", now.sendBuffer[ Index((((int)((P0 *)_this)->outmsg.num)%255), 255) ].key);
#endif
		;
		/* merge: printf('Enqueue Message:%d to sendBuffer\\n',(outmsg.num%255))(47, 44, 47) */
		reached[0][44] = 1;
		Printf("Enqueue Message:%d to sendBuffer\n", (((int)((P0 *)_this)->outmsg.num)%255));
		_m = 3; goto P999; /* 6 */
	case 48: // STATE 47 - ../injective-agreement.pml:113 - [AliceSuccess = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((int)now.AliceSuccess);
		now.AliceSuccess = 1;
#ifdef VAR_RANGES
		logval("AliceSuccess", ((int)now.AliceSuccess));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: // STATE 48 - ../injective-agreement.pml:116 - [cnt = 0] (0:0:1 - 1)
		IfNotBlocked
		reached[0][48] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->cnt);
		((P0 *)_this)->cnt = 0;
#ifdef VAR_RANGES
		logval("Alice:cnt", ((int)((P0 *)_this)->cnt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 50: // STATE 49 - ../injective-agreement.pml:118 - [cnt = 1] (0:0:1 - 1)
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->cnt);
		((P0 *)_this)->cnt = 1;
#ifdef VAR_RANGES
		logval("Alice:cnt", ((int)((P0 *)_this)->cnt));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: // STATE 50 - ../injective-agreement.pml:118 - [((cnt<=(Num-1)))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][50] = 1;
		if (!((((int)((P0 *)_this)->cnt)<=(((int)now.Num)-1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 52: // STATE 51 - ../injective-agreement.pml:25 - [(((((((sendBuffer[cnt].num==receiveBuffer[cnt].num)&&(sendBuffer[cnt].sender==receiveBuffer[cnt].sender))&&(sendBuffer[cnt].receiver==receiveBuffer[cnt].receiver))&&(sendBuffer[cnt].msg1==receiveBuffer[cnt].msg1))&&(sendBuffer[cnt].msg2==receiveBuffer[cnt].msg2))&&(sendBuffer[cnt].key==receiveBuffer[cnt].key)))] (68:0:1 - 1)
		IfNotBlocked
		reached[0][51] = 1;
		if (!(((((((((int)now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].num)==((int)now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].num))&&(now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].sender==now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].sender))&&(now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].receiver==now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].receiver))&&(now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].msg1==now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].msg1))&&(now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].msg2==now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].msg2))&&(now.sendBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].key==now.receiveBuffer[ Index(((int)((P0 *)_this)->cnt), 255) ].key))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: cnt */  (trpt+1)->bup.oval = ((P0 *)_this)->cnt;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->cnt = 0;
		/* merge: goto err(0, 53, 68) */
		reached[0][53] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 53: // STATE 55 - ../injective-agreement.pml:122 - [(1)] (61:0:1 - 1)
		IfNotBlocked
		reached[0][55] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(61, 57, 61) */
		reached[0][57] = 1;
		;
		/* merge: cnt = (cnt+1)(61, 58, 61) */
		reached[0][58] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->cnt);
		((P0 *)_this)->cnt = (((int)((P0 *)_this)->cnt)+1);
#ifdef VAR_RANGES
		logval("Alice:cnt", ((int)((P0 *)_this)->cnt));
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 54: // STATE 58 - ../injective-agreement.pml:118 - [cnt = (cnt+1)] (0:61:1 - 2)
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)_this)->cnt);
		((P0 *)_this)->cnt = (((int)((P0 *)_this)->cnt)+1);
#ifdef VAR_RANGES
		logval("Alice:cnt", ((int)((P0 *)_this)->cnt));
#endif
		;
		/* merge: .(goto)(0, 62, 61) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 55: // STATE 68 - ../injective-agreement.pml:128 - [printf('Alice not agree with Bob\\n')] (0:0:0 - 2)
		IfNotBlocked
		reached[0][68] = 1;
		Printf("Alice not agree with Bob\n");
		_m = 3; goto P999; /* 0 */
	case 56: // STATE 70 - ../injective-agreement.pml:131 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][70] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

