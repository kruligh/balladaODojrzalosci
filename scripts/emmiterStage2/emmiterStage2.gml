  if(global.stage == 2) {
  show_debug_message(emmiterStage2Timer)
	emmiterStage2Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);


	if(emmiterStage2Timer < 60) {
		createElement(0, 10, sprMoney, true);
		createElement(1, 10, sprMoney, true);
		createElement(2, 10, sprMoney, true);
		createElement(4, 10, sprMoney, true);
		createElement(5, 10, sprMoney, true);
		createElement(6, 10, sprMoney, true);
	} else if(emmiterStage2Timer > 120 and emmiterStage2Timer < 180){
		createElement(0, 10, sprMoney, true);
		createElement(1, 10, sprMoney, true);
		createElement(2, 10, sprMoney, true);
		createElement(4, 10, sprMoney, true);
		createElement(5, 10, sprMoney, true);
		createElement(6, 10, sprMoney, true);
	}
	
	if(emmiterStage2Timer > 140 and emmiterStage2Timer mod 30 == 0) {
		createElement(position, 8, sprMoney, true);
	}
	
	if(emmiterStage2Timer > 300 and emmiterStage2Timer mod 60 == 0) {
		createElement(position, 8, sprVirus, false);
	}

  }

