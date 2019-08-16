    emmiterTimer += 1;
	var position = choose(0, 1, 2, 4, 5, 6);


	if(emmiterTimer < 5) {
		createEmptyElement(position, 8);	
	}
	
	if(emmiterTimer > 120 and emmiterTimer mod 61 == 0) {
		createElement(position, 8, sprDrunkard, false);
	}



