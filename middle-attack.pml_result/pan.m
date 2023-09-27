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

		 /* PROC :init: */
	case 3: // STATE 1 - ../middle-attack.pml:148 - [(run Alice())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][1] = 1;
		if (!(addproc(II, 1, 0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 2 - ../middle-attack.pml:149 - [(run Bob())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][2] = 1;
		if (!(addproc(II, 1, 1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: // STATE 3 - ../middle-attack.pml:150 - [(run Attack())] (0:0:0 - 1)
		IfNotBlocked
		reached[4][3] = 1;
		if (!(addproc(II, 1, 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 4 - ../middle-attack.pml:151 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[4][4] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC monitor */
	case 7: // STATE 1 - ../middle-attack.pml:144 - [assert(((!(End)&&!(AliceSuccess))&&!(BobSuccess)))] (0:0:0 - 1)
		IfNotBlocked
		reached[3][1] = 1;
		spin_assert((( !(((int)now.End))&& !(((int)now.AliceSuccess)))&& !(((int)now.BobSuccess))), "(( !(End)&& !(AliceSuccess))&& !(BobSuccess))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 2 - ../middle-attack.pml:145 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[3][2] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Attack */
	case 9: // STATE 1 - ../middle-attack.pml:112 - [ch?1,3,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (9:0:10 - 1)
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
	case 10: // STATE 8 - ../middle-attack.pml:121 - [ch!2,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
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
	case 11: // STATE 10 - ../middle-attack.pml:124 - [ch?3,2,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (16:0:10 - 1)
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
	case 12: // STATE 16 - ../middle-attack.pml:130 - [ch!3,1,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
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
	case 13: // STATE 18 - ../middle-attack.pml:133 - [ch?1,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (24:0:11 - 1)
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
	case 14: // STATE 24 - ../middle-attack.pml:139 - [ch!2,verified,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
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
	case 15: // STATE 26 - ../middle-attack.pml:141 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[2][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Bob */
	case 16: // STATE 1 - ../middle-attack.pml:78 - [ch?2,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
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
	case 17: // STATE 3 - ../middle-attack.pml:82 - [((in_msg.key!=2))] (14:0:5 - 1)
		IfNotBlocked
		reached[1][3] = 1;
		if (!((((P1 *)_this)->in_msg.key!=2)))
			continue;
		/* merge: printf('Wrong Public Key\\n')(14, 4, 14) */
		reached[1][4] = 1;
		Printf("Wrong Public Key\n");
		/* merge: .(goto)(14, 8, 14) */
		reached[1][8] = 1;
		;
		/* merge: out_msg.receiver = 3(14, 9, 14) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(14, 10, 14) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 7 */
	case 18: // STATE 6 - ../middle-attack.pml:84 - [(1)] (14:0:5 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(14, 8, 14) */
		reached[1][8] = 1;
		;
		/* merge: out_msg.receiver = 3(14, 9, 14) */
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(14, 10, 14) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 6 */
	case 19: // STATE 9 - ../middle-attack.pml:86 - [out_msg.receiver = 3] (0:14:5 - 3)
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.ovals = grab_ints(5);
		(trpt+1)->bup.ovals[0] = ((P1 *)_this)->out_msg.receiver;
		((P1 *)_this)->out_msg.receiver = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.receiver", ((P1 *)_this)->out_msg.receiver);
#endif
		;
		/* merge: out_msg.sender = 2(14, 10, 14) */
		reached[1][10] = 1;
		(trpt+1)->bup.ovals[1] = ((P1 *)_this)->out_msg.sender;
		((P1 *)_this)->out_msg.sender = 2;
#ifdef VAR_RANGES
		logval("Bob:out_msg.sender", ((P1 *)_this)->out_msg.sender);
#endif
		;
		/* merge: out_msg.msg1 = in_msg.msg1(14, 11, 14) */
		reached[1][11] = 1;
		(trpt+1)->bup.ovals[2] = ((P1 *)_this)->out_msg.msg1;
		((P1 *)_this)->out_msg.msg1 = ((P1 *)_this)->in_msg.msg1;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg1", ((P1 *)_this)->out_msg.msg1);
#endif
		;
		/* merge: out_msg.msg2 = nb(14, 12, 14) */
		reached[1][12] = 1;
		(trpt+1)->bup.ovals[3] = ((P1 *)_this)->out_msg.msg2;
		((P1 *)_this)->out_msg.msg2 = ((P1 *)_this)->nb;
#ifdef VAR_RANGES
		logval("Bob:out_msg.msg2", ((P1 *)_this)->out_msg.msg2);
#endif
		;
		/* merge: out_msg.key = 3(14, 13, 14) */
		reached[1][13] = 1;
		(trpt+1)->bup.ovals[4] = ((P1 *)_this)->out_msg.key;
		((P1 *)_this)->out_msg.key = 3;
#ifdef VAR_RANGES
		logval("Bob:out_msg.key", ((P1 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 4 */
	case 20: // STATE 14 - ../middle-attack.pml:92 - [ch!3,2,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
		IfNotBlocked
		reached[1][14] = 1;
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
	case 21: // STATE 16 - ../middle-attack.pml:95 - [ch?2,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
		reached[1][16] = 1;
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
	case 22: // STATE 17 - ../middle-attack.pml:97 - [((in_msg.msg1==4))] (26:0:2 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)_this)->in_msg.msg1==4)))
			continue;
		/* merge: printf('Bob Auth Success\\n')(26, 18, 26) */
		reached[1][18] = 1;
		Printf("Bob Auth Success\n");
		/* merge: BobSuccess = 1(26, 19, 26) */
		reached[1][19] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)now.BobSuccess);
		now.BobSuccess = 1;
#ifdef VAR_RANGES
		logval("BobSuccess", ((int)now.BobSuccess));
#endif
		;
		/* merge: End = 1(26, 20, 26) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.End);
		now.End = 1;
#ifdef VAR_RANGES
		logval("End", ((int)now.End));
#endif
		;
		/* merge: .(goto)(26, 24, 26) */
		reached[1][24] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 23: // STATE 24 - ../middle-attack.pml:103 - [.(goto)] (0:26:0 - 2)
		IfNotBlocked
		reached[1][24] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 22 - ../middle-attack.pml:101 - [printf('Bob Auth Failed\\n')] (0:26:0 - 1)
		IfNotBlocked
		reached[1][22] = 1;
		Printf("Bob Auth Failed\n");
		/* merge: .(goto)(26, 24, 26) */
		reached[1][24] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 25: // STATE 26 - ../middle-attack.pml:104 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][26] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alice */
	case 26: // STATE 1 - ../middle-attack.pml:30 - [out_msg.sender = 3] (0:12:5 - 1)
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
	case 27: // STATE 6 - ../middle-attack.pml:41 - [((out_msg.receiver==2))] (15:0:4 - 1)
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
	case 28: // STATE 9 - ../middle-attack.pml:44 - [((out_msg.receiver==1))] (15:0:4 - 1)
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
	case 29: // STATE 14 - ../middle-attack.pml:48 - [out_msg.key = key] (0:15:1 - 3)
		IfNotBlocked
		reached[0][14] = 1;
		(trpt+1)->bup.oval = ((P0 *)_this)->out_msg.key;
		((P0 *)_this)->out_msg.key = ((P0 *)_this)->key;
#ifdef VAR_RANGES
		logval("Alice:out_msg.key", ((P0 *)_this)->out_msg.key);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: // STATE 15 - ../middle-attack.pml:49 - [ch!receiver,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
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
	case 31: // STATE 17 - ../middle-attack.pml:52 - [ch?3,verified,in_msg.sender,in_msg.receiver,in_msg.msg1,in_msg.msg2,in_msg.key] (0:0:7 - 1)
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
	case 32: // STATE 19 - ../middle-attack.pml:55 - [out_msg.sender = 3] (0:24:5 - 1)
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
	case 33: // STATE 24 - ../middle-attack.pml:60 - [ch!receiver,3,out_msg.sender,out_msg.receiver,out_msg.msg1,out_msg.msg2,out_msg.key] (0:0:0 - 1)
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
	case 34: // STATE 26 - ../middle-attack.pml:64 - [((out_msg.msg1==4))] (34:0:1 - 1)
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
	case 35: // STATE 32 - ../middle-attack.pml:69 - [.(goto)] (0:34:0 - 2)
		IfNotBlocked
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 0 */
	case 36: // STATE 30 - ../middle-attack.pml:67 - [printf('Alice Failed to Send Nb\\n')] (0:34:0 - 1)
		IfNotBlocked
		reached[0][30] = 1;
		Printf("Alice Failed to Send Nb\n");
		/* merge: .(goto)(34, 32, 34) */
		reached[0][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 37: // STATE 34 - ../middle-attack.pml:70 - [-end-] (0:0:0 - 1)
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

