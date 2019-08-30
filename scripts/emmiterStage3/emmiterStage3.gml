  if(global.stage == 3) {
	  
	emmiterStage3Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage3Timer mod 30 == 0) {	
		createElement(position, 6, choose(sprSwimming, sprKrolik, sptTinder), false);
	}
  }