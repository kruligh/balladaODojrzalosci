    
    var vspd = 5;
    
    if (time <= 240)
        time += 1;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
            spd[i] = 10;
    if (time >= 30)
        i = 1;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

    if (time >= 60)
        i = 2;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

    if (time >= 90)
        i = 3;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

    if (time >= 120)
        i = 4;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

    if (time >= 150)
        i = 5;
        
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

    if (time >= 180)
        i = 6;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;
    
    if (time >= 210)
        i = 7;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;
    
    if (time >= 240)
        i = 8;
    spd[i] += ((1/yy)*power((spd[i]+1),2)-(1/yy)*power((spd[i]-1),2))*vspd/5;
    draw_line((x_view/2)-round(spd[i]/a)-l_up+margin,spd[i],(x_view/2)+round(spd[i]/a)+l_up-margin,spd[i]);
    if (spd[i] > 530)
        spd[i] = 10;

