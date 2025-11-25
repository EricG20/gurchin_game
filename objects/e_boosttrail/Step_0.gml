/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 648A65DC
/// @DnDArgument : "expr" "-.06"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += -.06;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B1E20FA
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "3"
if(alpher <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 31AFD1F0
	/// @DnDParent : 0B1E20FA
	instance_destroy();
}