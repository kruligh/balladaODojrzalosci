  if(global.stage == 2) {
  show_debug_message(emmiterStage2Timer)
	emmiterStage2Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);


	if(emmiterStage2Timer < 60) {
		createElement(0, 10, sprMoney);
		createElement(1, 10, sprMoney);
		createElement(2, 10, sprMoney);
		createElement(4, 10, sprMoney);
		createElement(5, 10, sprMoney);
		createElement(6, 10, sprMoney);
	}
	
	if(emmiterStage2Timer > 100 and emmiterStage2Timer mod 60 == 0) {
		createElement(position, 8, sprMoney);
	}

  }

