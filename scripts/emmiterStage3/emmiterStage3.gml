  if(global.stage == 3) {
	  
	emmiterStage3Timer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);
	
	if(emmiterStage3Timer mod 40 == 0) {	
		createElement(position, 6, choose(sprWisnia, sprSwimming, sprKrolik, sprWisnia), false);
	}
  }