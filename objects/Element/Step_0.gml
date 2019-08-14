
    //Set image scale;
    image_xscale = 0.003 * spd + 0.22;
    image_yscale = image_xscale;
    
	if (keyboard_check(vk_space)) {
		show_debug_message("REVERT MADAFAKA");
		global.isTimeRevert = true;
	} else {
		global.isTimeRevert = false;	
	}
	
    if (reached == true) {
        //Movement
        pointX = Controller.pointDown[position];
        spdTemp = spd;
        spd += (global.isTimeRevert ? -1 : 1 ) * (constA * power((spd + 1), 2) - constA * power((spd - 1), 2)) * (vspd / 5);
        spdPrev = spd - spdTemp;

        move_towards_point(pointX, 530, spdPrev);

	    if (self.y > 530) {
	        instance_destroy();
	    }

		if (global.isTimeRevert and self.y < 10) {
		        instance_destroy();
		    }

    }

///Perform crash
    playerCrashDetect();

