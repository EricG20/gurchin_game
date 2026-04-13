/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 31DA627A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "rot" "point_direction(x-hsp,y-vsp,x,y)"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "bullet_color"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, facing, image_yscale + 0, point_direction(x-hsp,y-vsp,x,y), bullet_color & $ffffff, 1);