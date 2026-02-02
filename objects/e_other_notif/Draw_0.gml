/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 774EE969
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "s_grid"
if(!(sprite_index == s_grid)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 42E3BE05
	/// @DnDParent : 774EE969
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "alpha" "alpher"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, alpher);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3FE96298
/// @DnDArgument : "var" "dis_text"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" """"
if(!(dis_text == "")){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 09E9D9FF
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "halign" "fa_center"
	/// @DnDArgument : "valign" "fa_middle"
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 16CD34E7
	/// @DnDDisabled : 1
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "color" "$FF000000"


	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6B4D13DE
	/// @DnDDisabled : 1
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-30"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "size*1.1"
	/// @DnDArgument : "yscale" "clamp(size*alpher,0,size)*1.1"
	/// @DnDArgument : "caption" ""-""
	/// @DnDArgument : "text" "dis_text"


	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 7031F7FC
	/// @DnDDisabled : 1
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "color" "$FF1919FF"


	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 303E1FAF
	/// @DnDDisabled : 1
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-30"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "xscale" "size"
	/// @DnDArgument : "yscale" "clamp(size*alpher,0,size)"
	/// @DnDArgument : "caption" ""-""
	/// @DnDArgument : "text" "dis_text"


	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 37D1BD3F
	/// @DnDInput : 14
	/// @DnDParent : 3FE96298
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y-30"
	/// @DnDArgument : "arg_2" ""-"+dis_text"
	/// @DnDArgument : "arg_3" "c_red"
	/// @DnDArgument : "arg_4" "c_redish"
	/// @DnDArgument : "arg_5" "alpher"
	/// @DnDArgument : "arg_6" "c_maroon"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "alpher"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "8"
	/// @DnDArgument : "arg_11" "size"
	/// @DnDArgument : "arg_12" "clamp(size*alpher,0,size)"
	/// @DnDArgument : "arg_13" "image_angle"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, x, y-30, "-"+dis_text, c_red, c_redish, alpher, c_maroon, c_black, alpher, 2, 8, size, clamp(size*alpher,0,size), image_angle);

	/// @DnDAction : YoYo Games.Drawing.Set_Color
	/// @DnDVersion : 1
	/// @DnDHash : 5974AA12
	/// @DnDParent : 3FE96298
	draw_set_colour($FFFFFFFF & $ffffff);
	var l5974AA12_0=($FFFFFFFF >> 24);
	draw_set_alpha(l5974AA12_0 / $ff);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2FAF095D
	/// @DnDParent : 3FE96298
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}