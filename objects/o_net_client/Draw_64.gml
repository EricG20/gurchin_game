/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 530A6A16
/// @DnDArgument : "expr" "connecting"
/// @DnDArgument : "not" "1"
if(!(connecting)){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 56C19AD5
	/// @DnDParent : 530A6A16
	/// @DnDArgument : "x" "960"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "caption" ""Enter the room code: ""
	/// @DnDArgument : "text" "join_code"
	draw_text_transformed(960, 70, string("Enter the room code: ") + string(join_code), 1, 1, 0);}