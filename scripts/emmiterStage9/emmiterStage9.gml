  if(global.stage == 9) {
	  
	emmiterStage9Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage9Timer mod 20 == 0) {	
		createJumper(position, 10, 100, choose(sprPizza, sprBurger, sprDrunkard));
	}
  }