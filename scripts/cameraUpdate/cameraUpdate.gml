///@function cameraUpdate()
///@description Matrix builder, used when Camera is in 3D mode.

	var camera = global.camera;
	
	if (camera.isMode3D) {
		var matrix = matrix_build_lookat(
			camera.xPos, camera.yPos, camera.zPos,
			camera.xPos + dcos(camera.cameraDirection), 
			camera.yPos - dsin(camera.cameraDirection), 
			camera.zPos - dcos(camera.cameraPitch) * 2, 
			0, 0, 1);
		
		camera_set_view_mat(view_camera[camera.view], matrix);	
	}
	
