    emmiterTimer += 1;
	var position = choose(0, 1, 2, 3, 4, 5, 6);


	if(emmiterTimer < 60) {
		createElement(0, 10, sprMoney);
		createElement(1, 10, sprMoney);
		createElement(2, 10, sprMoney);
		createElement(4, 10, sprMoney);
		createElement(5, 10, sprMoney);
		createElement(6, 10, sprMoney);
	}
	
	if(emmiterTimer > 240 and emmiterTimer mod 60 == 0) {
		createElement(position, 8, sprMoney);
	}



