/// @description Draw grid

    //Set color
    draw_set_color(color[0]);
    draw_set_alpha(0.8);
    
    //Down line
    if (intr[0] < ((global.xdisplay / 2.0) * 0.9375)) {
        intr[0] += 5;
	}
	
    draw_line(
		((global.xdisplay / 2.0) - intr[0]),
		global.ydisplay - abs(margin),
		((global.xdisplay / 2.0) + intr[0]),
		global.ydisplay - abs(margin));
    
    //Upper line
    if (intr[0] >= ((global.xdisplay / 2.0) * 0.9375)) {
        if(intr[1] < ((global.xdisplay / 2.0) * 0.09375)) {
            intr[1] += 1;
		}
        draw_line(
			(global.xdisplay / 2.0) - intr[1],
			margin,
			(global.xdisplay / 2.0) + intr[1],
			margin);
    }
    
    //Middle lines
    if (intr[1] >= ((global.xdisplay / 2.0) * 0.09375))
    {
        if (intr[2] < global.ydisplay)
            intr[2] += 5;
        for(i = (x_view-line_down)/2; i <= line_down+distd; i+= distd)
        {  
            draw_line(
				i, 
				intr[2] - margin,
				(x_view/2) - l_up + j,
				margin);
            j += distu;
        }
    }
    j = 0;
    i = 0;
    
    //Falling lines
    draw_set_color(color[1])
    if (intr[2] >= global.ydisplay)
        gridDrawLines();
    draw_set_alpha(1);
   
   

