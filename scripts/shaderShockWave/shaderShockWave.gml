/*
 *Apply this function in PostDraw event
 *argument0 - timer;
 *argument1 - effect;
 */
with(ShaderController) {
    if (shaderInit == false) {
        shaderEffect = argument0;
        shaderTimer = argument1;
		initShader(-0.18, 0.46, 0.26);
        show_debug_message("[SHADER-CONTROLLER] Run Shader RGB");
    }
    
    if (shaderInit == true) {
        //Exit when time pass...
        shaderT += 1;
        if (shaderT > shaderTimer) {
            shaderInit = false;
            shaderT = 0;
            return -1;
        }
        
        //Set renderer
        shader_set(shd_shockwave);
		var_shock_amplitude = 10;
		var_shock_refraction = 0.8;
		var_shock_width = 0.1;
		
		var var_time_var = ShaderController.shockwaveTimer;
		ShaderController.shockwaveTimer += 0.004;
		
		shader_set_uniform_f(shader_get_uniform(shd_shockwave, "time"), var_time_var);
	    shader_set_uniform_f(shader_get_uniform(shd_shockwave, "mouse_pos"), 400, 300);
	    shader_set_uniform_f(shader_get_uniform(shd_shockwave, "resolution"), 800, 600);
		
		shader_set_uniform_f(shader_get_uniform(shd_shockwave,"shock_amplitude"), shaderControlA);
		shader_set_uniform_f(shader_get_uniform(shd_shockwave,"shock_refraction"), shaderControlB);
		shader_set_uniform_f(shader_get_uniform(shd_shockwave,"shock_width"), shaderControlC);
    }
}
