/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 29EEED38
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 47F8CB34
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 74049526
/// @DnDArgument : "value" "alpher"
/// @DnDArgument : "instvar" "13"
image_alpha = alpher;

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 76CFA87F
/// @DnDArgument : "var" "on_ground"
/// @DnDArgument : "not" "1"
if(on_ground != undefined){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6CA795F2
	/// @DnDInput : 2
	/// @DnDParent : 76CFA87F
	/// @DnDArgument : "expr" "vermin_blood_air"
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "var_1" "image_index"
	sprite_index = vermin_blood_air;
	image_index = 0;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4D475ED5
/// @DnDArgument : "expr" "on_ground"
if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0739A17C
	/// @DnDParent : 4D475ED5
	/// @DnDArgument : "expr" "vermin_blood"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = vermin_blood;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D860D6F
	/// @DnDInput : 3
	/// @DnDParent : 4D475ED5
	/// @DnDArgument : "expr" "hsp*.97"
	/// @DnDArgument : "expr_1" "-.02*global.game_speed"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "bruh"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "alpher"
	/// @DnDArgument : "var_2" "image_index"
	hsp = hsp*.97;
	alpher += -.02*global.game_speed;
	image_index = bruh;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1EA67407
	/// @DnDInput : 2
	/// @DnDParent : 4D475ED5
	/// @DnDArgument : "expr" "x"
	/// @DnDArgument : "expr_1" "y"
	/// @DnDArgument : "var" "xprevious"
	/// @DnDArgument : "var_1" "yprevious"
	xprevious = x;
	yprevious = y;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D871929
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C523C60
	/// @DnDParent : 4D871929
	instance_destroy();}