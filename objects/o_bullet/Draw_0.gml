/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 207804D0
/// @DnDDisabled : 1
/// @DnDArgument : "var" "sender"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 1644468E
/// @DnDDisabled : 1
/// @DnDParent : 207804D0
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-30"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""sender_id: ""
/// @DnDArgument : "var" "sender.player_id"

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 359D0FFE
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "sqrt( sqr(hsp) + sqr(vsp) )/10"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "rot" "point_direction(x-hsp,y-vsp,x,y)"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "bullet_color"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, image_xscale + sqrt( sqr(hsp) + sqr(vsp) )/10, image_yscale + 0, point_direction(x-hsp,y-vsp,x,y), bullet_color & $ffffff, 1);