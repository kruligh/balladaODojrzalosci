/// @description Debug controles
	
	if (global.isDebugModeEnabled) {
	    if (keyboard_check(ord("O"))) {
	        shaderControlA += incrementA;
	        show_debug_message("CONTROL A: " + string(shaderControlA));
	    }
	    if (keyboard_check(ord("L"))) {
	        shaderControlA -= incrementA;
	        show_debug_message("CONTROL A: " + string(shaderControlA));
	    }
	    if (keyboard_check(ord("I"))) {
	        shaderControlB += incrementB;
	        show_debug_message("CONTROL B: " + string(shaderControlB));
	    }
	    if (keyboard_check(ord("K"))) {
	        shaderControlB -= incrementB;
	        show_debug_message("CONTROL B: " + string(shaderControlB));
	    }
	    if (keyboard_check(ord("U"))) {
	        shaderControlC += incrementC;
	        show_debug_message("CONTROL C: " + string(shaderControlC));
	    }
	    if (keyboard_check(ord("J"))) {
	        shaderControlC -= incrementC;
	        show_debug_message("CONTROL C: " + string(shaderControlC));
	    }
	    if keyboard_check_pressed(ord("P")) {
	        show_debug_message(
				"\n\tcontrolA: " + string(shaderControlA) + 
				"\n\tcontrolB: " + string(shaderControlB) + 
				"\n\tcontrolC: " + string(shaderControlC) + 
				"\n\tshaderNumber: " + string(shader) + 
				"\n\tshaderEffect: " + string(effectNumber) + 
				"\n\ttimer: " + string(shaderT));
	    }
    
		if (keyboard_check_pressed(vk_down)) {
			var chosenShader = shaders.shock_shockwave //choose(0, 1, 2, 3, 4);
			var chosenEffect = global.isShaderEffectModifierEnabled ? 
				irandom_range(0, ShaderController.shadersEffects[chosenShader]) :
				0;
			show_debug_message("[Shader] Action performed: " + string(chosenShader) + " " + string(chosenEffect));
			initEffect(chosenEffect, 300, chosenShader);	
		}
	}
	
