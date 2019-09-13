///@function cameraChange()
///@description Change Camera between 2D and 3D mode.

	var camera = global.camera;
	if (camera != 0) {
		camera_destroy(view_camera[camera.view]);
	
		if (camera.isMode3D) {
			var cameraReference = camera_create();
		
			view_enabled = true;
			view_set_visible(camera.view, true);
		
			camera.camera = cameraReference;
			camera.projectionMatrix = matrix_build_projection_perspective_fov(
				45, 
				global.xdisplay / global.ydisplay, 
				32, 
				32000);

			camera_set_proj_mat(cameraReference, camera.projectionMatrix);
			view_set_camera(camera.view, cameraReference);
			camera_set_update_script(cameraReference, cameraUpdate);
		} else {
			var cameraReference = camera_create();
			camera.camera = cameraReference;
			camera.projectionMatrix = matrix_build_projection_ortho(
				global.xdisplay, 
				global.ydisplay, 
				1, 
				32000);

			camera_set_proj_mat(cameraReference, camera.projectionMatrix);
			view_set_camera(camera.view, cameraReference);
			camera_set_view_size(cameraReference, global.xdisplay, global.ydisplay);
			camera_set_view_pos(cameraReference, camera.cameraXPosition, camera.cameraYPosition);
			camera_set_update_script(cameraReference, cameraUpdate);
		}	
	}
	
