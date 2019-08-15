/// Takie jaja sa w GMie, ze jak wywolujesz funkcje to jako tako jest ona wywolywana z kontekstem "this" tego, kto ja wywolywal.
/// Dlatego te wszystkie niezdefiniowane zmienne dzialaja, bo boss_02_line jest wywolywane tylko w gandalfie, a on te pola ma.

    a += 0.1;
    if (a >= pi * 2) {
        a = 0;
	}
        
	#region Left eye
    x1 += x1spd; // wtf
	var xEyeMargin = 25; // magic number, distance from sprite origin to eye.
	var yEyeMargin = 37; // magic number, distance from sprite origin to eye.
	var linesSize = 5; // magic number, number of LAZER RAYS per eye!!!
	var linesDistance = 40; // magic number
	var screenHeight = 540 // wtf, magic number;
	for (var index = 0; index < linesSize; index++) {
		y1 = screenHeight + index * linesDistance + (20 * cos(a)); 
		draw_set_alpha(choose(1.0, 0.9, 0.9, 0.7));	
		draw_set_color(choose(
			c_red, 
			c_blue, 
			c_yellow, 
			c_fuchsia, 
			c_aqua, 
			c_green, 
			c_black, 
			c_white));
		// If you want to use custom colors, you can use make function ```make_color_rgb(255, 255, 255)```.
		draw_line_width(x1, y1, x - xEyeMargin, y - yEyeMargin + 3 * sin(a), 5);	
	}
	
	// ??? chyba to konczy wywolywanie lasera, flaga leye, leye to chyba boolean
    if (x1 > 600) {
        x1spd = -x1spd;
	}
	
    if (x1 < -301) {
        leye = 1;
	}
	#endregion
	
	#region Right eye
	x2 -= x2spd; // wtf
	var xEyeMargin = 25; // magic number, distance from sprite origin to eye.
	var yEyeMargin = 37; // magic number, distance from sprite origin to eye.
	var linesSize = 5; // magic number, number of LAZER RAYS per eye!!!
	var linesDistance = 40; // magic number
	var screenHeight = 540 // wtf, magic number;
	for (var index = 0; index < linesSize; index++) {
		y2 = screenHeight + index * linesDistance + (20 * cos(a)); 
		draw_set_alpha(choose(1.0, 0.9, 0.9, 0.7));	
		draw_set_color(choose(
			c_red, 
			c_blue, 
			c_yellow, 
			c_fuchsia, 
			c_aqua, 
			c_green, 
			c_black, 
			c_white));
		// If you want to use custom colors, you can use make function ```make_color_rgb(255, 255, 255)```.
		draw_line_width(x2, y2, x + xEyeMargin, y - yEyeMargin + 3 * sin(a), 5);	
	}
	
	// ??? chyba to konczy wywolywanie lasera, flaga reye, reye to chyba boolean
	if (x2 < 360) {
        x2spd = -x2spd;
	}
    if (x2 > 1261) {
        reye = 1;
	}
	#endregion