  if(global.stage == 11) {
	  
	emmiterStage11Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage11Timer mod 20 == 0) {	
		createElement(position, 14, choose(sprKarczo, sprBroko, sprSalat));
	}
  }