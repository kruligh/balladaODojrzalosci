
    var pointAX1 = 480 - round(430 / Grid.a) - Grid.l_up - Grid.margin;
    var pointAX2 = 480 + round(430 / Grid.a) + Grid.l_up + Grid.margin;
    var pointBX1 = 480 - round(366 / Grid.a) - Grid.l_up - Grid.margin;
    var pointBX2 = 480 + round(366 / Grid.a) + Grid.l_up + Grid.margin;
    draw_line(pointAX1, 430, pointAX2, 430);
    draw_line(pointBX1, 366, pointBX2, 366);
    draw_line(pointAX1, 430, pointBX1, 366);
    draw_line(pointAX2, 430, pointBX2, 366);

    
