/// @description Drag the object
// Start dragging
if (mouse_check_button_pressed(mb_left) && !isBeingDragged && point_distance(x, y, mouse_x, mouse_y) < 4) {
	isBeingDragged = true;
}

// Stop dragging
if (mouse_check_button_released(mb_left)) isBeingDragged = false;

// Update position
if (isBeingDragged) {
	x = mouse_x;
	y = mouse_y;
}
