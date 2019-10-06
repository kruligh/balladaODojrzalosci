///@description Renderer

	if (!surface_exists(application_surface)) {
		exit;
	}

	#region Dispatch background effect
    if (backgroundCounter == 0) {
        __background_set_colour(backgroundColor);
        //__background_set_showcolour(true);
    } else {
        //__background_set_showcolour(false);
    }
	#endregion
    
	#region Dispatch Shader 
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
	#endregion

    #region Render Application Surface
    if (isVR) {
        var halfWidth = display_get_width() * 0.5;
        draw_surface_stretched(application_surface, 
			0, 0, 
			halfWidth, display_get_height());
        draw_surface_stretched(application_surface, 
			halfWidth, 0, 
			halfWidth, display_get_height());
    } else {
		
		if (!surface_exists(gameSurface)) {
			gameSurface = surface_create(global.xdisplay, global.ydisplay);	
		}
		
		surface_set_target(gameSurface);
        draw_surface_stretched(application_surface, 0, 0, global.xdisplay, global.ydisplay);
		surface_reset_target();
    }
    #endregion
	
    shader_reset();
	
	
	shaderUpscaling5XBRAUniformResolution = shader_get_uniform(shaderUpscaling5XBRA, "resolution");
	shaderUpscaling5XBRAUniformBrightness = shader_get_uniform(shaderUpscaling5XBRA, "brightness");
	shaderUpscaling5XBRAUniformContrast = shader_get_uniform(shaderUpscaling5XBRA, "contrast");
	
	shader_set(shaderUpscaling5XBRA);
	shader_set_uniform_f(shaderUpscaling5XBRAUniformResolution, global.xdisplay, global.ydisplay);
	shader_set_uniform_f(shaderUpscaling5XBRAUniformBrightness, 0.0);
	shader_set_uniform_f(shaderUpscaling5XBRAUniformContrast, 0.0);
	
	var verticalSurfaces = 4;
	var horizontalSurfaces = 4;
	var surfaceWidth = global.xdisplay / horizontalSurfaces;
	var surfaceHeight = global.ydisplay / verticalSurfaces;
	var surfacesMatrix = array_create(
		horizontalSurfaces, 
		array_create(
			verticalSurfaces, 
			surface_create(
				surfaceWidth,
				surfaceHeight)
		));
	
	for (var yIndex = 0; yIndex < verticalSurfaces; yIndex++) {
		for (var xIndex = 0; xIndex < horizontalSurfaces; xIndex++) {
			var surfaceXOffset = surfaceWidth * xIndex;
			var surfaceYOffset = surfaceHeight * yIndex;
			draw_surface_stretched(
				gameSurface, 
				surfaceXOffset, 
				surfaceYOffset, 
				surfaceWidth, 
				surfaceHeight);			
		}
	}
	
	shader_reset();
	
