/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 426B4AA4
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y+(sin(incr)-1)*5"
/// @DnDArgument : "xscale" "0"
/// @DnDArgument : "xscale_relative" "1"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "alpha" "clamp((400-incr),0,1) + (sin(incr)+1)"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x, y+(sin(incr)-1)*5, image_xscale + 0, image_yscale + 0, 0, $FFFFFF & $ffffff, clamp((400-incr),0,1) + (sin(incr)+1));