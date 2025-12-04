/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 426B4AA4
/// @DnDArgument : "x" "x"
/// @DnDArgument : "y" "y+(sin(incr)-1)*5"
/// @DnDArgument : "xscale" "image_xscale*.7"
/// @DnDArgument : "yscale" "image_yscale*.7"
/// @DnDArgument : "alpha" "clamp((400-incr),0,1) + (sin(incr)+1)"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x, y+(sin(incr)-1)*5, image_xscale*.7, image_yscale*.7, 0, $FFFFFF & $ffffff, clamp((400-incr),0,1) + (sin(incr)+1));