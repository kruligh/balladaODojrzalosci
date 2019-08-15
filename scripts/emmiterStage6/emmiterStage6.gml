  if(global.stage == 6) {
	  
	emmiterStage6Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage6Timer mod 40 == 0) {	
		createEmptyElement(position, 6);
	}
  }