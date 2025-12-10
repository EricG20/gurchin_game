/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 670FD8CF
/// @DnDArgument : "expr" "-1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "y"
y += -1*global.game_speed;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 745A1E4B
/// @DnDArgument : "expr" "-.05*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += -.05*global.game_speed;

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