/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 49F38436
/// @DnDArgument : "font" "imagine"
/// @DnDSaveInfo : "font" "imagine"
draw_set_font(imagine);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3503A51A
/// @DnDArgument : "x" "-115"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-95  - blurb_alpha*3"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "2.5"
/// @DnDArgument : "yscale" "1.8"
/// @DnDArgument : "alpha" "blurb_alpha"
/// @DnDArgument : "sprite" "comb_background"
/// @DnDSaveInfo : "sprite" "comb_background"
draw_sprite_ext(comb_background, 0, x + -115, y + -95  - blurb_alpha*3, 2.5, 1.8, 0, $FFFFFF & $ffffff, blurb_alpha);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 60DEC482
/// @DnDInput : 14
/// @DnDArgument : "script" "draw_text_colour_outline"
/// @DnDArgument : "arg" "x-100"
/// @DnDArgument : "arg_1" "y - 80 - blurb_alpha*3"
/// @DnDArgument : "arg_2" ""LVL  " + string(level)"
/// @DnDArgument : "arg_3" "c_white"
/// @DnDArgument : "arg_4" "c_white"
/// @DnDArgument : "arg_5" "blurb_alpha"
/// @DnDArgument : "arg_6" "c_blue"
/// @DnDArgument : "arg_7" "c_black"
/// @DnDArgument : "arg_8" "blurb_alpha"
/// @DnDArgument : "arg_9" "2"
/// @DnDArgument : "arg_10" "8"
/// @DnDArgument : "arg_11" ".7"
/// @DnDArgument : "arg_12" ".7"
/// @DnDArgument : "arg_13" "0"
/// @DnDSaveInfo : "script" "draw_text_colour_outline"
script_execute(draw_text_colour_outline, x-100, y - 80 - blurb_alpha*3, "LVL  " + string(level), c_white, c_white, blurb_alpha, c_blue, c_black, blurb_alpha, 2, 8, .7, .7, 0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6F8C757E
/// @DnDInput : 14
/// @DnDArgument : "script" "draw_text_colour_outline"
/// @DnDArgument : "arg" "x-100"
/// @DnDArgument : "arg_1" "y - 50 - blurb_alpha*3"
/// @DnDArgument : "arg_2" ""HP:  " + string(hp)"
/// @DnDArgument : "arg_3" "c_white"
/// @DnDArgument : "arg_4" "c_white"
/// @DnDArgument : "arg_5" "blurb_alpha"
/// @DnDArgument : "arg_6" "c_red"
/// @DnDArgument : "arg_7" "c_black"
/// @DnDArgument : "arg_8" "blurb_alpha"
/// @DnDArgument : "arg_9" "2"
/// @DnDArgument : "arg_10" "8"
/// @DnDArgument : "arg_11" ".7"
/// @DnDArgument : "arg_12" ".7"
/// @DnDArgument : "arg_13" "0"
/// @DnDSaveInfo : "script" "draw_text_colour_outline"
script_execute(draw_text_colour_outline, x-100, y - 50 - blurb_alpha*3, "HP:  " + string(hp), c_white, c_white, blurb_alpha, c_red, c_black, blurb_alpha, 2, 8, .7, .7, 0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 54391775
/// @DnDInput : 14
/// @DnDArgument : "script" "draw_text_colour_outline"
/// @DnDArgument : "arg" "x-100"
/// @DnDArgument : "arg_1" "y - 20 - blurb_alpha*3"
/// @DnDArgument : "arg_2" ""AMMO:  " + string(100*(ammo/ammo_cap)) + "%""
/// @DnDArgument : "arg_3" "c_white"
/// @DnDArgument : "arg_4" "c_white"
/// @DnDArgument : "arg_5" "blurb_alpha"
/// @DnDArgument : "arg_6" "c_red"
/// @DnDArgument : "arg_7" "c_black"
/// @DnDArgument : "arg_8" "blurb_alpha"
/// @DnDArgument : "arg_9" "2"
/// @DnDArgument : "arg_10" "8"
/// @DnDArgument : "arg_11" ".7"
/// @DnDArgument : "arg_12" ".7"
/// @DnDArgument : "arg_13" "0"
/// @DnDSaveInfo : "script" "draw_text_colour_outline"
script_execute(draw_text_colour_outline, x-100, y - 20 - blurb_alpha*3, "AMMO:  " + string(100*(ammo/ammo_cap)) + "%", c_white, c_white, blurb_alpha, c_red, c_black, blurb_alpha, 2, 8, .7, .7, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 16E97141
/// @DnDArgument : "font" "fontTbyDefault"
/// @DnDSaveInfo : "font" "fontTbyDefault"
draw_set_font(fontTbyDefault);