
    //Set image scale;
    image_xscale = 0.003 * spd + 0.22;
    image_yscale = image_xscale;
    
    if (reached == false) {
        self.x += sign(targetPoint - self.x) * changeSpd;
        var offset = changeSpd;
        if (targetPoint - offset < self.x) && (targetPoint + offset > self.x) {
            reached = true;
        }
    }
    
    if (reached == true) {
        //Movement
        pointX = Controller.pointDown[position];
        spdTemp = spd;
        spd += (constA * power((spd + 1), 2) - constA * power((spd - 1), 2)) * (vspd / 5);
        spdPrev = spd - spdTemp;
        move_towards_point(pointX, 530, spdPrev);
        self.y = spd;
        
        if (self.y > 530) {
            instance_destroy();
        }
        
        //Position changing
        t++
        if (t > timer) {
            //Change position
            if (position == 6) {
                position = 5;
            } else if (position == 0) {
                position = 1;
            } else {
                position = choose(1, -1) + position;
            }
            t = 0;
            reached = false;
            speed = 0;
            var realMargin = (global.xdisplay / 2.0) - round(spd / Grid.a) - Grid.l_up + Grid.margin;
            var realLine = global.xdisplay - realMargin * 2;
            var realDistance = realLine / 7;
            var realOffset = realDistance * 0.5;
            targetPoint = realMargin + realOffset + realDistance * (position);
        }
    }

///Perform crash
    playerCrashDetect();

