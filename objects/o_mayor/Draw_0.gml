/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 5480C656
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "y - sin(current_time*.002)*3"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, x + 0, y - sin(current_time*.002)*3, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3C293E7C
/// @DnDArgument : "expr" "say_something"
if(say_something){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 67F9133D
	/// @DnDParent : 3C293E7C
	/// @DnDArgument : "script" "msg_dynamic"
	/// @DnDArgument : "arg" "n_message"
	/// @DnDSaveInfo : "script" "msg_dynamic"
	script_execute(msg_dynamic, n_message);}