// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // Drunkard
global.__objectDepths[1] = 0; // Element
global.__objectDepths[2] = 0; // Shroom
global.__objectDepths[3] = 0; // Jumper
global.__objectDepths[4] = 0; // Explosion
global.__objectDepths[5] = 0; // destroyItem
global.__objectDepths[6] = 0; // Controller
global.__objectDepths[7] = 0; // Boss
global.__objectDepths[8] = 10; // Grid
global.__objectDepths[9] = 0; // Stars
global.__objectDepths[10] = 0; // Emmiter
global.__objectDepths[11] = -9999; // HUD
global.__objectDepths[12] = -99999; // ShaderController
global.__objectDepths[13] = 0; // Gandalf
global.__objectDepths[14] = -20; // Bullet
global.__objectDepths[15] = 0; // Player
global.__objectDepths[16] = 0; // Intro


global.__objectNames[0] = "Drunkard";
global.__objectNames[1] = "Element";
global.__objectNames[2] = "Shroom";
global.__objectNames[3] = "Jumper";
global.__objectNames[4] = "Explosion";
global.__objectNames[5] = "destroyItem";
global.__objectNames[6] = "Controller";
global.__objectNames[7] = "Boss";
global.__objectNames[8] = "Grid";
global.__objectNames[9] = "Stars";
global.__objectNames[10] = "Emmiter";
global.__objectNames[11] = "HUD";
global.__objectNames[12] = "ShaderController";
global.__objectNames[13] = "Gandalf";
global.__objectNames[14] = "Bullet";
global.__objectNames[15] = "Player";
global.__objectNames[16] = "Intro";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for