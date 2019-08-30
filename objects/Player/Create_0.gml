/// @description Init
    //Utills
    if (instance_number(Player) > 1) {
        instance_destroy();
    }
    if (instance_exists(Controller)) {
        x_view = global.xdisplay;
        y_view = global.ydisplay;
    } else {
        //Throw exception, handle it
        show_debug_message("[WARNING] Controller instance is missing!\\n[PLAYER] Reinitialize Controller");
        instance_create(0, 0, Controller);
    }
    if (instance_exists(Grid)) {
        a = Grid.a;
    } else {
        //Throw exception, handle it
        show_debug_message("[WARNING] Grid instance is missing!\\n[PLAYER] Reinitialize Grid");
        instance_create(0, 0, Controller);
    }
    
	
    //Moves
    position = 3;
    positionReal = position;
    positionMin = 0;
    positionMax = global.numberOfLanes;
    positionMargin = 130;
    positionDistance = (global.xdisplay - positionMargin * 2) / 7;
    positionOffset = positionDistance / 2;
    positionDown = global.ydisplay * 0.82625;
    for(i = 0; i < 7; i++) {
        point[i] = positionMargin + i * positionDistance + positionOffset;
    }
    spd = 0;
    spdAcceleration = 1.5;
    spdMax = 20;
    reached = false;
    
    //Input
    keyLeft = vk_left;
    keyRight = vk_right;
    keyShoot = vk_up;
	keyDown = vk_down;
    global.gamepad = 1;
    
    shootTimer = 0;
    shootPause = 10;

    //BPM timer
    bpmTimer = 0;
    bpm = 107;
    
    enum BpmAction {
        MOVE_LEFT = 0,
        MOVE_RIGHT = 1,
        SHOOT = 2
    }
    bpmPreviousAction = BpmAction.MOVE_LEFT;

///@description Initialize

	/**
	 * Ex 1. Bujajacy statek #bump #sin #cos
	 * Wiedzac, czym jest event Create oraz Step (Begin-Step)
	 * zrob tak, zeby statek sie "bujał"
	 */
	 
	thick = 0	 
	 

















