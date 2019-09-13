///@description Initialize camera
		
	cameraPitch = 160;
	cameraDirection = 90;
	view = 0;
	
	xCoord = 0;
	yCoord = 0;
	
	xPos = 480;
	yPos = 540;
	zPos = -512;
	isMode3D = false;
	cameraXPosition = 480;
	cameraYPosition = 270;
	
	view_enabled = true;
	view_set_visible(view, true);
	camera = camera_create();
	projectionMatrix = matrix_build_projection_perspective_fov(45, view_get_wport(0)/view_get_hport(0), 1, 32000);
	camera_set_proj_mat(camera, projectionMatrix);
	view_set_camera(0, camera);
	camera_set_update_script(camera, cameraUpdate);
	camera_set_view_size(camera, global.xdisplay, global.ydisplay);
	cameraChange();
	
