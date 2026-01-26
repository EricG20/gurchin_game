/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 40EDD5DD
/// @DnDArgument : "expr" "InputDeviceIsGamepad(InputPlayerGetDevice())"
if(InputDeviceIsGamepad(InputPlayerGetDevice())){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 720D160B
	/// @DnDParent : 40EDD5DD
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "sprite_index"
	/// @DnDArgument : "frame" "image_index"
	draw_sprite_ext(sprite_index, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);}