
#region move camera position towards the target using lerp
var lerp_speed = 0.05;

var cam_x = lerp(obj_easy_cam.x, obj_target.x, lerp_speed);
var cam_y = lerp(obj_easy_cam.y, obj_target.y, lerp_speed);

//use this script to set  camera position. Do not set x/y directly on camera object
easy_cam_set_position(obj_easy_cam, cam_x, cam_y);
#endregion

#region rotate camera based on keys Q/W

var rotate_speed = 1;
var cam_rot = easy_cam_get_rotation(obj_easy_cam);
if(keyboard_check(ord("Q"))){
	cam_rot += rotate_speed;
	easy_cam_set_rotation(obj_easy_cam, cam_rot);
}
if(keyboard_check(ord("W"))){
	cam_rot -= rotate_speed;
	easy_cam_set_rotation(obj_easy_cam, cam_rot);
}

#endregion

#region zoom in/out base on keys A/S

var max_zoom = 5;
var min_zoom = 0.2;
var zoom_speed = 0.01;
var zoom = easy_cam_get_zoom(obj_easy_cam);
if(keyboard_check(ord("A"))){
	zoom = clamp(zoom + zoom_speed, min_zoom, max_zoom);
	easy_cam_set_zoom(obj_easy_cam, zoom);
}
if(keyboard_check(ord("S"))){
	zoom = clamp(zoom - zoom_speed, min_zoom, max_zoom);
	easy_cam_set_zoom(obj_easy_cam, zoom);
}

#endregion
