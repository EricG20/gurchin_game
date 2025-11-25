/// @description Insert description here
// You can write your code in this editor

var num_bombs = 15;
var spawn_area = 1000;

var center_x = obj_target.x;
var center_y = obj_target.y;

for(var i=0; i<num_bombs; i++){
	var _x = random_range(-1, 1) * spawn_area + center_x;
	var _y = random_range(-1, 1) * spawn_area + center_y;
	instance_create_layer(_x, _y, layer, obj_bomb);
}
