	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM agreement */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: // STATE 18
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 8: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 10: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 11: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Eve */

	case 12: // STATE 1
		;
		XX = 1;
		unrecv(now.ch, XX-1, 0, 1, 1);
		unrecv(now.ch, XX-1, 1, ((P2 *)_this)->verifier, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P2 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P2 *)_this)->inmsg.key, 0);
		((P2 *)_this)->verifier = trpt->bup.ovals[0];
		((P2 *)_this)->inmsg.num = trpt->bup.ovals[1];
		((P2 *)_this)->inmsg.sender = trpt->bup.ovals[2];
		((P2 *)_this)->inmsg.receiver = trpt->bup.ovals[3];
		((P2 *)_this)->inmsg.msg1 = trpt->bup.ovals[4];
		((P2 *)_this)->inmsg.msg2 = trpt->bup.ovals[5];
		((P2 *)_this)->inmsg.key = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 13: // STATE 10
		;
		((P2 *)_this)->outmsg.key = trpt->bup.ovals[7];
		((P2 *)_this)->outmsg.receiver = trpt->bup.ovals[6];
		((P2 *)_this)->outmsg.key = trpt->bup.ovals[5];
		((P2 *)_this)->outmsg.msg2 = trpt->bup.ovals[4];
		((P2 *)_this)->outmsg.msg1 = trpt->bup.ovals[3];
		((P2 *)_this)->outmsg.receiver = trpt->bup.ovals[2];
		((P2 *)_this)->outmsg.sender = trpt->bup.ovals[1];
		((P2 *)_this)->outmsg.num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 14: // STATE 12
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 15: // STATE 14
		;
		XX = 1;
		unrecv(now.ch, XX-1, 0, 1, 1);
		unrecv(now.ch, XX-1, 1, ((P2 *)_this)->verifier, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P2 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P2 *)_this)->inmsg.key, 0);
		((P2 *)_this)->verifier = trpt->bup.ovals[0];
		((P2 *)_this)->inmsg.num = trpt->bup.ovals[1];
		((P2 *)_this)->inmsg.sender = trpt->bup.ovals[2];
		((P2 *)_this)->inmsg.receiver = trpt->bup.ovals[3];
		((P2 *)_this)->inmsg.msg1 = trpt->bup.ovals[4];
		((P2 *)_this)->inmsg.msg2 = trpt->bup.ovals[5];
		((P2 *)_this)->inmsg.key = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 16: // STATE 20
		;
		((P2 *)_this)->outmsg.key = trpt->bup.ovals[5];
		((P2 *)_this)->outmsg.msg2 = trpt->bup.ovals[4];
		((P2 *)_this)->outmsg.msg1 = trpt->bup.ovals[3];
		((P2 *)_this)->outmsg.receiver = trpt->bup.ovals[2];
		((P2 *)_this)->outmsg.sender = trpt->bup.ovals[1];
		((P2 *)_this)->outmsg.num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 17: // STATE 23
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 18: // STATE 25
		;
		XX = 1;
		unrecv(now.ch, XX-1, 0, 1, 1);
		unrecv(now.ch, XX-1, 1, ((P2 *)_this)->verifier, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P2 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P2 *)_this)->inmsg.key, 0);
		((P2 *)_this)->verifier = trpt->bup.ovals[0];
		((P2 *)_this)->inmsg.num = trpt->bup.ovals[1];
		((P2 *)_this)->inmsg.sender = trpt->bup.ovals[2];
		((P2 *)_this)->inmsg.receiver = trpt->bup.ovals[3];
		((P2 *)_this)->inmsg.msg1 = trpt->bup.ovals[4];
		((P2 *)_this)->inmsg.msg2 = trpt->bup.ovals[5];
		((P2 *)_this)->inmsg.key = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 19: // STATE 34
		;
		((P2 *)_this)->outmsg.receiver = trpt->bup.ovals[7];
		((P2 *)_this)->outmsg.key = trpt->bup.ovals[6];
		((P2 *)_this)->outmsg.key = trpt->bup.ovals[5];
		((P2 *)_this)->outmsg.msg2 = trpt->bup.ovals[4];
		((P2 *)_this)->outmsg.msg1 = trpt->bup.ovals[3];
		((P2 *)_this)->outmsg.receiver = trpt->bup.ovals[2];
		((P2 *)_this)->outmsg.sender = trpt->bup.ovals[1];
		((P2 *)_this)->outmsg.num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 20: // STATE 36
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 21: // STATE 38
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Bob */

	case 22: // STATE 1
		;
		XX = 1;
		unrecv(now.ch, XX-1, 0, 2, 1);
		unrecv(now.ch, XX-1, 1, ((P1 *)_this)->verifier, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P1 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P1 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P1 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P1 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P1 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P1 *)_this)->inmsg.key, 0);
		((P1 *)_this)->verifier = trpt->bup.ovals[0];
		((P1 *)_this)->inmsg.num = trpt->bup.ovals[1];
		((P1 *)_this)->inmsg.sender = trpt->bup.ovals[2];
		((P1 *)_this)->inmsg.receiver = trpt->bup.ovals[3];
		((P1 *)_this)->inmsg.msg1 = trpt->bup.ovals[4];
		((P1 *)_this)->inmsg.msg2 = trpt->bup.ovals[5];
		((P1 *)_this)->inmsg.key = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		
	case 23: // STATE 3
		goto R999;

	case 24: // STATE 14
		;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = trpt->bup.ovals[5];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = trpt->bup.ovals[4];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = trpt->bup.ovals[3];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = trpt->bup.ovals[2];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = trpt->bup.ovals[1];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 25: // STATE 20
		;
		((P1 *)_this)->key = trpt->bup.ovals[1];
	/* 0 */	((P1 *)_this)->verifier = trpt->bup.ovals[0];
		;
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: // STATE 38
		;
		((P1 *)_this)->outmsg.key = trpt->bup.ovals[11];
		((P1 *)_this)->outmsg.msg2 = trpt->bup.ovals[10];
		((P1 *)_this)->outmsg.msg1 = trpt->bup.ovals[9];
		((P1 *)_this)->outmsg.receiver = trpt->bup.ovals[8];
		((P1 *)_this)->outmsg.sender = trpt->bup.ovals[7];
		((P1 *)_this)->outmsg.num = trpt->bup.ovals[6];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = trpt->bup.ovals[5];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = trpt->bup.ovals[4];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = trpt->bup.ovals[3];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = trpt->bup.ovals[2];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = trpt->bup.ovals[1];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 12);
		goto R999;

	case 27: // STATE 39
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 28: // STATE 41
		;
	/* 0 */	((P1 *)_this)->verifier = trpt->bup.ovals[7];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 2, 1);
		unrecv(now.ch, XX-1, 1, ((P1 *)_this)->verifier, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P1 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P1 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P1 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P1 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P1 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P1 *)_this)->inmsg.key, 0);
		((P1 *)_this)->verifier = trpt->bup.ovals[0];
		((P1 *)_this)->inmsg.num = trpt->bup.ovals[1];
		((P1 *)_this)->inmsg.sender = trpt->bup.ovals[2];
		((P1 *)_this)->inmsg.receiver = trpt->bup.ovals[3];
		((P1 *)_this)->inmsg.msg1 = trpt->bup.ovals[4];
		((P1 *)_this)->inmsg.msg2 = trpt->bup.ovals[5];
		((P1 *)_this)->inmsg.key = trpt->bup.ovals[6];
		;
		;
		ungrab_ints(trpt->bup.ovals, 8);
		goto R999;

	case 29: // STATE 43
		;
		now.BobSuccess = trpt->bup.oval;
		;
		goto R999;

	case 30: // STATE 53
		;
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].key = trpt->bup.ovals[5];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg2 = trpt->bup.ovals[4];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].msg1 = trpt->bup.ovals[3];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].receiver = trpt->bup.ovals[2];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].sender = trpt->bup.ovals[1];
		now.receiveBuffer[ Index((((P1 *)_this)->inmsg.num%255), 255) ].num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		;
		
	case 32: // STATE 62
		;
		((P1 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 33: // STATE 63
		;
	/* 0 */	((P1 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 34: // STATE 64
		;
		now.BobAgree = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 36: // STATE 79
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alice */

	case 37: // STATE 3
		;
		((P0 *)_this)->verifier = trpt->bup.ovals[2];
		((P0 *)_this)->key = trpt->bup.ovals[1];
		((P0 *)_this)->receiver = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 38: // STATE 10
		;
		((P0 *)_this)->outmsg.key = trpt->bup.ovals[5];
		((P0 *)_this)->outmsg.receiver = trpt->bup.ovals[4];
		((P0 *)_this)->outmsg.msg2 = trpt->bup.ovals[3];
		((P0 *)_this)->outmsg.msg1 = trpt->bup.ovals[2];
		((P0 *)_this)->outmsg.sender = trpt->bup.ovals[1];
		((P0 *)_this)->outmsg.num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 39: // STATE 11
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 40: // STATE 17
		;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].key = trpt->bup.ovals[5];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg2 = trpt->bup.ovals[4];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg1 = trpt->bup.ovals[3];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].receiver = trpt->bup.ovals[2];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].sender = trpt->bup.ovals[1];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 41: // STATE 21
		;
		XX = 1;
		unrecv(now.ch, XX-1, 0, 3, 1);
		unrecv(now.ch, XX-1, 1, 2, 0);
		unrecv(now.ch, XX-1, 2, ((int)((P0 *)_this)->inmsg.num), 0);
		unrecv(now.ch, XX-1, 3, ((P0 *)_this)->inmsg.sender, 0);
		unrecv(now.ch, XX-1, 4, ((P0 *)_this)->inmsg.receiver, 0);
		unrecv(now.ch, XX-1, 5, ((P0 *)_this)->inmsg.msg1, 0);
		unrecv(now.ch, XX-1, 6, ((P0 *)_this)->inmsg.msg2, 0);
		unrecv(now.ch, XX-1, 7, ((P0 *)_this)->inmsg.key, 0);
		((P0 *)_this)->inmsg.num = trpt->bup.ovals[0];
		((P0 *)_this)->inmsg.sender = trpt->bup.ovals[1];
		((P0 *)_this)->inmsg.receiver = trpt->bup.ovals[2];
		((P0 *)_this)->inmsg.msg1 = trpt->bup.ovals[3];
		((P0 *)_this)->inmsg.msg2 = trpt->bup.ovals[4];
		((P0 *)_this)->inmsg.key = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;
;
		
	case 42: // STATE 23
		goto R999;
;
		
	case 43: // STATE 28
		goto R999;

	case 44: // STATE 26
		;
		((P0 *)_this)->nonce = trpt->bup.oval;
		;
		goto R999;

	case 45: // STATE 36
		;
		((P0 *)_this)->outmsg.key = trpt->bup.ovals[6];
		((P0 *)_this)->outmsg.msg2 = trpt->bup.ovals[5];
		((P0 *)_this)->outmsg.msg1 = trpt->bup.ovals[4];
		((P0 *)_this)->outmsg.receiver = trpt->bup.ovals[3];
		((P0 *)_this)->outmsg.sender = trpt->bup.ovals[2];
		((P0 *)_this)->outmsg.num = trpt->bup.ovals[1];
		now.Num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 46: // STATE 37
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 47: // STATE 43
		;
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].key = trpt->bup.ovals[5];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg2 = trpt->bup.ovals[4];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].msg1 = trpt->bup.ovals[3];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].receiver = trpt->bup.ovals[2];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].sender = trpt->bup.ovals[1];
		now.sendBuffer[ Index((((P0 *)_this)->outmsg.num%255), 255) ].num = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 6);
		goto R999;

	case 48: // STATE 47
		;
		now.AliceSuccess = trpt->bup.oval;
		;
		goto R999;

	case 49: // STATE 48
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 50: // STATE 49
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 52: // STATE 51
		;
	/* 0 */	((P0 *)_this)->cnt = trpt->bup.oval;
		;
		;
		goto R999;

	case 53: // STATE 58
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;

	case 54: // STATE 58
		;
		((P0 *)_this)->cnt = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 56: // STATE 70
		;
		p_restor(II);
		;
		;
		goto R999;
	}

