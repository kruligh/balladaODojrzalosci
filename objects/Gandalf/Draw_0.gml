if (intr = 1)
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    
    if (intr = 2)
    {
        st += 1;
        if (st < 180)
            image_alpha = choose(0.4,0.5,0.6,0.7,0.8,0.9,1) + 0.25;
        else
            image_alpha = 1;
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
        if (st > 240)
        {
            blend = choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white);
            draw_sprite_ext(spr_boss_02_1,image_index,x,y,image_xscale,image_yscale,image_angle,blend,image_alpha);
        }
        if (st > 300) && (leye = 0) && (reye = 0)
            boss_02_line();
        
        
        if (st > 520)
        {
            st = 0;
            intr = 3;
        }
    }
    
    if (intr >= 3)
    {
        draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);
    }
	
	if (intr >= 2) {
		mounthThetha += 0.1;
		var mounthRange = 16;
		if (mounthThetha > pi * 2) {
			mounthThetha = 0;	
		}
		draw_sprite_ext(spr_boss_02_1,image_index,x,y,image_xscale,image_yscale,image_angle,blend,image_alpha);
		draw_sprite_ext(spr_boss_02_2,image_index,x,
			y + abs(sin(mounthThetha) * mounthRange), 
			image_xscale,image_yscale,image_angle,c_white,image_alpha);	
	}