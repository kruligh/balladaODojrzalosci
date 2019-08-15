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
    draw_set_color(argument1);
    draw_set_halign(argument2);
    draw_set_valign(argument3);
    draw_set_font(argument4);
    draw_text(argument5 + argument7,argument6 + argument8, string_hash_to_newline(argument0));

