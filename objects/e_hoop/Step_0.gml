/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C5228AC
/// @DnDArgument : "expr" "-.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += -.1;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 4C537C44
/// @DnDInput : 3
/// @DnDArgument : "value" "alpher"
/// @DnDArgument : "value_1" ".05"
/// @DnDArgument : "value_relative_1" "1"
/// @DnDArgument : "value_2" ".1"
/// @DnDArgument : "value_relative_2" "1"
/// @DnDArgument : "instvar" "13"
/// @DnDArgument : "instvar_1" "15"
/// @DnDArgument : "instvar_2" "16"
image_alpha = alpher;
image_xscale += .05;
image_yscale += .1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3D891771
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 32681655
	/// @DnDParent : 3D891771
	instance_destroy();
}