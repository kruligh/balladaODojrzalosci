/// @description Init 
    //Utills
    if (instance_number(HUD) > 1) {
        instance_destroy();
    }
    if (instance_exists(Controller)) {
        x_view = global.xdisplay;
        y_view = global.ydisplay;
    } else {
        //Throw exception, handle it
        show_debug_message("[WARNING] Controller instance is missing!\\n[HUD] Reinitialize Controller");
        instance_create(0, 0, Controller);
    }
    
    panelLeft = sprPanelLeft;
    panelRight = sprPanelRight;
    barLeft = sprBarLeft;
    barRight = sprBarRight;
    posX = sprite_get_width(panelLeft) * 0.5;
    posY = sprite_get_height(panelLeft) * 0.5 + 100;
    panelAlpha = 1.0;
    barAlpha = 1.0;
    viewRotate = camera_get_view_angle(global.camera.camera);
    test = 0;
    barMax = sprite_get_height(barLeft);
    
    
    
    
    
    hapinessTimer = 0;
    hapinessTimerTarget = 0;
    hapinessDirection = 0;
    lifeTimer = 0;
    lifeTimerTarget = 0;
    lifeDirection = 0;
    
    currentLyric = "";

