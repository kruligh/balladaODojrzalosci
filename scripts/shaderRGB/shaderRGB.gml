/*
 *Apply this function in PostDraw event
 *argument0 - timer;
 *argument1 - effect;
 */
with(ShaderController) {
    if (shaderInit == false) {
        shaderEffect = argument0;
        shaderTimer = argument1;
        switch(shaderEffect) {
            case 0:
                initShader(-0.18, 0.46, 0.26);
                break;
            case 1:
                initShader(0.23, -0.16, 0.09);
                break;
            case 2:
                initShader(0.13, -0.03, 0.30);
                break;
            case 3:
                initShader(-0.05, 0.44, -0.18);
                break;
        }
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
        shader_set(shdRGB);
        shader_set_uniform_f(shader_get_uniform(shdRGB, "Rpos"), shaderControlA);
        shader_set_uniform_f(shader_get_uniform(shdRGB, "Gpos"), shaderControlB);
        shader_set_uniform_f(shader_get_uniform(shdRGB, "Bpos"), shaderControlC);
    }
}
