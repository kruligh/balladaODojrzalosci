
    viewRotate = Controller.viewAnglePlayer;

    var shake = choose(1, -1) * random(2);

    var hapinessLength = (global.hapiness / 100) * barMax;
    var lifeLength = (global.life / 100) * barMax;
    
    draw_sprite_ext(panelLeft, 0, posX + shake, posY + shake, 1, 1, 0, image_blend, panelAlpha);
    draw_sprite_ext(panelRight, 0, posX + shake, posY + shake, 1, 1, 0, image_blend, panelAlpha);
    draw_sprite_part_ext(barLeft, 0, 0, 0, sprite_get_width(barLeft), hapinessLength, 0, 100, 1, 1, image_blend, barAlpha);
    draw_sprite_part_ext(barRight, 0, 0, 0, sprite_get_width(barLeft), lifeLength, 0, 100, 1, 1, image_blend, barAlpha);

    
    


///Draw text hud
    draw_set_font(pixelFontBig);
    
    //Left
    draw_set_halign(fa_left);
    draw_set_valign(fa_bottom);
    draw_text_transformed_colour(48, 500, 
		string_hash_to_newline("STAGE " + string(global.stage)), 
		1, 1, 0, c_red, c_yellow, c_red, c_yellow, 1.0);
    
    // Middle
    if (Controller.bossInit == true) {
        if (instance_exists(Boss)) {
            var bossInstance = Boss;
            if (bossInstance != noone) {
                var timeNow = bossInstance.time;
                var timeLeft = bossInstance.behaviourTime;
                var timeString = timeLeft - timeNow
                drawShakeText(  "BOSS !!! " + string(timeString),
                            choose(c_white, c_fuchsia, c_yellow),
                            fa_middle,
                            fa_bottom,
                            pixelFontBig,
                            480,
                            500,
                            random(3),
                            random(3));
            }
        }
        
    }
    
    //Right
    draw_set_halign(fa_right);
    draw_set_valign(fa_bottom);
    draw_text_transformed_colour(960 - 48, 500, string_hash_to_newline("TIME " + string(global.gameTime)), 1, 1, 0, c_red, c_yellow, c_red, c_yellow, 1.0);


