/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 45FB91D3
/// @DnDArgument : "var" "global.join_code"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(global.join_code == -1)){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 593036AC
	/// @DnDParent : 45FB91D3
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 65D5D86B
	/// @DnDParent : 45FB91D3
	/// @DnDArgument : "font" "imagine"
	/// @DnDSaveInfo : "font" "imagine"
	draw_set_font(imagine);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1BEFC595
	/// @DnDInput : 14
	/// @DnDParent : 45FB91D3
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "global.join_code"
	/// @DnDArgument : "arg_3" "c_purple"
	/// @DnDArgument : "arg_4" "c_black"
	/// @DnDArgument : "arg_5" "1"
	/// @DnDArgument : "arg_6" "c_white"
	/// @DnDArgument : "arg_7" "c_white"
	/// @DnDArgument : "arg_8" "1"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "2"
	/// @DnDArgument : "arg_12" "2"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960, y, global.join_code, c_purple, c_black, 1, c_white, c_white, 1, 2, 6, 2, 2, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 48ED9482
	/// @DnDParent : 45FB91D3
	/// @DnDArgument : "font" "fontTbyDefault"
	/// @DnDSaveInfo : "font" "fontTbyDefault"
	draw_set_font(fontTbyDefault);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 70A32769
	/// @DnDParent : 45FB91D3
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}