/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6283A933
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58B23697
	/// @DnDInput : 2
	/// @DnDParent : 6283A933
	/// @DnDArgument : "expr" "-2"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "90"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "other.iframes"
	other.hp += -2;
	other.iframes = 90;}