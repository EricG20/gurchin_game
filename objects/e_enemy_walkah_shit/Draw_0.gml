/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 1C511CB9
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "1+(hsp/5)"
/// @DnDArgument : "rot" "point_direction(x,y,xprevious,yprevious)"
/// @DnDArgument : "alpha" "alpher"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1+(hsp/5), 1, point_direction(x,y,xprevious,yprevious), $FFFFFF & $ffffff, alpher);