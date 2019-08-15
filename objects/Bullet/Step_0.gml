    
    scaleSpd -= (constA * power((scaleSpd + 1), 2) - constA * power((scaleSpd - 1), 2)) * (spd / 5);
    move_towards_point(pointA, 10, spd);
    if (self.y <= 10) {
        instance_destroy();
    }
    
    if (place_meeting(x, y, destroyItem)) {
        var instance = instance_place(x, y, destroyItem);
        calcParametersOnBulletCollision(instance);
        instance_destroy(instance);
        // global.hapiness += choose(1, 5, 5, 10, 10);
        instance_destroy(self);
        
    }

