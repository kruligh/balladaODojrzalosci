
    var pointAX1 = (global.xdisplay / 2.0) - round(((global.xdisplay / 2.0) * 0.89) / Grid.a) - Grid.l_up - Grid.margin;
    var pointAX2 = (global.xdisplay / 2.0) + round(((global.xdisplay / 2.0) * 0.89) / Grid.a) + Grid.l_up + Grid.margin;
    var pointBX1 = (global.xdisplay / 2.0) - round(((global.xdisplay / 2.0) * 0.7625) / Grid.a) - Grid.l_up - Grid.margin;
    var pointBX2 = (global.xdisplay / 2.0) + round(((global.xdisplay / 2.0) * 0.7625) / Grid.a) + Grid.l_up + Grid.margin;
    draw_line(pointAX1, ((global.ydisplay / 1.0) * 0.89), pointAX2, ((global.ydisplay / 1.0) * 0.89));
    draw_line(pointBX1, ((global.ydisplay / 1.0) * 0.7625), pointBX2, ((global.ydisplay / 1.0) * 0.7625));
    draw_line(pointAX1, ((global.ydisplay / 1.0) * 0.89), pointBX1, ((global.ydisplay / 1.0) * 0.7625));
    draw_line(pointAX2, ((global.ydisplay / 1.0) * 0.89), pointBX2, ((global.ydisplay / 1.0) * 0.7625));

    
