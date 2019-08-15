  if(global.stage == 7) {
	  
	emmiterStage5Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage5Timer mod 40 == 0) {	
		createElement(position, 6, choose(sprQuestion, sprNokia3110));
	}
  }