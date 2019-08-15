  if(global.stage == 12) {
	  
	emmiterStage12Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage12Timer mod 30 == 0) {	
		createEmptyElement(0, 6);
		createEmptyElement(6, 6);
	}
  }