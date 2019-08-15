
   /*if (self.y > 366) && (self.y < 430) {
        if (self.position == Player.positionReal) {
            if (ShaderController.shader != -1) {
                resetShader();
                show_debug_message("SET SHADER ANGLE");
                Controller.viewAngleShader = choose(0, 0, 10, 20, 30, 35, 40, 45, 50, 90, 120, 150, 180) * choose(1, -1);
                ShaderController.backgroundCounter = choose(0, 1, 1);
            } else {
                resetShader();
            }
        
            var chosenShader = choose(0, 1, 2, 3, 4);
            var chosenEffect = irandom_range(0, ShaderController.shadersEffects[chosenShader]);
            show_debug_message("[ELEMENT#" + string(self.id) + "] Collision with Player - Action performed: " + string(chosenShader) + " " + string(chosenEffect));
            initEffect(chosenEffect, 300, chosenShader);
            global.hapiness += 15;
            
            if (!audio_is_playing(sndPowerUp)) {
                //audio_play_sound(sndPowerUp, 5, false);
            }
            //instance_create(self.x, self.y, Explosion);
            instance_destroy(self);
        }
    }
