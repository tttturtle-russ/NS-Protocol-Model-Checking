	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM terminate */
;
		;
		;
		;
		
	case 5: // STATE 13
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC :init: */

	case 6: // STATE 1
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 7: // STATE 2
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 8: // STATE 3
		;
		;
		delproc(0, now._nr_pr-1);
		;
		goto R999;

	case 9: // STATE 4
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Attack */

	case 10: // STATE 6
		;
		((P2 *)_this)->out_msg.key = trpt->bup.ovals[9];
		((P2 *)_this)->out_msg.msg2 = trpt->bup.ovals[8];
		((P2 *)_this)->out_msg.msg1 = trpt->bup.ovals[7];
		((P2 *)_this)->out_msg.sender = trpt->bup.ovals[6];
		((P2 *)_this)->out_msg.receiver = trpt->bup.ovals[5];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 1, 1);
		unrecv(now.ch, XX-1, 1, 3, 0);
		unrecv(now.ch, XX-1, 2, ((P2 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->in_msg.key, 0);
		((P2 *)_this)->in_msg.sender = trpt->bup.ovals[0];
		((P2 *)_this)->in_msg.receiver = trpt->bup.ovals[1];
		((P2 *)_this)->in_msg.msg1 = trpt->bup.ovals[2];
		((P2 *)_this)->in_msg.msg2 = trpt->bup.ovals[3];
		((P2 *)_this)->in_msg.key = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 10);
		goto R999;

	case 11: // STATE 8
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 12: // STATE 15
		;
		((P2 *)_this)->out_msg.key = trpt->bup.ovals[9];
		((P2 *)_this)->out_msg.msg2 = trpt->bup.ovals[8];
		((P2 *)_this)->out_msg.msg1 = trpt->bup.ovals[7];
		((P2 *)_this)->out_msg.receiver = trpt->bup.ovals[6];
		((P2 *)_this)->out_msg.sender = trpt->bup.ovals[5];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 3, 1);
		unrecv(now.ch, XX-1, 1, 2, 0);
		unrecv(now.ch, XX-1, 2, ((P2 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->in_msg.key, 0);
		((P2 *)_this)->in_msg.sender = trpt->bup.ovals[0];
		((P2 *)_this)->in_msg.receiver = trpt->bup.ovals[1];
		((P2 *)_this)->in_msg.msg1 = trpt->bup.ovals[2];
		((P2 *)_this)->in_msg.msg2 = trpt->bup.ovals[3];
		((P2 *)_this)->in_msg.key = trpt->bup.ovals[4];
		;
		;
		ungrab_ints(trpt->bup.ovals, 10);
		goto R999;

	case 13: // STATE 16
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 14: // STATE 23
		;
		((P2 *)_this)->out_msg.key = trpt->bup.ovals[10];
		((P2 *)_this)->out_msg.msg2 = trpt->bup.ovals[9];
		((P2 *)_this)->out_msg.msg1 = trpt->bup.ovals[8];
		((P2 *)_this)->out_msg.receiver = trpt->bup.ovals[7];
		((P2 *)_this)->out_msg.sender = trpt->bup.ovals[6];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 1, 1);
		unrecv(now.ch, XX-1, 1, ((P2 *)_this)->verified, 0);
		unrecv(now.ch, XX-1, 2, ((P2 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P2 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P2 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P2 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P2 *)_this)->in_msg.key, 0);
		((P2 *)_this)->verified = trpt->bup.ovals[0];
		((P2 *)_this)->in_msg.sender = trpt->bup.ovals[1];
		((P2 *)_this)->in_msg.receiver = trpt->bup.ovals[2];
		((P2 *)_this)->in_msg.msg1 = trpt->bup.ovals[3];
		((P2 *)_this)->in_msg.msg2 = trpt->bup.ovals[4];
		((P2 *)_this)->in_msg.key = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 11);
		goto R999;

	case 15: // STATE 24
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 16: // STATE 26
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Bob */

	case 17: // STATE 1
		;
	/* 0 */	((P1 *)_this)->verified = trpt->bup.ovals[6];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 2, 1);
		unrecv(now.ch, XX-1, 1, ((P1 *)_this)->verified, 0);
		unrecv(now.ch, XX-1, 2, ((P1 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P1 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P1 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P1 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P1 *)_this)->in_msg.key, 0);
		((P1 *)_this)->verified = trpt->bup.ovals[0];
		((P1 *)_this)->in_msg.sender = trpt->bup.ovals[1];
		((P1 *)_this)->in_msg.receiver = trpt->bup.ovals[2];
		((P1 *)_this)->in_msg.msg1 = trpt->bup.ovals[3];
		((P1 *)_this)->in_msg.msg2 = trpt->bup.ovals[4];
		((P1 *)_this)->in_msg.key = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;
;
		
	case 18: // STATE 3
		goto R999;

	case 19: // STATE 19
		;
		((P1 *)_this)->out_msg.key = trpt->bup.ovals[4];
		((P1 *)_this)->out_msg.msg2 = trpt->bup.ovals[3];
		((P1 *)_this)->out_msg.msg1 = trpt->bup.ovals[2];
		((P1 *)_this)->out_msg.sender = trpt->bup.ovals[1];
		((P1 *)_this)->out_msg.receiver = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 20: // STATE 19
		;
		((P1 *)_this)->out_msg.key = trpt->bup.ovals[4];
		((P1 *)_this)->out_msg.msg2 = trpt->bup.ovals[3];
		((P1 *)_this)->out_msg.msg1 = trpt->bup.ovals[2];
		((P1 *)_this)->out_msg.sender = trpt->bup.ovals[1];
		((P1 *)_this)->out_msg.receiver = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 21: // STATE 19
		;
		((P1 *)_this)->out_msg.key = trpt->bup.ovals[4];
		((P1 *)_this)->out_msg.msg2 = trpt->bup.ovals[3];
		((P1 *)_this)->out_msg.msg1 = trpt->bup.ovals[2];
		((P1 *)_this)->out_msg.sender = trpt->bup.ovals[1];
		((P1 *)_this)->out_msg.receiver = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 22: // STATE 20
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 23: // STATE 22
		;
	/* 0 */	((P1 *)_this)->verified = trpt->bup.ovals[6];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 2, 1);
		unrecv(now.ch, XX-1, 1, ((P1 *)_this)->verified, 0);
		unrecv(now.ch, XX-1, 2, ((P1 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P1 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P1 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P1 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P1 *)_this)->in_msg.key, 0);
		((P1 *)_this)->verified = trpt->bup.ovals[0];
		((P1 *)_this)->in_msg.sender = trpt->bup.ovals[1];
		((P1 *)_this)->in_msg.receiver = trpt->bup.ovals[2];
		((P1 *)_this)->in_msg.msg1 = trpt->bup.ovals[3];
		((P1 *)_this)->in_msg.msg2 = trpt->bup.ovals[4];
		((P1 *)_this)->in_msg.key = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 24: // STATE 25
		;
		now.BobSuccess = trpt->bup.oval;
		;
		goto R999;
;
		
	case 25: // STATE 29
		goto R999;
;
		
	case 26: // STATE 27
		goto R999;

	case 27: // STATE 31
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alice */

	case 28: // STATE 5
		;
		((P0 *)_this)->out_msg.receiver = trpt->bup.ovals[4];
		((P0 *)_this)->receiver = trpt->bup.ovals[3];
		((P0 *)_this)->out_msg.msg2 = trpt->bup.ovals[2];
		((P0 *)_this)->out_msg.msg1 = trpt->bup.ovals[1];
		((P0 *)_this)->out_msg.sender = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 29: // STATE 14
		;
		((P0 *)_this)->out_msg.key = trpt->bup.ovals[2];
		((P0 *)_this)->verified = trpt->bup.ovals[1];
		((P0 *)_this)->key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 30: // STATE 14
		;
		((P0 *)_this)->out_msg.key = trpt->bup.ovals[2];
		((P0 *)_this)->verified = trpt->bup.ovals[1];
		((P0 *)_this)->key = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 4);
		goto R999;

	case 31: // STATE 14
		;
		((P0 *)_this)->out_msg.key = trpt->bup.oval;
		;
		goto R999;

	case 32: // STATE 15
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 33: // STATE 17
		;
	/* 0 */	((P0 *)_this)->verified = trpt->bup.ovals[6];
		XX = 1;
		unrecv(now.ch, XX-1, 0, 3, 1);
		unrecv(now.ch, XX-1, 1, ((P0 *)_this)->verified, 0);
		unrecv(now.ch, XX-1, 2, ((P0 *)_this)->in_msg.sender, 0);
		unrecv(now.ch, XX-1, 3, ((P0 *)_this)->in_msg.receiver, 0);
		unrecv(now.ch, XX-1, 4, ((P0 *)_this)->in_msg.msg1, 0);
		unrecv(now.ch, XX-1, 5, ((P0 *)_this)->in_msg.msg2, 0);
		unrecv(now.ch, XX-1, 6, ((P0 *)_this)->in_msg.key, 0);
		((P0 *)_this)->verified = trpt->bup.ovals[0];
		((P0 *)_this)->in_msg.sender = trpt->bup.ovals[1];
		((P0 *)_this)->in_msg.receiver = trpt->bup.ovals[2];
		((P0 *)_this)->in_msg.msg1 = trpt->bup.ovals[3];
		((P0 *)_this)->in_msg.msg2 = trpt->bup.ovals[4];
		((P0 *)_this)->in_msg.key = trpt->bup.ovals[5];
		;
		;
		ungrab_ints(trpt->bup.ovals, 7);
		goto R999;

	case 34: // STATE 23
		;
		((P0 *)_this)->out_msg.key = trpt->bup.ovals[4];
		((P0 *)_this)->out_msg.msg2 = trpt->bup.ovals[3];
		((P0 *)_this)->out_msg.msg1 = trpt->bup.ovals[2];
		((P0 *)_this)->out_msg.receiver = trpt->bup.ovals[1];
		((P0 *)_this)->out_msg.sender = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 5);
		goto R999;

	case 35: // STATE 24
		;
		_m = unsend(now.ch);
		;
		goto R999;

	case 36: // STATE 27
		;
		now.AliceSuccess = trpt->bup.oval;
		;
		goto R999;
;
		
	case 37: // STATE 32
		goto R999;
;
		
	case 38: // STATE 30
		goto R999;

	case 39: // STATE 34
		;
		p_restor(II);
		;
		;
		goto R999;
	}

