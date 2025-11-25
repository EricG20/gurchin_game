/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 745A1E4B
/// @DnDArgument : "expr" "-.05"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += -.05;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21E887BE
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 67648843
	/// @DnDParent : 21E887BE
	instance_destroy();
}