
    //Star data
    //x
    //y
    //spd
    //img
    starSprite = sprStar;
    starsAmount = 50;
    for (i = 0; i < starsAmount; i++) {
        starX[i] = 480 + choose(1, -1) * random(75);
        starY[i] = -100 + random(50);
        if (starX[i] < 480) {
            starSpdX[i] = choose(-0.01, -0.05, -0.1, -0.25, -0.3, -0.4, -0.5, -0.75, -1);
        } else {
            starSpdX[i] = choose(0.01, 0.05, 0.1, 0.25, 0.3, 0.4, 0.5, 0.75, 1);
        }
        starSpdY[i] = choose(0.01, 0.05, 0.1, 0.25, 0.3, 0.4, 0.5, 0.75, 1);
        starImg[i] = choose(0, 1, 2, 3, 4);
    }

