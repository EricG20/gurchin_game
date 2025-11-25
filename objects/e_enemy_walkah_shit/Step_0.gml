/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 29EEED38
/// @DnDArgument : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 47F8CB34
/// @DnDArgument : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 74049526
/// @DnDArgument : "value" "alpher"
/// @DnDArgument : "instvar" "13"
image_alpha = alpher;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4D475ED5
/// @DnDArgument : "expr" "on_ground"
if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7D860D6F
	/// @DnDInput : 3
	/// @DnDParent : 4D475ED5
	/// @DnDArgument : "expr" "hsp*.97"
	/// @DnDArgument : "expr_1" "-.02"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "1"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "alpher"
	/// @DnDArgument : "var_2" "image_index"
	hsp = hsp*.97;
	alpher += -.02;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D871929
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0C523C60
	/// @DnDParent : 4D871929
	instance_destroy();
}