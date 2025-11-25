/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 18429861
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4BE0D11A
	/// @DnDParent : 18429861
	/// @DnDArgument : "x" "640"
	/// @DnDArgument : "y" "30"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "text" "flagz"
	draw_text_transformed(640, 30, string("") + string(flagz), 1, 1, 0);
}