
    for (i = 0; i < starsAmount; i++) {
        if ((starY[i] > 800) || (starX[i] < -300) || (starX[i] > 1260)) {
            starX[i] = 480 + choose(1, -1) * random(75);
            starY[i] = -100 + random(50);
            if (starX[i] < 480) {
                starSpdX[i] = choose(-0.01, -0.05, -0.1, -0.25, -0.25, -0.3, -0.4, -0.5);
            } else {
                starSpdX[i] = choose(0.01, 0.05, 0.1, 0.25, 0.25, 0.3, 0.4, 0.5);
            }
            starSpdY[i] = choose(0.01, 0.05, 0.1, 0.25, 0.25, 0.3, 0.4, 0.5, 0.75);
            starImg[i] = choose(0, 1, 2, 3, 4);
        }
        starX[i] += starSpdX[i];
        starY[i] += starSpdY[i];
        draw_sprite(starSprite, starImg[i], starX[i], starY[i])
    }

