/// @description Init
    randomize();

    //setResolution();
    global.xdisplay = 960;
    global.ydisplay = 540;

    global.timer = 0;

	
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
    
	ds_map_add(global.lyrics, 2, "dominik krulig bugz");
	ds_map_add(global.lyrics, 4, "ballada o dojrzalosci");
	ds_map_add(global.lyrics, 6, "");
	ds_map_add(global.lyrics, 7, "sluchaj tego");
	ds_map_add(global.lyrics, 8, "");
	
	
ds_map_add(global.lyrics, 10, "podrywalem raz dziewczyne, i mnie pyta");
ds_map_add(global.lyrics, 12, "ile dojrzałości ileee");
ds_map_add(global.lyrics, 13, "? ile ile ile ?");
ds_map_add(global.lyrics, 14, "sobie na 10 dasz synek");
ds_map_add(global.lyrics, 15, "?? ile ??");
ds_map_add(global.lyrics, 16, "co bym zrobil zeby dac punkt wiecej ??");
ds_map_add(global.lyrics, 18, "?? po sikaniu umyl rece ?? ");
ds_map_add(global.lyrics, 19, "?? czy przed tez ??");
// intro2
ds_map_add(global.lyrics, 20, "podrywalem raz dziewczyne, i mnie pyta");
ds_map_add(global.lyrics, 22, "ile dojrzałości ileee");
ds_map_add(global.lyrics, 23, "? ile ile ile ?");
ds_map_add(global.lyrics, 24, "sobie na 10 dasz synek");
ds_map_add(global.lyrics, 25, "?? ?? ??");

// swag

ds_map_add(global.lyrics, 27, "i jej mówie mała osiem");
ds_map_add(global.lyrics, 28, "8888888888888888");
ds_map_add(global.lyrics, 29, "bo jestem gosciem co");
ds_map_add(global.lyrics, 30, "za robote ma forse");
ds_map_add(global.lyrics, 31, "i to sa te pieniadze dobre");
ds_map_add(global.lyrics, 32, "wiesz ja rozmawiam z kompem");
ds_map_add(global.lyrics, 34, "i choc lubię patrzec tez na stroje skape");
ds_map_add(global.lyrics, 36, "jestem gotowy na związek");
ds_map_add(global.lyrics, 38, ""); 


///Messages
global.messages = ds_list_create();
			ds_list_add(global.messages, "");
    randomize();

	bunnyTimer = 0;
	bunnyTime = choose(1, 2, 3) * room_speed;

	global.isTimeRevert = false;
	global.bujanie = false;
	global.showLirycs = true;
