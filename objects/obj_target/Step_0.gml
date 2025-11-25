/// @description Insert description here
// You can write your code in this editor

var rotation_speed = 2;
if(keyboard_check(vk_left)){
	image_angle += rotation_speed;	
}
if(keyboard_check(vk_right)){
	image_angle -= rotation_speed;	
}

var move_speed = 10;
if(keyboard_check(vk_up)){
	x += lengthdir_x(move_speed, image_angle);
	y += lengthdir_y(move_speed, image_angle);
}
else if(keyboard_check(vk_down)){
	 x -= lengthdir_x(move_speed, image_angle);
	 y -= lengthdir_y(move_speed, image_angle);
}

