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
			case 5:
                emmiterStage5();
                break;
			case 6:
                emmiterStage6();
                break;
			case 7:
                emmiterStage7();
                break;
			case 8:
                emmiterStage8();
                break;
			case 9:
                emmiterStage9();
                break;
			case 10:
                emmiterStage10();
                break;
			case 11:
                emmiterStage11();
                break;				
			case 12:
                emmiterStage12();
                break;				
        }
    }


