/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 15378BA8
/// @DnDArgument : "expr" "dont_hurt_pylon"
/// @DnDArgument : "not" "1"
if(!(dont_hurt_pylon)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34776FC0
	/// @DnDParent : 15378BA8
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.hp"
	other.hp += -4;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3ACF3F37
	/// @DnDParent : 15378BA8
	instance_destroy();}