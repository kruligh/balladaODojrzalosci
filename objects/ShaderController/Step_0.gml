/// @description Debug controles
	
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
        show_debug_message("controlA: " + string(shaderControlA) + "  controlB: " + string(shaderControlB) + " controlC: " + string(shaderControlC) + " shaderNumber: " + string(shader) + " shaderEffect: " + string(effectNumber) + " timer: " + string(shaderT));
    }
    
    if gamepad_button_check_pressed(global.gamepad, gp_face3) {
        isVR = !isVR;
    }


	if (keyboard_check_pressed(vk_down)) {
		var chosenShader = shaders.shock_shockwave //choose(0, 1, 2, 3, 4);
	    var chosenEffect = 0;//irandom_range(0, ShaderController.shadersEffects[chosenShader]);
	    show_debug_message("[Shader] Action performed: " + string(chosenShader) + " " + string(chosenEffect));
	    initEffect(chosenEffect, 300, chosenShader);	
	}
	
	
	