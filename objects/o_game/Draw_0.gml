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
		draw_sprite_ext(Layer_1, 0, o_camera.x, o_camera.y, 1, 1, 0, $FFFFFF & $ffffff, pause_background_alpha);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5560B293
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 766D0EA6
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "var" "weapon_name"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "script" "scr_weapon_names"
		/// @DnDArgument : "arg" "local_player.mygurn.object_index"
		/// @DnDSaveInfo : "script" "scr_weapon_names"
		var weapon_name = script_execute(scr_weapon_names, local_player.mygurn.object_index);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 57E08C6D
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "var" "weapon_desc"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "script" "scr_weapon_descs"
		/// @DnDArgument : "arg" "local_player.mygurn.object_index"
		/// @DnDSaveInfo : "script" "scr_weapon_descs"
		var weapon_desc = script_execute(scr_weapon_descs, local_player.mygurn.object_index);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2866D2EF
		/// @DnDInput : 3
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "var" "weapon_desc"
		/// @DnDArgument : "function" "wrap_text"
		/// @DnDArgument : "arg" "weapon_desc"
		/// @DnDArgument : "arg_1" "60"
		/// @DnDArgument : "arg_2" "2"
		weapon_desc = wrap_text(weapon_desc, 60, 2);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2DDF17C6
		/// @DnDInput : 14
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "o_camera.x-480"
		/// @DnDArgument : "arg_1" "o_camera.y-380"
		/// @DnDArgument : "arg_2" "weapon_name"
		/// @DnDArgument : "arg_3" "c_white"
		/// @DnDArgument : "arg_4" "c_white"
		/// @DnDArgument : "arg_5" "pause_background_alpha"
		/// @DnDArgument : "arg_6" "c_green"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "pause_background_alpha"
		/// @DnDArgument : "arg_9" "2"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "2"
		/// @DnDArgument : "arg_12" "2"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, o_camera.x-480, o_camera.y-380, weapon_name, c_white, c_white, pause_background_alpha, c_green, c_black, pause_background_alpha, 2, 6, 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6AE52F6A
		/// @DnDInput : 14
		/// @DnDParent : 58B7720C
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "o_camera.x-480"
		/// @DnDArgument : "arg_1" "o_camera.y-290"
		/// @DnDArgument : "arg_2" "weapon_desc"
		/// @DnDArgument : "arg_3" "c_white"
		/// @DnDArgument : "arg_4" "c_white"
		/// @DnDArgument : "arg_5" "pause_background_alpha"
		/// @DnDArgument : "arg_6" "c_black"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "pause_background_alpha"
		/// @DnDArgument : "arg_9" "2"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "1"
		/// @DnDArgument : "arg_12" "1"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, o_camera.x-480, o_camera.y-290, weapon_desc, c_white, c_white, pause_background_alpha, c_black, c_black, pause_background_alpha, 2, 6, 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 007375A4
		/// @DnDParent : 58B7720C
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);	break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 6636BB7B
	/// @DnDParent : 49655D8D
	default:	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 1D2C48A0
		/// @DnDParent : 6636BB7B
		/// @DnDArgument : "obj" "o_camera"
		/// @DnDSaveInfo : "obj" "o_camera"
		var l1D2C48A0_0 = false;l1D2C48A0_0 = instance_exists(o_camera);if(l1D2C48A0_0){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 4E406FA8
			/// @DnDParent : 1D2C48A0
			/// @DnDArgument : "x" "o_camera.x"
			/// @DnDArgument : "y" "o_camera.y"
			/// @DnDArgument : "alpha" "pause_background_alpha"
			/// @DnDArgument : "sprite" "Layer_1"
			/// @DnDSaveInfo : "sprite" "Layer_1"
			draw_sprite_ext(Layer_1, 0, o_camera.x, o_camera.y, 1, 1, 0, $FFFFFF & $ffffff, pause_background_alpha);}	break;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6015B5E6
/// @DnDArgument : "expr" "clamp(white_flash_value-.1*global.game_speed,0,3)"
/// @DnDArgument : "var" "white_flash_value"
white_flash_value = clamp(white_flash_value-.1*global.game_speed,0,3);