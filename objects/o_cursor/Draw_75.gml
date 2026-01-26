/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4904A844
/// @DnDArgument : "expr" "InputDeviceIsGamepad(InputPlayerGetDevice())"
/// @DnDArgument : "not" "1"
if(!(InputDeviceIsGamepad(InputPlayerGetDevice()))){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2658E873
	/// @DnDParent : 4904A844
	/// @DnDArgument : "x" "InputMouseGuiX()"
	/// @DnDArgument : "y" "InputMouseGuiY()"
	/// @DnDArgument : "sprite" "sprite_index"
	draw_sprite(sprite_index, 0, InputMouseGuiX(), InputMouseGuiY());}