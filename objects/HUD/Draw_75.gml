    //Middle - up
    var lyrics = global.lyrics;

	if (lyrics[? global.gameTime] != undefined) {
        currentLyric = lyrics[? global.gameTime];
        currentLyric = wordwrapString(currentLyric, 920, "# #", 8);
    }
    drawShakeText(string(currentLyric),
            choose(c_white, c_aqua, c_lime, c_red, c_blue, c_fuchsia, c_yellow),
            fa_middle,
            fa_bottom,
            pixelFontBig,
            480,
            270,
            random(3),
            random(3));

