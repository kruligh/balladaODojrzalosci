///@function gameProperties()
///@description Mockup, setup global variables, invoked by gml_pragma.

	gml_pragma("global", "gameProperties()");
	
	#region Properties
	global.xdisplay = 800;
	global.ydisplay = 600;
	global.isShaderEffectModifierEnabled = false;
	global.isDebugModeEnabled = true;
	global.isFullscreen = false;
	global.numberOfLanes = 6;
	#endregion
	
	randomize(); 
	
