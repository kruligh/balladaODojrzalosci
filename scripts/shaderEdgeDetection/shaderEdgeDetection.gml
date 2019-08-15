/*
 *Apply this function in PostDraw event
 *argument0 - timer;
 *argument1 - effect;
 */
with(ShaderController) {
    if (shaderInit == false) {
        shaderEffect = argument0;
        shaderTimer = argument1;
        initShader(0, 0, 0);
        show_debug_message("[SHADER-CONTROLLER] Run Shader Edge Detection");
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
        shader_set(shdEdgeDetection);
    }
}
