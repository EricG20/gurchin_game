/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 670FD8CF
/// @DnDInput : 4
/// @DnDArgument : "expr" "vsp*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "hsp*global.game_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "hsp*power(.9,global.game_speed)"
/// @DnDArgument : "expr_3" "vsp*power(.9,global.game_speed)"
/// @DnDArgument : "var" "y"
/// @DnDArgument : "var_1" "x"
/// @DnDArgument : "var_2" "hsp"
/// @DnDArgument : "var_3" "vsp"
y += vsp*global.game_speed;
x += hsp*global.game_speed;
hsp = hsp*power(.9,global.game_speed);
vsp = vsp*power(.9,global.game_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 745A1E4B
/// @DnDInput : 2
/// @DnDArgument : "expr" "-.1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "clamp(size,0,2)"
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "var_1" "size"
alpher += -.1*global.game_speed;
size = clamp(size,0,2);

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