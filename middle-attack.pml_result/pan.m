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

		 /* CLAIM terminate */
	case 3: // STATE 1 - _spin_nvr.tmp:3 - [(!((AliceSuccess&&BobSuccess)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.AliceSuccess)&&((int)now.BobSuccess)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 8 - _spin_nvr.tmp:8 - [(!((AliceSuccess&&BobSuccess)))] (0:0:0 - 1)
		
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
		if (!( !((((int)now.AliceSuccess)&&((int)now.BobSuccess)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 13 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1)
		
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
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC :init: */
	case 6: // STATE 1 - ../middle-attack.pml:149 - [(run Alice())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: // STATE 2 - ../middle-attack.pml:150 - [(run Bob())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 3 - ../middle-attack.pml:151 - [(run Attack())] (0:0:0 - 1)
		IfNotBlocked
		reached[3][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 4 - ../middle-attack.pml:152 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Attack */
	case 10: // STATE 1 - ../middle-attack.pml:115 - [ch?1,3,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (9:0:10 - 1)
		reached[2][1] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ch, 0, 0, 0)) continue;
		if (3 != qrecv(now.ch, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(10);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->in_msg.key;
		;
		((P2 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.sender", ((P2 *)_this)->in_msg.sender);
#endif
		;
		((P2 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.receiver", ((P2 *)_this)->in_msg.receiver);
#endif
		;
		((P2 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg1", ((P2 *)_this)->in_msg.msg1);
#endif
		;
		((P2 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg2", ((P2 *)_this)->in_msg.msg2);
#endif
		;
		((P2 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Attack:in_msg.key", ((P2 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* merge: out_msg.receiver = 2(9, 2, 9) */
		reached[2][2] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->out_msg.receiver;
		((P2 *)_this)->out_msg.receiver = 2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.receiver", ((P2 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = in_msg.sender(9, 3, 9) */
		reached[2][3] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->out_msg.sender;
		((P2 *)_this)->out_msg.sender = ((P2 *)_this)->in_msg.sender;
#ifdef VAR_RANGES
		logval("Attack:out_msg.sender", ((P2 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(9, 4, 9) */
		reached[2][4] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->out_msg.msg1;
		((P2 *)_this)->out_msg.msg1 = ((P2 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg1", ((P2 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = in_msg.msg2(9, 5, 9) */
		reached[2][5] = 1;
		(trpt+1)->bup.ovals[8] = ((P2 *)_this)->out_msg.msg2;
		((P2 *)_this)->out_msg.msg2 = ((P2 *)_this)->in_msg.msg2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg2", ((P2 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 2(9, 6, 9) */
		reached[2][6] = 1;
		(trpt+1)->bup.ovals[9] = ((P2 *)_this)->out_msg.key;
		((P2 *)_this)->out_msg.key = 2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.key", ((P2 *)_this)->out_msg.key);
#endif
		;
		_m = 4; goto P999; /* 5 */
	case 11: // STATE 8 - ../middle-attack.pml:124 - [ch!2,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][8] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 2, 3, ((P2 *)_this)->out_msg.sender, ((P2 *)_this)->out_msg.receiver, ((P2 *)_this)->out_msg.msg1, ((P2 *)_this)->out_msg.msg2, ((P2 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 12: // STATE 10 - ../middle-attack.pml:127 - [ch?3,2,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (16:0:10 - 1)
		reached[2][10] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (3 != qrecv(now.ch, 0, 0, 0)) continue;
		if (2 != qrecv(now.ch, 0, 1, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(10);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->in_msg.key;
		;
		((P2 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.sender", ((P2 *)_this)->in_msg.sender);
#endif
		;
		((P2 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.receiver", ((P2 *)_this)->in_msg.receiver);
#endif
		;
		((P2 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg1", ((P2 *)_this)->in_msg.msg1);
#endif
		;
		((P2 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg2", ((P2 *)_this)->in_msg.msg2);
#endif
		;
		((P2 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Attack:in_msg.key", ((P2 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* merge: out_msg.sender = 1(16, 11, 16) */
		reached[2][11] = 1;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->out_msg.sender;
		((P2 *)_this)->out_msg.sender = 1;
#ifdef VAR_RANGES
		logval("Attack:out_msg.sender", ((P2 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.receiver = in_msg.receiver(16, 12, 16) */
		reached[2][12] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->out_msg.receiver;
		((P2 *)_this)->out_msg.receiver = ((P2 *)_this)->in_msg.receiver;
#ifdef VAR_RANGES
		logval("Attack:out_msg.receiver", ((P2 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(16, 13, 16) */
		reached[2][13] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->out_msg.msg1;
		((P2 *)_this)->out_msg.msg1 = ((P2 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg1", ((P2 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = in_msg.msg2(16, 14, 16) */
		reached[2][14] = 1;
		(trpt+1)->bup.ovals[8] = ((P2 *)_this)->out_msg.msg2;
		((P2 *)_this)->out_msg.msg2 = ((P2 *)_this)->in_msg.msg2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg2", ((P2 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = in_msg.key(16, 15, 16) */
		reached[2][15] = 1;
		(trpt+1)->bup.ovals[9] = ((P2 *)_this)->out_msg.key;
		((P2 *)_this)->out_msg.key = ((P2 *)_this)->in_msg.key;
#ifdef VAR_RANGES
		logval("Attack:out_msg.key", ((P2 *)_this)->out_msg.key);
#endif
		;
		_m = 4; goto P999; /* 5 */
	case 13: // STATE 16 - ../middle-attack.pml:133 - [ch!3,1,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][16] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 3, 1, ((P2 *)_this)->out_msg.sender, ((P2 *)_this)->out_msg.receiver, ((P2 *)_this)->out_msg.msg1, ((P2 *)_this)->out_msg.msg2, ((P2 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 14: // STATE 18 - ../middle-attack.pml:136 - [ch?1,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (24:0:11 - 1)
		reached[2][18] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (1 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(11);
		(trpt+1)->bup.ovals[0] = ((P2 *)_this)->verified;
		(trpt+1)->bup.ovals[1] = ((P2 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[2] = ((P2 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[3] = ((P2 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[4] = ((P2 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[5] = ((P2 *)_this)->in_msg.key;
		;
		((P2 *)_this)->verified = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Attack:verified", ((P2 *)_this)->verified);
#endif
		;
		((P2 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.sender", ((P2 *)_this)->in_msg.sender);
#endif
		;
		((P2 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.receiver", ((P2 *)_this)->in_msg.receiver);
#endif
		;
		((P2 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg1", ((P2 *)_this)->in_msg.msg1);
#endif
		;
		((P2 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Attack:in_msg.msg2", ((P2 *)_this)->in_msg.msg2);
#endif
		;
		((P2 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Attack:in_msg.key", ((P2 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verified); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* merge: out_msg.sender = in_msg.sender(24, 19, 24) */
		reached[2][19] = 1;
		(trpt+1)->bup.ovals[6] = ((P2 *)_this)->out_msg.sender;
		((P2 *)_this)->out_msg.sender = ((P2 *)_this)->in_msg.sender;
#ifdef VAR_RANGES
		logval("Attack:out_msg.sender", ((P2 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.receiver = 2(24, 20, 24) */
		reached[2][20] = 1;
		(trpt+1)->bup.ovals[7] = ((P2 *)_this)->out_msg.receiver;
		((P2 *)_this)->out_msg.receiver = 2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.receiver", ((P2 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(24, 21, 24) */
		reached[2][21] = 1;
		(trpt+1)->bup.ovals[8] = ((P2 *)_this)->out_msg.msg1;
		((P2 *)_this)->out_msg.msg1 = ((P2 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg1", ((P2 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = in_msg.msg2(24, 22, 24) */
		reached[2][22] = 1;
		(trpt+1)->bup.ovals[9] = ((P2 *)_this)->out_msg.msg2;
		((P2 *)_this)->out_msg.msg2 = ((P2 *)_this)->in_msg.msg2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.msg2", ((P2 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 2(24, 23, 24) */
		reached[2][23] = 1;
		(trpt+1)->bup.ovals[10] = ((P2 *)_this)->out_msg.key;
		((P2 *)_this)->out_msg.key = 2;
#ifdef VAR_RANGES
		logval("Attack:out_msg.key", ((P2 *)_this)->out_msg.key);
#endif
		;
		_m = 4; goto P999; /* 5 */
	case 15: // STATE 24 - ../middle-attack.pml:142 - [ch!2,verified,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[2][24] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->verified); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P2 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 2, ((P2 *)_this)->verified, ((P2 *)_this)->out_msg.sender, ((P2 *)_this)->out_msg.receiver, ((P2 *)_this)->out_msg.msg1, ((P2 *)_this)->out_msg.msg2, ((P2 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 16: // STATE 26 - ../middle-attack.pml:144 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 17: // STATE 1 - ../middle-attack.pml:78 - [ch?2,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
		reached[1][1] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (2 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->verified;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[5] = ((P1 *)_this)->in_msg.key;
		;
		((P1 *)_this)->verified = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Bob:verified", ((P1 *)_this)->verified);
#endif
		;
		((P1 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.sender", ((P1 *)_this)->in_msg.sender);
#endif
		;
		((P1 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.receiver", ((P1 *)_this)->in_msg.receiver);
#endif
		;
		((P1 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.msg1", ((P1 *)_this)->in_msg.msg1);
#endif
		;
		((P1 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.msg2", ((P1 *)_this)->in_msg.msg2);
#endif
		;
		((P1 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Bob:in_msg.key", ((P1 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->verified); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* dead 2: verified */  (trpt+1)->bup.ovals[6] = ((P1 *)_this)->verified;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->verified = 0;
		_m = 4; goto P999; /* 0 */
	case 18: // STATE 3 - ../middle-attack.pml:82 - [((in_msg.key!=2))] (13:0:0 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->in_msg.key!=2)))
			continue;
		/* merge: printf('Wrong Public Key\\n')(0, 4, 13) */
		reached[1][4] = 1;
		Printf("Wrong Public Key\n");
		/* merge: .(goto)(0, 8, 13) */
		reached[1][8] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 19: // STATE 9 - ../middle-attack.pml:87 - [((in_msg.msg1==5))] (20:0:5 - 1)
		IfNotBlocked
		reached[1][9] = 1;
		if (!((((P1 *)_this)->in_msg.msg1==5)))
			continue;
		/* merge: printf('Bob receive NA\\n')(20, 10, 20) */
		reached[1][10] = 1;
		Printf("Bob receive NA\n");
		/* merge: .(goto)(20, 14, 20) */
		reached[1][14] = 1;
		;
		/* merge: out_msg.receiver = 3(20, 15, 20) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(20, 16, 20) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(20, 19, 20) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 20: // STATE 12 - ../middle-attack.pml:88 - [(1)] (20:0:5 - 1)
		IfNotBlocked
		reached[1][12] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(20, 14, 20) */
		reached[1][14] = 1;
		;
		/* merge: out_msg.receiver = 3(20, 15, 20) */
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(20, 16, 20) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(20, 19, 20) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 21: // STATE 15 - ../middle-attack.pml:90 - [out_msg.receiver = 3] (0:20:5 - 3)
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(20, 16, 20) */
		reached[1][16] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(20, 17, 20) */
		reached[1][17] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(20, 18, 20) */
		reached[1][18] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(20, 19, 20) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 22: // STATE 20 - ../middle-attack.pml:96 - [ch!3,2,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[1][20] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, 3, 2, ((P1 *)_this)->out_msg.sender, ((P1 *)_this)->out_msg.receiver, ((P1 *)_this)->out_msg.msg1, ((P1 *)_this)->out_msg.msg2, ((P1 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 23: // STATE 22 - ../middle-attack.pml:99 - [ch?2,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
		reached[1][22] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (2 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->verified;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[5] = ((P1 *)_this)->in_msg.key;
		;
		((P1 *)_this)->verified = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Bob:verified", ((P1 *)_this)->verified);
#endif
		;
		((P1 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.sender", ((P1 *)_this)->in_msg.sender);
#endif
		;
		((P1 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.receiver", ((P1 *)_this)->in_msg.receiver);
#endif
		;
		((P1 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.msg1", ((P1 *)_this)->in_msg.msg1);
#endif
		;
		((P1 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Bob:in_msg.msg2", ((P1 *)_this)->in_msg.msg2);
#endif
		;
		((P1 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Bob:in_msg.key", ((P1 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->verified); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P1 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* dead 2: verified */  (trpt+1)->bup.ovals[6] = ((P1 *)_this)->verified;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)_this)->verified = 0;
		_m = 4; goto P999; /* 0 */
	case 24: // STATE 23 - ../middle-attack.pml:101 - [((in_msg.msg1==4))] (31:0:1 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (!((((P1 *)_this)->in_msg.msg1==4)))
			continue;
		/* merge: printf('Bob Auth Success\\n')(31, 24, 31) */
		reached[1][24] = 1;
		Printf("Bob Auth Success\n");
		/* merge: BobSuccess = 1(31, 25, 31) */
		reached[1][25] = 1;
		(trpt+1)->bup.oval = ((int)now.BobSuccess);
		now.BobSuccess = 1;
#ifdef VAR_RANGES
		logval("BobSuccess", ((int)now.BobSuccess));
#endif
		;
		/* merge: .(goto)(31, 29, 31) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 25: // STATE 29 - ../middle-attack.pml:106 - [.(goto)] (0:31:0 - 2)
		IfNotBlocked
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 27 - ../middle-attack.pml:104 - [printf('Bob Auth Failed\\n')] (0:31:0 - 1)
		IfNotBlocked
		reached[1][27] = 1;
		Printf("Bob Auth Failed\n");
		/* merge: .(goto)(31, 29, 31) */
		reached[1][29] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: // STATE 31 - ../middle-attack.pml:107 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 28: // STATE 1 - ../middle-attack.pml:30 - [out_msg.sender = 3] (0:12:5 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->out_msg.sender;
		((P0 *)_this)->out_msg.sender = 3;
#ifdef VAR_RANGES
		logval("Alice:out_msg.sender", ((P0 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = na(12, 2, 12) */
		reached[0][2] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->out_msg.msg1;
		((P0 *)_this)->out_msg.msg1 = ((P0 *)_this)->na;
#ifdef VAR_RANGES
		logval("Alice:out_msg.msg1", ((P0 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = 3(12, 3, 12) */
		reached[0][3] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->out_msg.msg2;
		((P0 *)_this)->out_msg.msg2 = 3;
#ifdef VAR_RANGES
		logval("Alice:out_msg.msg2", ((P0 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: receiver = 1(12, 4, 12) */
		reached[0][4] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->receiver;
		((P0 *)_this)->receiver = 1;
#ifdef VAR_RANGES
		logval("Alice:receiver", ((P0 *)_this)->receiver);
#endif
		;
		/* merge: out_msg.receiver = receiver(12, 5, 12) */
		reached[0][5] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->out_msg.receiver;
		((P0 *)_this)->out_msg.receiver = ((P0 *)_this)->receiver;
#ifdef VAR_RANGES
		logval("Alice:out_msg.receiver", ((P0 *)_this)->out_msg.receiver);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 29: // STATE 6 - ../middle-attack.pml:41 - [((out_msg.receiver==2))] (15:0:4 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		if (!((((P0 *)_this)->out_msg.receiver==2)))
			continue;
		/* merge: key = 2(15, 7, 15) */
		reached[0][7] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->key;
		((P0 *)_this)->key = 2;
#ifdef VAR_RANGES
		logval("Alice:key", ((P0 *)_this)->key);
#endif
		;
		/* merge: verified = 2(15, 8, 15) */
		reached[0][8] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->verified;
		((P0 *)_this)->verified = 2;
#ifdef VAR_RANGES
		logval("Alice:verified", ((P0 *)_this)->verified);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: verified */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->verified = 0;
		/* merge: .(goto)(15, 13, 15) */
		reached[0][13] = 1;
		;
		/* merge: out_msg.key = key(15, 14, 15) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->out_msg.key;
		((P0 *)_this)->out_msg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:out_msg.key", ((P0 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 30: // STATE 9 - ../middle-attack.pml:44 - [((out_msg.receiver==1))] (15:0:4 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((P0 *)_this)->out_msg.receiver==1)))
			continue;
		/* merge: key = 1(15, 10, 15) */
		reached[0][10] = 1;
		(trpt+1)->bup.ovals = grab_ints(4);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->key;
		((P0 *)_this)->key = 1;
#ifdef VAR_RANGES
		logval("Alice:key", ((P0 *)_this)->key);
#endif
		;
		/* merge: verified = 1(15, 11, 15) */
		reached[0][11] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->verified;
		((P0 *)_this)->verified = 1;
#ifdef VAR_RANGES
		logval("Alice:verified", ((P0 *)_this)->verified);
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: verified */  
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->verified = 0;
		/* merge: .(goto)(15, 13, 15) */
		reached[0][13] = 1;
		;
		/* merge: out_msg.key = key(15, 14, 15) */
		reached[0][14] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->out_msg.key;
		((P0 *)_this)->out_msg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:out_msg.key", ((P0 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 31: // STATE 14 - ../middle-attack.pml:48 - [out_msg.key = key] (0:15:1 - 3)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->out_msg.key;
		((P0 *)_this)->out_msg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:out_msg.key", ((P0 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 15 - ../middle-attack.pml:49 - [ch!receiver,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[0][15] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", ((P0 *)_this)->receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, ((P0 *)_this)->receiver, 3, ((P0 *)_this)->out_msg.sender, ((P0 *)_this)->out_msg.receiver, ((P0 *)_this)->out_msg.msg1, ((P0 *)_this)->out_msg.msg2, ((P0 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 33: // STATE 17 - ../middle-attack.pml:52 - [ch?3,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
		reached[0][17] = 1;
		if (boq != now.ch) continue;
		if (q_len(now.ch) == 0) continue;

		XX=1;
		if (3 != qrecv(now.ch, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(7);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->verified;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->in_msg.sender;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->in_msg.receiver;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->in_msg.msg1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->in_msg.msg2;
		(trpt+1)->bup.ovals[5] = ((P0 *)_this)->in_msg.key;
		;
		((P0 *)_this)->verified = qrecv(now.ch, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Alice:verified", ((P0 *)_this)->verified);
#endif
		;
		((P0 *)_this)->in_msg.sender = qrecv(now.ch, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Alice:in_msg.sender", ((P0 *)_this)->in_msg.sender);
#endif
		;
		((P0 *)_this)->in_msg.receiver = qrecv(now.ch, XX-1, 3, 0);
#ifdef VAR_RANGES
		logval("Alice:in_msg.receiver", ((P0 *)_this)->in_msg.receiver);
#endif
		;
		((P0 *)_this)->in_msg.msg1 = qrecv(now.ch, XX-1, 4, 0);
#ifdef VAR_RANGES
		logval("Alice:in_msg.msg1", ((P0 *)_this)->in_msg.msg1);
#endif
		;
		((P0 *)_this)->in_msg.msg2 = qrecv(now.ch, XX-1, 5, 0);
#ifdef VAR_RANGES
		logval("Alice:in_msg.msg2", ((P0 *)_this)->in_msg.msg2);
#endif
		;
		((P0 *)_this)->in_msg.key = qrecv(now.ch, XX-1, 6, 1);
#ifdef VAR_RANGES
		logval("Alice:in_msg.key", ((P0 *)_this)->in_msg.key);
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.ch);
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->verified); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->in_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->in_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->in_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->in_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->in_msg.key); strcat(simvals, simtmp);		}
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
		/* dead 2: verified */  (trpt+1)->bup.ovals[6] = ((P0 *)_this)->verified;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)_this)->verified = 0;
		_m = 4; goto P999; /* 0 */
	case 34: // STATE 19 - ../middle-attack.pml:55 - [out_msg.sender = 3] (0:24:5 - 1)
		IfNotBlocked
		reached[0][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P0 *)_this)->out_msg.sender;
		((P0 *)_this)->out_msg.sender = 3;
#ifdef VAR_RANGES
		logval("Alice:out_msg.sender", ((P0 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.receiver = receiver(24, 20, 24) */
		reached[0][20] = 1;
		(trpt+1)->bup.ovals[1] = ((P0 *)_this)->out_msg.receiver;
		((P0 *)_this)->out_msg.receiver = ((P0 *)_this)->receiver;
#ifdef VAR_RANGES
		logval("Alice:out_msg.receiver", ((P0 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg2(24, 21, 24) */
		reached[0][21] = 1;
		(trpt+1)->bup.ovals[2] = ((P0 *)_this)->out_msg.msg1;
		((P0 *)_this)->out_msg.msg1 = ((P0 *)_this)->in_msg.msg2;
#ifdef VAR_RANGES
		logval("Alice:out_msg.msg1", ((P0 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = 3(24, 22, 24) */
		reached[0][22] = 1;
		(trpt+1)->bup.ovals[3] = ((P0 *)_this)->out_msg.msg2;
		((P0 *)_this)->out_msg.msg2 = 3;
#ifdef VAR_RANGES
		logval("Alice:out_msg.msg2", ((P0 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = key(24, 23, 24) */
		reached[0][23] = 1;
		(trpt+1)->bup.ovals[4] = ((P0 *)_this)->out_msg.key;
		((P0 *)_this)->out_msg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:out_msg.key", ((P0 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 35: // STATE 24 - ../middle-attack.pml:60 - [ch!receiver,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[0][24] = 1;
		if (q_len(now.ch))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.ch);
		sprintf(simtmp, "%d", ((P0 *)_this)->receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", 3); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.sender); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.receiver); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.msg1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.msg2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((P0 *)_this)->out_msg.key); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.ch, 0, ((P0 *)_this)->receiver, 3, ((P0 *)_this)->out_msg.sender, ((P0 *)_this)->out_msg.receiver, ((P0 *)_this)->out_msg.msg1, ((P0 *)_this)->out_msg.msg2, ((P0 *)_this)->out_msg.key, 7);
		{ boq = now.ch; };
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 26 - ../middle-attack.pml:64 - [((out_msg.msg1==4))] (34:0:1 - 1)
		IfNotBlocked
		reached[0][26] = 1;
		if (!((((P0 *)_this)->out_msg.msg1==4)))
			continue;
		/* merge: AliceSuccess = 1(34, 27, 34) */
		reached[0][27] = 1;
		(trpt+1)->bup.oval = ((int)now.AliceSuccess);
		now.AliceSuccess = 1;
#ifdef VAR_RANGES
		logval("AliceSuccess", ((int)now.AliceSuccess));
#endif
		;
		/* merge: printf('Alice Send Nb\\n')(34, 28, 34) */
		reached[0][28] = 1;
		Printf("Alice Send Nb\n");
		/* merge: .(goto)(34, 32, 34) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 37: // STATE 32 - ../middle-attack.pml:69 - [.(goto)] (0:34:0 - 2)
		IfNotBlocked
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 30 - ../middle-attack.pml:67 - [printf('Alice Failed to Send Nb\\n')] (0:34:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		Printf("Alice Failed to Send Nb\n");
		/* merge: .(goto)(34, 32, 34) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 39: // STATE 34 - ../middle-attack.pml:70 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][34] = 1;
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

