/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
/// @DnDVersion : 1
/// @DnDHash : 60EDFE4F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "sin(floatinc)*5-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "sprite" "object_get_sprite(weapon_index)"
draw_sprite(object_get_sprite(weapon_index), 0, x + 0, y + sin(floatinc)*5-10);