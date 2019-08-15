if (self.y < yst) && (intr = 1)
    {
        self.y += spd;
    }
    if (self.y >= yst) && (intr = 1)
        intr = 2;
    
    
    if (intr = 3)
    {
        t += 1;
        //generate enemies
    }
    
    if (global.gameTime >= 74)
    {
        intr = 4;
        image_xscale -= 0.05;
        image_yscale -= 0.05;
        if (image_xscale <= 0)
            instance_destroy(self);
    }