/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1C511CB9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "abs(vsp/4)+scale"
/// @DnDArgument : "yscale" "scale"
/// @DnDArgument : "rot" "point_direction(x,y,xprevious,yprevious)"
/// @DnDArgument : "alpha" "alpher"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "color_I_want"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, abs(vsp/4)+scale, scale, point_direction(x,y,xprevious,yprevious), color_I_want & $ffffff, alpher);