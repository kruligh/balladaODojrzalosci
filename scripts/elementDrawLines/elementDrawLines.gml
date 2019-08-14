
//    draw_self();
    if (position <= 3) {
        draw_set_color(c_red)
        var pointX1 = 0;
        var pointY1 = self.y;
        var pointX2 = 480 - round(spd / Grid.a) - Grid.l_up - Grid.margin;
        var pointY2 = self.y;
        draw_line(pointX1, pointY1, pointX2, pointY2);
        var textMargin = 120;
        var text = argument0;
        drawShakeText(  argument0,
                        choose(c_white, c_fuchsia, c_yellow),
                        fa_right,
                        fa_bottom,
                        pixelFont,
                        pointX2 - textMargin,
                        pointY2,
                        random(3),
                        random(3));
    } else {
        draw_set_color(c_red)
        var pointX1 = 960;
        var pointY1 = self.y;
        var pointX2 = 480 + round(spd / Grid.a) + Grid.l_up + Grid.margin;
        var pointY2 = self.y;
        draw_line(pointX1, pointY1, pointX2, pointY2);
        
        var textMargin = 120;
        var text = argument0;
        drawShakeText(  argument0,
                        choose(c_white, c_fuchsia, c_yellow),
                        fa_left,
                        fa_bottom,
                        pixelFont,
                        pointX2 + textMargin,
                        pointY2,
                        random(3),
                        random(3));
    }
    

    
    

    
