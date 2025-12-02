/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 345F1AC2
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "y-50 - sin(current_time*.002)*10"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y-50 - sin(current_time*.002)*10, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 79D50C10
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "s_crystal_alter"
/// @DnDArgument : "frame" "image_index"
/// @DnDSaveInfo : "sprite" "s_crystal_alter"
draw_sprite_ext(s_crystal_alter, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);