    
    if (backgroundCounter == 0) {
        __background_set_colour( c_black );
        __background_set_showcolour( true );
    } else {
        __background_set_showcolour( false );
    }
    
    switch (shader) {
        case shaders.shader_rgb:
            shaderRGB(effectNumber, effectTimer);
            effectT += 1;
            if (effectT > effectTimer) {
                resetShader();
            }
            break;
        case shaders.shader_ripple:
            if (shaderRipple(effectNumber, effectTimer) == -1) {
                resetShader();
            }
            break;
        case shaders.shader_edge_detection:
            if (shaderEdgeDetection(effectNumber, effectTimer) == -1) {
                resetShader();
            }
            break;
        case shaders.shader_wave:
            if (shaderWave(effectNumber, effectTimer) == -1) {
                resetShader();
            }
            break;
        case shaders.shader_fish_eye:
            if (shaderFishEye(effectNumber, effectTimer) == -1) {
                resetShader();
            }
            break;
		case shaders.shock_shockwave:
			if (shaderShockWave(effectNumber, effectTimer) == -1) {
				resetShader();	
			}
			break;
    }

    //Render
    if (isVR == true) {
        var halfWidth = display_get_width() * 0.5;
        draw_surface_stretched(application_surface, 0, 0, halfWidth, display_get_height());
        draw_surface_stretched(application_surface, halfWidth, 0, halfWidth, display_get_height());
    } else {
        draw_surface_stretched(application_surface, 400, 0, 1280, 960);
    }
    
    shader_reset();

