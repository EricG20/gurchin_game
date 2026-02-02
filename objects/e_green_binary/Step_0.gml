/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C0AE930
/// @DnDInput : 5
/// @DnDArgument : "expr" "-.2*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "hsp*global.game_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "vsp*global.game_speed"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "hsp*power(.9,global.game_speed)"
/// @DnDArgument : "expr_4" "vsp*power(.9,global.game_speed)"
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "var_1" "x"
/// @DnDArgument : "var_2" "y"
/// @DnDArgument : "var_3" "hsp"
/// @DnDArgument : "var_4" "vsp"
alpher += -.2*global.game_speed;
x += hsp*global.game_speed;
y += vsp*global.game_speed;
hsp = hsp*power(.9,global.game_speed);
vsp = vsp*power(.9,global.game_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49DBB806
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7F870BFE
	/// @DnDParent : 49DBB806
	instance_destroy();}