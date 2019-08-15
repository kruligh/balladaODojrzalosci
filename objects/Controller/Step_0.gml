/// @description View Angle

	
	
    //View Angle Player
    var destinationAngle = (Player.position - 3) * viewAngleStep;
    if (viewAnglePlayer != destinationAngle) {
        if (viewAnglePlayer < destinationAngle) {
            viewAnglePlayer += 1;
        }
        if (viewAnglePlayer > destinationAngle) {
            viewAnglePlayer -= 1;
        }
    }

    //VR
    if (os_type == os_android) {
        accAngleY = device_get_tilt_y();
        if (abs(accAngleY) > 0.3) {
            vrAngleY += sign(accAngleY);
        }
    }
	
	
    
    //View Angle All
    __view_set( e__VW.Angle, 0, viewAnglePlayer - vrAngleY + viewAngleShader );
     
// bujanie
if(global.bujanie) {
    viewAngleAmbient += 0.005;
    if (viewAngleAmbient > pi * 2) {
        viewAngleAmbient = 0;
    }
    
    viewAngleFactorTimer += 1;
    if (viewAngleFactorTimer > 5 * room_speed) {
        viewAngleFactor = choose(1, 1.1, 1.3, 1.4, 1.7, 2.1, 2.8, 2.9, 3.7, 4.6);
        viewAngleFactorTimer  = 0;
    }
    __view_set(e__VW.Angle, 0, __view_get( e__VW.Angle, 0 ) + (sin(viewAngleAmbient) * 10) );//viewAngleFactor;
}
    


///Game time
    if (bossController == false) {
        ticker += 1;
        if (ticker > 60) {
            global.gameTime += 1;
            ticker = 0;   
        }
    }
            
	huj = "dupa";
    switch (global.gameTime) {
        case 0:
			global.stage = 0;
            bossInit = false;
            isGandalf = false;
			break;
		case 1:
			//dev
			
			global.showLirycs = false;
			global.stage = 2;
			break;
		//case 10:
		case 20:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "INTRO");
            global.stage = 1;
			global.bujanie = true;

            break;
		case 21:
			global.isTimeRevert = true;
			break;
    	case 26:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "SWAG");
			global.stage = 2;
			global.isTimeRevert = false;
		case 60:
			
            if (isGandalf = false) {
       //         instance_create(0, 0, Gandalf);
         //       bossController = true;
            }
            //isGandalf = true;
			
            break;
    }
    
    if (bossController == true) {
        if (bossInit = false) {
            //switch(global.stage)  {
              //  case 1:
                    bossInstance = createBoss(15, 1);
                    bossInit = true;
                    bossController = false;
                //    break;
           // }
        } else {
            bossController = false;
        }
    }

///Parameters controller

/*
    if (global.hapiness < 0) {
        //show_debug_message("HAPINESS BELLOW 0, GAME OVER");
    }
    if (global.hapiness > 100) {
        //show_debug_message("MAXIMUM HAPINESS !!");
    }
    
    if (global.life < 0) {
        //show_debug_message("HEALTH BELLOW 0, GAME OVER");
    }
    if (global.life > 100) {
        //show_debug_message("MAXIMUM HEALTH !!");
    }
    
    if (ShaderController.shaderInit == false) {
        global.hapiness -= global.hapinessFactor;
        //global.life += global.lifeFactor * 0.5;
    } else {
        //global.life -= global.lifeFactor;
    }
*/

/* */
///End game

    if (keyboard_check(vk_escape)) {
        game_end();
    }


/* */
/*  */



	










