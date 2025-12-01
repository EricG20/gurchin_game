/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6015B5E6
/// @DnDArgument : "expr" "clamp(white_flash_value-.1*global.game_speed,0,3)"
/// @DnDArgument : "var" "white_flash_value"
white_flash_value = clamp(white_flash_value-.1*global.game_speed,0,3);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 49655D8D
/// @DnDArgument : "expr" "room"
var l49655D8D_0 = room;switch(l49655D8D_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 58B7720C
	/// @DnDParent : 49655D8D
	/// @DnDArgument : "const" "ship_room"
	case ship_room:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 25291A8C
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "x" "o_camera.x"
		/// @DnDArgument : "y" "o_camera.y"
		/// @DnDArgument : "alpha" "white_flash_value"
		/// @DnDArgument : "sprite" "white_flash"
		/// @DnDSaveInfo : "sprite" "white_flash"
		draw_sprite_ext(white_flash, 0, o_camera.x, o_camera.y, 1, 1, 0, $FFFFFF & $ffffff, white_flash_value);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0EA6EB29
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "x" "o_camera.x"
		/// @DnDArgument : "y" "o_camera.y"
		/// @DnDArgument : "alpha" "pause_background_alpha"
		/// @DnDArgument : "sprite" "Layer_1"
		/// @DnDSaveInfo : "sprite" "Layer_1"
		draw_sprite_ext(Layer_1, 0, o_camera.x, o_camera.y, 1, 1, 0, $FFFFFF & $ffffff, pause_background_alpha);	break;}