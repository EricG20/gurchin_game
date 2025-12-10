/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 670FD8CF
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "-1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 745A1E4B
/// @DnDInput : 2
/// @DnDArgument : "expr" "-.05*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "scr_approach(x_to_middle, 960, point_distance(x_to_middle,0,960,0)/15)"
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "var_1" "x_to_middle"
alpher += -.05*global.game_speed;
x_to_middle = scr_approach(x_to_middle, 960, point_distance(x_to_middle,0,960,0)/15);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21E887BE
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67648843
	/// @DnDParent : 21E887BE
	instance_destroy();}