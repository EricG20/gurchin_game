/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 35D318E2
/// @DnDArgument : "color" "$FF00E500"
draw_set_colour($FF00E500 & $ffffff);
var l35D318E2_0=($FF00E500 >> 24);
draw_set_alpha(l35D318E2_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 0A61ABB8
/// @DnDArgument : "halign" "fa_center"
/// @DnDArgument : "valign" "fa_middle"
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 40D6A3F5
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "clamp(alpher,0,1)*sizee"
/// @DnDArgument : "yscale" "clamp(alpher,0,1)*sizee"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "display_num"
draw_text_transformed(x + 0, y + 0, string("") + string(display_num), clamp(alpher,0,1)*sizee, clamp(alpher,0,1)*sizee, 0);

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 7D9BB66B
draw_set_colour($FFFFFFFF & $ffffff);
var l7D9BB66B_0=($FFFFFFFF >> 24);
draw_set_alpha(l7D9BB66B_0 / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 2F45B633
draw_set_halign(fa_left);
draw_set_valign(fa_top);