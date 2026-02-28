/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 074CE30C
/// @DnDArgument : "var" "master.control_type"
/// @DnDArgument : "value" "cr.LOCAL"
if(master.control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E63FDB6
	/// @DnDInput : 2
	/// @DnDParent : 074CE30C
	/// @DnDArgument : "expr" "o_cursor.x"
	/// @DnDArgument : "expr_1" "o_cursor.y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = o_cursor.x;
	y = o_cursor.y;}