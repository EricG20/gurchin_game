///@description sets the camera zoom
///@param {id} cam An obj_easy_cam instance
///@param {real} zoom The zoom amount
function easy_cam_set_zoom(argument0, argument1) {

	var cam = argument0;
	var zoom = argument1;

	with(cam){
		cam_zoom = zoom;
		must_update_proj = true;
	}


}
