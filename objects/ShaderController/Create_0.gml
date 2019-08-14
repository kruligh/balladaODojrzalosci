/// @description Application surface
    application_surface_draw_enable(false);
    
    controlA = 0;
    incrementA = 0.01;
    controlB = 0;
    incrementB = 0.01;
    controlC = 0;
    incrementC = 0.01;
    
	
	shockwaveTimer = 0;
	
    shader = -1;
    enum shaders {
        shader_rgb,
        shader_edge_detection,
        shader_wave,
        shader_ripple,
        shader_fish_eye,
		shock_shockwave
    };
	
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
    effectNumber = 0;
    effectTimer = 0;
    effectT = 0;
    
    backgroundCounter = 0;
    
///VR
    if (os_type == os_android) {
        isVR = false;
    } else {
        isVR = false;
    }
    
    virtual_key_add(0, 0, 200, 200, ord("T"));
    
    

