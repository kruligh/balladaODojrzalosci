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
                initShader(1.00, 10.00, 0);
                break;
            case 1:
                initShader(10.00, 24.00, 0);
                break;
            case 2:
                initShader(10.00, 19.00, 0);
                break;
        }
        show_debug_message("[SHADER-CONTROLLER] Run Shader Wave");
    }
    
    if (shaderInit == true) {
        //Calc shader & Exit when time pass...
        switch(shaderEffect) {
            case 0:
                shaderT = 0.05;
                shaderControlA += shaderT;
                shaderControlB += shaderT;
                if (shaderControlB > 30.00) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
            case 1:
                shaderT += 0.2;
                shaderControlB += sin(shaderT) * 3;
                if (shaderT > 100) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
            case 2:
                shaderT += 0.1;
                shaderControlB += sin(shaderT) * 4;;
                if (shaderT > 37) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
        }

        //Set renderer
        shader_set(shdWave);
        shader_set_uniform_f(shader_get_uniform(shdWave, "wave_amount"), shaderControlA);
        shader_set_uniform_f(shader_get_uniform(shdWave, "wave_distortion"), shaderControlB);
    }
}
