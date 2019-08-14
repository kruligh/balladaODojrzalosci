/// @description Init
    randomize();

    //setResolution();
    global.xdisplay = 960;
    global.ydisplay = 540;

    global.timer = 0;
    
	huj = "dupa";
	
	window_set_fullscreen(true);
    
    //set grid points 
    var marginUp = 435;
    var distanceUp = 90 / 7;
    var offsetUp = distanceUp / 2;
    for (i = 0; i < 7; i++) {
        pointUp[i] = (i * distanceUp) + marginUp + offsetUp;
    }
    
    var marginDown = 30;
    var distanceDown = 900 / 7;
    var offsetDown = distanceDown / 2;
    for (i = 0; i < 7; i++) {
        pointDown[i] = (i * distanceDown) + marginDown + offsetDown;
    }
    
    var pointSubtraction = 520;
    var pointUpY = 10;
    for (i = 0; i < 7; i++) {
        if (i != 3) {
            pointA[i] = pointSubtraction / (pointDown[i] - pointUp[i]);
            pointB[i] = -1 * pointA[i] * pointUp[i] + pointUpY;
        } else {
            pointA[i] = 0;
            pointB[i] = 0;
        }
    }
    
    viewAngleSpd = 0.5;
    viewAngleStep = 10;
    viewAnglePlayer = 0;
    viewAngleShader = 0;
    
    show_debug_overlay(true);
    
    isGandalf = false;
    
    viewAngleAmbient = 0;
    viewAngleFactor = 1 
    viewAngleFactorTimer  = 0;

///Game

    //Initialize game
    gridInstance = instance_create(0, 0, Grid);
    playerInstance = instance_create(0, 0, Player);
    emmiterInstance = instance_create(0, 0, Emmiter);
    emmiterInstance.controllerInstance = self;
    hudInstance = instance_create(0, 0, HUD);
    starsInstance = instance_create(0, 0, Stars);
    shaderController = instance_create(0, 0, ShaderController)
    
    show_debug_message("[CONTROLLER] Grid instance created");
    show_debug_message("[CONTROLLER] Player instance created");
    show_debug_message("[CONTROLLER] Emmiter instance created");
    show_debug_message("[CONTROLLER] HUD instance created");
    show_debug_message("[CONTROLLER] Stars instance created");
    show_debug_message("[CONTROLLER] ShaderController instance created");
    
    //Init cd...
    global.stage = 0;
    global.gameTime = 0;
    ticker = 0;
    bossController = false;
    bossInit = false;
    bossInstance = noone;
    bossTime = 0;
    bossTimeMax = 0;
    
    global.hapiness = 0;
    global.hapinessFactor = 0.00;
    
    global.life = 0;
    global.lifeFactor = 0.00;

///Player

    global.playerLevel = 1;

    

///Audio
    audio_play_sound(ostBugz, 100, false);
    
    #region Html5
	
    if (!audio_is_playing(ostBugz)) {
        audio_play_sound(ostBugz, 100, false);    
    }
	
	#endregion

///VR
    vrAngleX = 0;
    vrAngleY = 0;
    vrAngleZ = 0;
    accAngleX = 0;
    accAngleY = 0;
    accAngleZ = 0;

///Lyrics

    global.lyrics = ds_map_create();
    
    ds_map_add(global.lyrics, 10, "podrywałem raz dziewczyne, i mnie pyta ile dojrzałości ileee");
	ds_map_add(global.lyrics, 12, "se na 10 dasz synek ile");
	ds_map_add(global.lyrics, 14, "przekaz przyszedlem dac do kabiny");
	ds_map_add(global.lyrics, 16, "podrywałem raz dziewczyne, i mnie pyta ile dojrzałości ileee");



///Messages

    randomize();

	bunnyTimer = 0;
	bunnyTime = choose(1, 2, 3) * room_speed;

	global.isTimeRevert = false;
	global.bujanie = false;
