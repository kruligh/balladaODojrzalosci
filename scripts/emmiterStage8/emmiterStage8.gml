  if(global.stage == 8) {
	  
	emmiterStage8Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage8Timer mod 30 == 0) {	
		createJumper(position, 10, 100, choose(sprDoctor, sprThink, sprBugz));
	}
  }