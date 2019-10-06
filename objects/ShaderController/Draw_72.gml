///@description 

	var cameraXTarget = global.xdisplay / 2.0;
	var cameraYTarget = global.ydisplay / 2.0;
	var menuBackgroundSprite = sprCzarnaDupa;//sprTapetaZOSX;
	var menuBackgroundWidth = sprite_get_width(menuBackgroundSprite);
	var pixelScale = global.xdisplay / menuBackgroundWidth;
	
	draw_clear_alpha(c_black, 1.0);
	
    if (red >= 254) || (red <= 1) {
        redDirection = redDirection * -1;
    }
    if (green >= 254) || (green <= 1) {
        greenDirection = greenDirection * -1;
    }
    if (blue >= 254) || (blue <= 1) {
        blueDirection = blueDirection * -1;
    }
	
	red += 1 * redDirection
    green += 1 * greenDirection
    blue += 1 * blueDirection
	
	var bFactor = 0.1;
	backgroundEXTRAAngle += bFactor;
	var backgroundAngle = (camera_get_view_angle(global.camera) * -5) + backgroundEXTRAAngle;
	
	var enableBackgroundSpriteDrawing = false;
	if (enableBackgroundSpriteDrawing) {
		if (backgroundCounter == 0) {
			draw_sprite_ext(
				menuBackgroundSprite, 0,
				cameraXTarget,
				cameraYTarget,
				pixelScale,
				pixelScale,
				backgroundAngle,
				make_color_rgb(red, green, blue),
				1.0);
		}
	}