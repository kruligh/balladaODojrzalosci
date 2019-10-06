/*
 * argument0 - text
 * argument1 - color
 * argument2 - halign
 * argument3 - valign
 * argument4 - font
 * argument5 - pos x
 * argument6 - pos y
 * argument7 - shakeX
 * argument8 - shakeY
 */
  
	var colors = argument1; // array
	var instance = id;

	if (!variable_instance_exists(instance, "colorTextTimer")) {
		variable_instance_set(instance, "colorTextTimer", 0);
		variable_instance_set(instance, "currentColorIndex", floor(random(array_length_1d(colors) - 1)));
	}
	
	instance.colorTextTimer++;
	if (instance.colorTextTimer > 10) {
		instance.colorTextTimer = 0;
		instance.currentColorIndex++;
	}
	
	if (instance.currentColorIndex == array_length_1d(colors)) {
		instance.currentColorIndex = 0;
	}
	
    draw_set_color(colors[instance.currentColorIndex]);
    draw_set_halign(argument2);
    draw_set_valign(argument3);
    draw_set_font(argument4);
    draw_text(argument5 + argument7,argument6 + argument8, string_hash_to_newline(argument0));

