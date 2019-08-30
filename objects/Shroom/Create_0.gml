
    position = 0;
    spd = 10;
    spdPrev = spd;
    spdTemp = 0;
    vspd = 5;
    constA = 1 / (global.ydisplay * 0.9696);
    t = 0;
    timer = 0;
    
    pointX = 0; //Delivered from constructor, set by createElement();
    reached = true;
    targetPoint = self.x;
    changeSpd = 2;
    good = false;
    message = randomMessage();
    sprite_index = randomShroomSprite(sprite_index);

event_inherited();