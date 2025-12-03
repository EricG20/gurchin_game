/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7679BDD7
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "200"
if(distance_to_object(o_player) < 200){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5DFE9122
	/// @DnDParent : 7679BDD7
	/// @DnDArgument : "expr" "scr_approach(x,o_player.x, point_distance(x,0,o_player.x,0)*.1*global.game_speed)"
	/// @DnDArgument : "var" "x"
	x = scr_approach(x,o_player.x, point_distance(x,0,o_player.x,0)*.1*global.game_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 20F5FA40
	/// @DnDParent : 7679BDD7
	/// @DnDArgument : "expr" "scr_approach(y,o_player.y, point_distance(y,0,o_player.y,0)*.1*global.game_speed)"
	/// @DnDArgument : "var" "y"
	y = scr_approach(y,o_player.y, point_distance(y,0,o_player.y,0)*.1*global.game_speed);}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1573470C
else{	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 251CB6D9
	/// @DnDParent : 1573470C
	/// @DnDArgument : "script" "check_ground"
	/// @DnDSaveInfo : "script" "check_ground"
	script_execute(check_ground);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1C7CABE2
	/// @DnDParent : 1573470C
	/// @DnDArgument : "script" "movement_stuff"
	/// @DnDSaveInfo : "script" "movement_stuff"
	script_execute(movement_stuff);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EAFEB12
/// @DnDArgument : "expr" ".1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "incr"
incr += .1*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A37DAA6
/// @DnDArgument : "var" "incr"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "500"
if(incr > 500){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0ED0E5DC
	/// @DnDParent : 5A37DAA6
	instance_destroy();}