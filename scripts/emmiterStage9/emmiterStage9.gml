  if(global.stage == 9) {
	  
	emmiterStage9Timer += 1;
	
	if(emmiterStage9Timer mod 20 == 0) {	
		var position = choose(0, 1, 2, 4, 5, 6);
		createJumper(position, 14, 100, choose(sprPizza, sprBurger, sprDrunkard, sprKotlet));
	}
	
	if(emmiterStage9Timer mod 20 == 0) {
		var position = choose(0, 1, 2, 4, 5, 6);
		createJumper(position, 14, 100, choose(sprBurger));
	}
		
  }