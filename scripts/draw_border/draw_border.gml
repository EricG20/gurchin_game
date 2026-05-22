/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1934C09E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 3
/// @DnDArgument : "funcName" "draw_border"
/// @DnDArgument : "arg" "_x"
/// @DnDArgument : "arg_1" "_y"
/// @DnDArgument : "arg_2" "y_scale"
function draw_border(_x, _y, y_scale) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FD7EA0D
	/// @DnDParent : 1934C09E
	/// @DnDArgument : "var" "scroll_x"
	/// @DnDArgument : "value" "(current_time/4 * y_scale)%210"
	var scroll_x = (current_time/4 * y_scale)%210;

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 35FD5AD5
	/// @DnDParent : 1934C09E
	/// @DnDArgument : "x" "_x+scroll_x"
	/// @DnDArgument : "y" "_y"
	/// @DnDArgument : "xscale" "15"
	/// @DnDArgument : "yscale" "y_scale"
	/// @DnDArgument : "sprite" "ui_triangle_bars"
	/// @DnDSaveInfo : "sprite" "ui_triangle_bars"
	draw_sprite_ext(ui_triangle_bars, 0, _x+scroll_x, _y, 15, y_scale, 0, $FFFFFF & $ffffff, 1);}