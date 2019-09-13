///@description Mouse look

	if keyboard_check_pressed(vk_f5) {
		if (!isMode3D) {
			xPos = 470;
			yPos = 684;	
		} else {
			xPos = cameraXPosition;
			yPos = cameraYPosition;
		}
		isMode3D = !isMode3D;
		cameraChange();
	}

	if (isMode3D) {
		cameraDirection -= (display_mouse_get_x() - display_get_width() / 2) / 10;
		cameraPitch += (display_mouse_get_y() - display_get_height() / 2) / 10;
	
		display_mouse_set(display_get_width() / 2, display_get_height() / 2);

		var spd = 8;
		if (keyboard_check(ord("W"))) {
			xPos += dcos(cameraDirection) * spd;
			yPos -= dsin(cameraDirection) * spd;
		}
		if (keyboard_check(ord("A"))) {
			xPos -= dsin(cameraDirection) * spd;
			yPos -= dcos(cameraDirection) * spd;
		}
		if (keyboard_check(ord("S"))) {
			xPos -= dcos(cameraDirection) * spd;
			yPos += dsin(cameraDirection) * spd;
		}
		if (keyboard_check(ord("D"))) {
			xPos += dsin(cameraDirection) * spd;
			yPos += dcos(cameraDirection) * spd;
		}
		if (keyboard_check(ord("E"))) {
			zPos += spd;
		}
		if (keyboard_check(ord("Q"))) {
			zPos -= spd;
		}
		
		cameraXPosition = xPos
		cameraYPosition = yPos
	} else {
		var cameraX = camera_get_view_x(camera);
		var cameraY = camera_get_view_y(camera);

		var isConsoleDisplayed = false;
		
		if (!isConsoleDisplayed) {
			
			var spd = 1 //* getDeltaTimeValue();
			if (keyboard_check(vk_shift)) {
				spd = 16 ;
			}
			
			if (keyboard_check(ord("W"))) {
				yPos -= spd;
			}
		
			if (keyboard_check(ord("A"))) {
				xPos -= spd;
			}

			if (keyboard_check(ord("S"))) {
				yPos += spd;
			}
		
			if (keyboard_check(ord("D"))) {
				xPos += spd;
			}
		}

		cameraXPosition = xPos;
		cameraYPosition = yPos;
		
		camera_set_view_pos(camera, cameraXPosition, cameraYPosition);
		xPos = 0;
		yPos = 0;
	}
	
	xCoord = camera_get_view_x(camera);
	yCoord = camera_get_view_y(camera);


show_debug_message(string(xPos) + " " + string(yPos));
