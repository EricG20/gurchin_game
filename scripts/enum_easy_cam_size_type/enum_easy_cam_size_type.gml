function enum_easy_cam_size_type() {
	//use this to set the "size_preference" variable on the obj_easy_cam object
	//setting it to easy_cam_size_type.use_base_width will set the camera width to the value specified in base_width.
	//it will calculate the correct height to keep the aspect ratio
	//setting it to easy_cam_size_type.use_base_height will set the camera height to the value specified in base_height. 
	//it will calculate the correct width to keep the aspect ration
	//setting it to easy_cam_size_type.use_application_surface_size will set the camera size to the current application surface.
	//this will use a 1/1 pixel to camera camera size

	enum easy_cam_size_type{
		use_base_width,
		use_base_height,
		use_application_surface_size
	}


}
