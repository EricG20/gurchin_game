
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

