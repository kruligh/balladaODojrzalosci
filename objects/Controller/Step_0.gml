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
  // bujanie
  // [C] to jest funkcja krolika xD #bujanie
	if(global.bujanie == true) {
	    viewAngleAmbient += 0.005;
	    if (viewAngleAmbient > pi * 2) {
	        viewAngleAmbient = 0;
	    }
    
	    viewAngleFactorTimer += 1;
	    if (viewAngleFactorTimer > 5 * room_speed) {
	        viewAngleFactor = choose(1, 1.1, 1.3, 1.4, 1.7, 2.1, 2.8, 2.9, 3.7, 4.6);
	        viewAngleFactorTimer  = 0;
	    }
	    //camera_set_view_angle(global.camera.camera, sin(viewAngleAmbient) * 10);
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
	delayedTime = global.gameTime - 1;
    switch (delayedTime) {
        case 0:
			global.stage = 0;
            bossInit = false;
            isGandalf = false;
			break;
		case 1:
			//dev
			
			//global.showLirycs = false;
			//global.stage = 11;
			break;
		case 9:
		//case 20:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "INTRO");
            global.stage = 1;
			global.bujanie = true;

            break;
		case 19:
			if(global.timer mod 30 == 0) {
				global.isTimeRevert = true;
			}
			
			break;
		case 23:
			var chosenShader = 4;
            var chosenEffect = 2;
            initEffect(chosenEffect, 100, chosenShader);
			break;
    	case 25:
			resetShader();
			global.messages = ds_list_create();
			ds_list_add(global.messages, "SWAG");
			global.stage = 2;
			global.isTimeRevert = false;
			
			break;
		case 34:
			global.stage = 3;
			break;
		case 38:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "WSTEP");
			ds_list_add(global.messages, "OPIS");
			ds_list_add(global.messages, "COS TAM");
			
			global.stage = 3;
			
			
			var chosenShader = shaders.shader_wave;
            var chosenEffect = 3;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			
			break;
		case 45:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "AKCJA");
			global.stage = 4;
			
			var chosenShader = shaders.shader_wave;
            var chosenEffect = 1;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			
			break;

		case 53: 
	        initEffect(2, 100, 4);
			break;
		case 55:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "HAHA");
			ds_list_add(global.messages, "KAWAL");
			ds_list_add(global.messages, "XDD");
			global.stage = 5;
			
			break;
		case 58:
			resetShader();
			break;
		case 65:
						
            isGandalf = true;
			instance_create(0, 0, Gandalf);
			global.destroyGandalf = false;
			//    bossController = true;
            break; 
			
		case 67:
			global.bujanie = false;
			break;	
		case 68:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "POWAGA");

			global.stage = 6;

			break;	
		case 78:
			global.messages = ds_list_create();
			ds_list_add(global.messages, "PROGRAMISTA");
			
			global.stage = 7;
			global.bujanie = true;
			
			var chosenShader = 2;
            var chosenEffect = 1;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			
			break;
		
		case 81:
			global.destroyGandalf = true;
			break;
		case 85:
			global.messages = ds_list_create();

			ds_list_add(global.messages, "DIETA");
			ds_list_add(global.messages, "BADANIA");
			ds_list_add(global.messages, "DOJRZALOSC");
			global.stage = 8;
			
			var chosenShader = 5;
            var chosenEffect = 1;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 97:
			global.messages = ds_list_create();

			ds_list_add(global.messages, "ROZPACZ");
			ds_list_add(global.messages, "KRYZYS");
			ds_list_add(global.messages, "GIMNASTYKA");	
			
			global.stage = 9;
		
			break;
		case 99:
			global.stage = 10;
			var chosenShader = shaders.shader_wave;
            var chosenEffect = 3;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 108:
		resetShader();
			var chosenShader = shaders.shock_shockwave;
            var chosenEffect = 3;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 113:
		resetShader();
			var chosenShader = shaders.shader_rgb;
            var chosenEffect = 1;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 118:
		resetShader();
			var chosenShader = shaders.shader_rgb;
            var chosenEffect = 2;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 123:
		resetShader();
			var chosenShader = shaders.shader_rgb;
            var chosenEffect = 3;
            initEffect(chosenEffect, 9 * 60, chosenShader);
			break;
		case 125:
			resetShader();
			global.stage = 11;
			global.messages = ds_list_create();

			ds_list_add(global.messages, "KARCZOCH");
			ds_list_add(global.messages, "BROKUL");
			ds_list_add(global.messages, "RUKOLA");
			ds_list_add(global.messages, "RZODKIEWKA");
			ds_list_add(global.messages, "WITAMINY");
			ds_list_add(global.messages, "VEGE");
			break;
		case 150:
			global.stage = 12;
			global.messages = ds_list_create();

			ds_list_add(global.messages, "DOWIDZENIA");
			ds_list_add(global.messages, "SUBSKRYBUJ");
			ds_list_add(global.messages, "NAJBA MJUSIK");

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



	










