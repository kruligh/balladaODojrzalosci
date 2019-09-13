
    image_speed = 0.5;
	image_alpha = sprite_get_height(sprite_index) / 255.0;
	shader_set(shdTilt)
    draw_self();
	shader_reset();
    if (image_index > image_number - 1) {
        instance_destroy(self);
    }

