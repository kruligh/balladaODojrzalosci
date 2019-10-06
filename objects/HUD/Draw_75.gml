    //Middle - up
    var lyrics = global.lyrics;

	if (lyrics[? global.gameTime] != undefined) {
        currentLyric = lyrics[? global.gameTime];
        currentLyric = wordwrapString(currentLyric, 920, "# #", 8);
    }
	
	if(global.showLirycs) {
	
    drawShakeText(string(currentLyric),
            [ c_white, c_aqua, c_lime, c_red, c_blue, c_fuchsia, c_yellow ],
            fa_middle,
            fa_bottom,
            pixelFontBig,
            (global.xdisplay / 2.0),
            (global.ydisplay / 2.0),
            random(3),
            random(3));
	}
