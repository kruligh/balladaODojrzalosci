
	global.cameraProjectionMatrix = matrix_build_projection_ortho(
		global.xdisplay, 
		global.ydisplay, 
		1, 
		32000);

	camera_set_proj_mat(global.camera, global.cameraProjectionMatrix);
	view_set_camera(0, global.camera);
	camera_set_view_size(global.camera, global.xdisplay, global.ydisplay);
	camera_set_view_pos(global.camera, 0, 0);
	camera_set_update_script(global.camera, cameraUpdate);
	
