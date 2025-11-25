/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 40336460
/// @DnDArgument : "x1" "x-10"
/// @DnDArgument : "y1" "initial_y"
/// @DnDArgument : "x2" "x+10"
/// @DnDArgument : "y2" "initial_y+500"
/// @DnDArgument : "direction" "3"
/// @DnDArgument : "value" "slider_value"
/// @DnDArgument : "backcol" "$FF000000"
/// @DnDArgument : "barcol" "$FF000000"
draw_healthbar(x-10, initial_y, x+10, initial_y+500, slider_value, $FF000000 & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 3, (($FF000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3199D57A
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 590F66BF
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "key"
draw_text_transformed(x + 0, y + -90, string("") + string(key), 1, 1, 0);