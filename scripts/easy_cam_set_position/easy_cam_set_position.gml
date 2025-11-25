///@description sets the position of the camera and updates the camera matrix
///@param {id} cam An obj_easy_cam instance
///@param {real} pos_x
///@param {real} pos_y
function easy_cam_set_position(argument0, argument1, argument2) {

	var cam = argument0;
	var pos_x = argument1;
	var pos_y = argument2;

	with(cam){
		x = pos_x;
		y = pos_y;
		must_update_view = true;
	}


}
