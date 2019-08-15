  if(global.stage == 7) {
	  
	emmiterStage7Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage7Timer mod 60 == 0){
	
		if(emmiterStage7Timer div 60 < 3) {	
			createDrunkard(position, 6, 100, choose(sprComp, sprKrzeslo));
		} else if (emmiterStage7Timer div 60 < 6) {	
			createDrunkard(position, 8, 100, choose(sprComp, sprVirus));
		} else {
			createDrunkard(position, 10, 100, choose(sprKrzeslo, sprDoctor));
		}
	}
  }