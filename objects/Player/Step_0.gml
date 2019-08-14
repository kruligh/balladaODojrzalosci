
    //Set player position
    //self.x = positionMargin + position * positionDistance + positionOffset;
    //self.y = positionDown;
    
    //Autopilot
    bpmTimer += 1;
    if (bpmTimer > bpm) {
        bpmTimer = 0;

        var bpmAction = -1; //choose(0, 1, 2);
        
        switch(bpmAction) {
            case BpmAction.MOVE_LEFT:
                if (position > positionMin) {
                    position -= 1;
                } else {
                    position += 1;
                }
                break;
            case BpmAction.MOVE_RIGHT:
                if (position < positionMax) {
                    position += 1;
                } else {
                    position -= 1;
                }
                break;
            case BpmAction.SHOOT:
                instance_create(self.x, self.y - 40, Bullet);
                break;
        
        }
    }
    
    if (keyboard_check_pressed(keyLeft) || gamepad_button_check_pressed(global.gamepad, gp_padl)) {
        if (position > positionMin) {
            position -= 1;
        }
    }
    
    if (keyboard_check_pressed(keyRight) || gamepad_button_check_pressed(global.gamepad, gp_padr)) {
        if (position < positionMax) {
            position += 1;
        }
    }
    
    
    ///Movement
    spd += spdAcceleration;
    if (spd >= spdMax) {
        spd = spdMax;
    }
    
    var tempOffset = 10;
    if (self.x - tempOffset < point[position]) && (point[position] < self.x + tempOffset) {
        reached = true;
    } else {
        reached = false;
    }
    
    if (reached == false) {
        move_towards_point(point[position], positionDown, spd);
        if (distance_to_point(point[position], positionDown) <= (positionOffset * 0.5)) {
            positionReal = position;
        }
    }
    if (reached == true) {
        self.x = point[position];
        self.y = positionDown;
        positionReal = position;
        spd = 0;
    }
    
    //Shooting
    if keyboard_check_released(keyShoot) || gamepad_button_check_released(global.gamepad, gp_face1) {
        shootTimer = 0;
    }
    if keyboard_check(keyShoot) || gamepad_button_check(global.gamepad, gp_face1) {
        if (shootTimer == 0) {
            //Shot
            instance_create(self.x, self.y - 40, Bullet);
        }
        shootTimer += 1;
        if (shootTimer > shootPause) {
            shootTimer = 0;
        }
    }

