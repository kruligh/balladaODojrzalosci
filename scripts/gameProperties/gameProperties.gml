///@function gameProperties()
///@description Mockup, setup global variables, invoked by gml_pragma.

	gml_pragma("global", "gameProperties()");
	
	#region Properties
	global.xdisplay = 960;
	global.ydisplay = 540;
	global.isShaderEffectModifierEnabled = false;
	global.isDebugModeEnabled = false;
	global.isFullscreen = true;
	global.numberOfLanes = 7;
	global.isAudioPlayed = true;
	#endregion
	
	randomize(); 
	
