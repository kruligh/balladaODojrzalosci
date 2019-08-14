
    a += 0.1;
    if (a >= 6.14)
        a = 0;
        
        //lewe oko
    x1 += x1spd;
    y1 = 540+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x1,y1,460,16+5*sin(a),5);
    
    y1 = 560+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x1,y1,460,16+5*sin(a),1);
    
    y1 = 580+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x1,y1,465,18+5*sin(a),1);
    
    y1 = 600+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x1,y1,460,16+5*sin(a),2);
    
    y1 = 620+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x1,y1,470,13+5*sin(a),3);
    
    if (x1 > 600)
        x1spd = -x1spd;
    if (x1 < -301)
        leye = 1;
        
    
        
       //prawe oko
    x2 -= x2spd;
    y2 = 540+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x2,y2,530,16+5*sin(a),5);
    
    y2 = 560+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x2,y2,530,16+5*sin(a),1);
    
    y2 = 580+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x2,y2,535,18+5*sin(a),1);
    
    y2 = 600+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x2,y2,530,16+5*sin(a),2);
    
    y2 = 620+(20*cos(a));
    draw_set_alpha(choose(1,0.9,0.9,0.7));
    draw_set_color(choose(c_red,c_blue,c_yellow,c_fuchsia,c_aqua,c_green,c_black,c_white));
    draw_line_width(x2,y2,540,13+5*sin(a),3);
    
    if (x2 < 360)
        x2spd = -x2spd;
    if (x2 > 1261)
        reye = 1;
        
        
