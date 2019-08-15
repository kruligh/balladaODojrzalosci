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
                initShader(160.00, 0.70, 0);
                break;
            case 1:
                initShader(190, 0.80, 0);
                break;
            case 2:
                initShader(260, 0.70, 0);
                break;
        }
        show_debug_message("[SHADER-CONTROLLER] Run Shader Fish Eye");
    }
    
    if (shaderInit == true) {
        //Calc shader & Exit when time pass...
        switch(shaderEffect) {
            case 0:
                shaderT = 0.25;
                shaderControlA += shaderT;
                shaderControlB += shaderT * 0.0066;
                if (shaderControlA > 250.00) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
            case 1:
                shaderT += 0.1;
                shaderControlB += sin(shaderT) * 0.08;
                if (shaderT > 24) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
            case 2:
                shaderT += 0.1;
                shaderControlB += sin(shaderT) * 0.04;;
                if (shaderT > 30) {
                    shaderInit = false;
                    shaderT = 0;
                    return -1;
                }
                break;
        }

        //Set renderer
        shader_set(shdFishEye);
        shader_set_uniform_f(shader_get_uniform(shdFishEye, "apertureAngle"), shaderControlA);
        shader_set_uniform_f(shader_get_uniform(shdFishEye, "lensSize"), shaderControlB);
    }
}
