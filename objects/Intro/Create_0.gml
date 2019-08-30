
	show_debug_overlay(global.isDebugModeEnabled);
	display_set_gui_size(global.xdisplay, global.ydisplay);
	window_set_size(global.xdisplay, global.ydisplay);
	window_set_fullscreen(global.isFullscreen);
	surface_resize(application_surface, global.xdisplay, global.ydisplay);
	
	view_enabled = true;
	view_set_wport(view_current, global.xdisplay);
	view_set_hport(view_current, global.ydisplay);
	
