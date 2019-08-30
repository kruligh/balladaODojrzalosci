/// @description Application surface

    application_surface_draw_enable(false);
	surface_resize(application_surface, global.xdisplay, global.ydisplay);
	
	enum shaders {
        shader_rgb,
        shader_edge_detection,
        shader_wave,
        shader_ripple,
        shader_fish_eye,
		shock_shockwave
    };
	
	shader = -1;
	shadersEffects[0] = 3;
    shadersEffects[1] = 1;
    shadersEffects[2] = 2;
    shadersEffects[3] = 2;
    shadersEffects[4] = 2;
	shaderControlA = 0;
    shaderControlB = 0;
    shaderControlC = 0;
	shaderInit = false;
    shaderTimer = 0;
    shaderT = 0;
    controlA = 0;
    controlB = 0;
    controlC = 0;
	incrementA = 0.01;
    incrementB = 0.01;
    incrementC = 0.01;
	shockwaveTimer = 0;
    effectNumber = 0;
    effectTimer = 0;
    effectT = 0;   
    backgroundCounter = 0;
	backgroundColor = make_color_rgb(0, 0, 0);
    
///VR
	isVR = os_type == os_android;
	
