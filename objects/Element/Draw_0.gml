
	image_alpha = sprite_get_height(sprite_index) / 255.0;
	shader_set(shdTilt);
    draw_sprite(sprite_index, image_index, x, y);
	shader_reset();
    elementDrawLines(message);

