/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6C71CF13
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "dont_hurt_pylon"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18609470
/// @DnDParent : 6C71CF13
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07FF5554
	/// @DnDInput : 2
	/// @DnDParent : 18609470
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "90"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "other.iframes"
	other.hp += -4;
	other.iframes = 90;}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4EFE29E5
/// @DnDDisabled : 1
/// @DnDParent : 6C71CF13