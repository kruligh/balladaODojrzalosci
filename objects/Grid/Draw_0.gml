/// @description Draw grid

    //Set color
    draw_set_color(color[0]);
    draw_set_alpha(0.8);
    
    //Down line
    if (intr[0] < 450)
        intr[0] += 5;
    draw_line((480-intr[0]),y_view-margin,(480+intr[0]),y_view-margin);
    
    //Upper line
    if (intr[0] >= 450)
    {
        if(intr[1] < 45)
            intr[1] += 1;
        draw_line(480-intr[1],margin,480+intr[1],margin);
    }
    
    //Middle lines
    if (intr[1] >= 45)
    {
        if (intr[2] < 540)
            intr[2] += 5;
        for(i = (x_view-line_down)/2; i <= line_down+distd; i+= distd)
        {  
            draw_line(i, intr[2]-margin,(x_view/2)-l_up+j,margin);
            j += distu;
        }
    }
    j = 0;
    i = 0;
    
    //Falling lines
    draw_set_color(color[1])
    if (intr[2] >= 540)
        gridDrawLines();
    draw_set_alpha(1);
   
   

