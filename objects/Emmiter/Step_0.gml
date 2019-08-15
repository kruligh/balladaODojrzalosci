/// @description Execute emmiterStage scripts

    if (Controller.bossInit == false) {    
        switch(global.stage) {
            case 0:
                emmiterStage0();
                break; 
			case 1:
	           emmiterStage1();
                break; 
            case 2:
                emmiterStage2();
                break;
			case 3:
                emmiterStage3();
                break;
			case 4:
                emmiterStage4();
                break;
        }
    }


