  if(global.stage == 4) {
	  
	emmiterStage4Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage4Timer mod 60 == 0 and emmiterStage4Timer div 60 < 7) {	
		createElement(position, 6, choose(sprSandwich, sprClock, sprClock, sprPizza));
	}
  }