/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 74529661
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(must_update_proj){$(13_10)	var _inv_zoom = 0;$(13_10)	if(cam_zoom < 0){$(13_10)		_inv_zoom = 0;	$(13_10)	}  else {$(13_10)		_inv_zoom = 1 / cam_zoom;	$(13_10)	}$(13_10)	var _proj_mat = matrix_build_projection_ortho(width * _inv_zoom, height * _inv_zoom, 1, 10000);$(13_10)	camera_set_proj_mat(camera, _proj_mat);$(13_10)	must_update_proj = false;$(13_10)}$(13_10)$(13_10)if(must_update_view){$(13_10)	var _x = x + position_offset_x;$(13_10)	var _y = y + position_offset_y;$(13_10)	var _view_mat = matrix_build_lookat(_x, _y, z, _x, _y, 0, cam_up_x, cam_up_y, 0);$(13_10)	camera_set_view_mat(camera, _view_mat);$(13_10)	must_update_view = false;$(13_10)}$(13_10)"
/// @description Execute Code
if(must_update_proj){
	var _inv_zoom = 0;
	if(cam_zoom < 0){
		_inv_zoom = 0;	
	}  else {
		_inv_zoom = 1 / cam_zoom;	
	}
	var _proj_mat = matrix_build_projection_ortho(width * _inv_zoom, height * _inv_zoom, 1, 10000);
	camera_set_proj_mat(camera, _proj_mat);
	must_update_proj = false;
}

if(must_update_view){
	var _x = x + position_offset_x;
	var _y = y + position_offset_y;
	var _view_mat = matrix_build_lookat(_x, _y, z, _x, _y, 0, cam_up_x, cam_up_y, 0);
	camera_set_view_mat(camera, _view_mat);
	must_update_view = false;
}