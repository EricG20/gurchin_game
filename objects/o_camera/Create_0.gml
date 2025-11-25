/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 072A10F7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)#region init properties$(13_10)$(13_10)var _surf_w = surface_get_width(application_surface);$(13_10)var _surf_h = surface_get_height(application_surface);$(13_10)var _aspect = _surf_w / _surf_h;$(13_10)width = 0;$(13_10)height = 0;$(13_10)switch(size_preference){$(13_10)	case easy_cam_size_type.use_base_width:$(13_10)		width = base_width;$(13_10)		height = width / _aspect;$(13_10)	break;$(13_10)	case easy_cam_size_type.use_base_height:$(13_10)		height = base_height;$(13_10)		width = height * _aspect;$(13_10)	break;$(13_10)	case easy_cam_size_type.use_application_surface_size:$(13_10)		width = _surf_w;$(13_10)		height = _surf_h;$(13_10)	break;$(13_10)}$(13_10)$(13_10)cam_rot = 0;$(13_10)cam_up_x = 0;$(13_10)cam_up_y = 1;$(13_10)$(13_10)cam_zoom = 1;$(13_10)$(13_10)x = width * 0.5;$(13_10)y = height * 0.5;$(13_10)z = -100;$(13_10)#endregion$(13_10)$(13_10)#region setup camera$(13_10)camera = camera_create();//camera_create_view(0, 0, room_width, room_height);$(13_10)$(13_10)var proj_mat = matrix_build_projection_ortho(width, height, 1, 10000);$(13_10)camera_set_proj_mat(camera, proj_mat);$(13_10)$(13_10)var view_mat = matrix_build_lookat(x, y, z, x, y, 0, cam_up_x, cam_up_y, 0);$(13_10)camera_set_view_mat(camera, view_mat);$(13_10)$(13_10)view_camera[view_camera_index] = camera;$(13_10)$(13_10)must_update_view = false;$(13_10)must_update_proj = false;$(13_10)#endregion$(13_10)$(13_10)#region screen shake properties$(13_10)shake_amount = 0;$(13_10)shake_duration = 0;$(13_10)$(13_10)position_offset_x = 0;$(13_10)position_offset_y = 0;$(13_10)#endregion"
/// @description Execute Code
#region init properties

var _surf_w = surface_get_width(application_surface);
var _surf_h = surface_get_height(application_surface);
var _aspect = _surf_w / _surf_h;
width = 0;
height = 0;
switch(size_preference){
	case easy_cam_size_type.use_base_width:
		width = base_width;
		height = width / _aspect;
	break;
	case easy_cam_size_type.use_base_height:
		height = base_height;
		width = height * _aspect;
	break;
	case easy_cam_size_type.use_application_surface_size:
		width = _surf_w;
		height = _surf_h;
	break;
}

cam_rot = 0;
cam_up_x = 0;
cam_up_y = 1;

cam_zoom = 1;

x = width * 0.5;
y = height * 0.5;
z = -100;
#endregion

#region setup camera
camera = camera_create();//camera_create_view(0, 0, room_width, room_height);

var proj_mat = matrix_build_projection_ortho(width, height, 1, 10000);
camera_set_proj_mat(camera, proj_mat);

var view_mat = matrix_build_lookat(x, y, z, x, y, 0, cam_up_x, cam_up_y, 0);
camera_set_view_mat(camera, view_mat);

view_camera[view_camera_index] = camera;

must_update_view = false;
must_update_proj = false;
#endregion

#region screen shake properties
shake_amount = 0;
shake_duration = 0;

position_offset_x = 0;
position_offset_y = 0;
#endregion