/// @description Init 
    //Utills
    if (instance_number(Grid) > 1) {
        instance_destroy();
    }
    if (instance_exists(Controller)) {
        x_view = global.xdisplay;
        y_view = global.ydisplay;
    } else {
        //Throw exception, handle it
        show_debug_message("[WARNING] Controller instance is missing!\\n[GRID] Reinitialize Controller");
        instance_create(0, 0, Controller);
    }

    //Grid parameters
    line_down = (global.xdisplay * 0.9375);
    line_up = line_down/10;
    l_down = line_down/2
    l_up = line_up / 2.0;
	distd = line_down / global.numberOfLanes;
    distu = distd/10;
    margin = round(global.xdisplay * 0.01);
    xx = l_down - l_up;
    yy = y_view-2*margin
    a = (yy/xx);
	gridWidth = 2;
    
    //Color
    color[0] = c_fuchsia;
    color[1] = c_blue;
    
    //Intro
    time = 0;
    intr[0] = 0;   
    intr[1] = 0;
    intr[2] = 0;
    i = 0;
    j = 0;

    for(i = 0; i < 27; i++) {
        spd[i] = 10;
    }
    

