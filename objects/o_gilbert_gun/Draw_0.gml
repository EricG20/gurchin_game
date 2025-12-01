/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 65A27F92
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "charge"
draw_text_transformed(mouse_x, mouse_y, string("") + string(charge), 1, 1, 0);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 29A2478F
/// @DnDArgument : "expr" "anim"
var l29A2478F_0 = anim;switch(l29A2478F_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1D403BFA
	/// @DnDParent : 29A2478F
	/// @DnDArgument : "const" "stance.CASUAL"
	case stance.CASUAL:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 355549E6
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "rotate_amount"
		rotate_amount = image_angle;
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6D87F405
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "o_player.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2"
		/// @DnDArgument : "yscale" "o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_gilbert_w_hands"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_gilbert_w_hands"
		draw_sprite_ext(s_gilbert_w_hands, image_index, o_player.x+(kickbackx+shakex), o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2, 1, o_player.facing, image_angle + 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 712675A4
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "expr" "laser_out"
		if(laser_out){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53F0A979
			/// @DnDParent : 712675A4
			/// @DnDArgument : "expr" "ammo/ammo_cap"
			/// @DnDArgument : "var" "light_wobble"
			light_wobble = ammo/ammo_cap;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6BD190A0
			/// @DnDInput : 3
			/// @DnDParent : 712675A4
			/// @DnDArgument : "script" "scr_laser"
			/// @DnDArgument : "arg" "glorb_x"
			/// @DnDArgument : "arg_1" "glorb_y"
			/// @DnDArgument : "arg_2" "light_wobble*1.5"
			/// @DnDSaveInfo : "script" "scr_laser"
			script_execute(scr_laser, glorb_x, glorb_y, light_wobble*1.5);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0A3B8944
	/// @DnDParent : 29A2478F
	/// @DnDArgument : "const" "stance.SHOT"
	case stance.SHOT:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2519F1D4
		/// @DnDInput : 2
		/// @DnDParent : 0A3B8944
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "expr_1" "s_player_piztol_armanim"
		/// @DnDArgument : "var" "rotate_amount"
		/// @DnDArgument : "var_1" "sprite_index"
		rotate_amount = image_angle;
		sprite_index = s_player_piztol_armanim;
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 07311AA6
		/// @DnDParent : 0A3B8944
		/// @DnDArgument : "x" "o_player.facing*kickbackx+shakex"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "shakey+kickbacky"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "o_player.facing"
		/// @DnDArgument : "rot" "androtate*o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_gilbert_w_hands"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_gilbert_w_hands"
		draw_sprite_ext(s_gilbert_w_hands, image_index, x + o_player.facing*kickbackx+shakex, y + shakey+kickbacky, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 79ADA57F
	/// @DnDParent : 29A2478F
	/// @DnDArgument : "const" "stance.GUARDING"
	case stance.GUARDING:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C731A18
		/// @DnDInput : 3
		/// @DnDParent : 79ADA57F
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "expr_1" "s_player_piztol_armanim"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "rotate_amount"
		/// @DnDArgument : "var_1" "sprite_index"
		/// @DnDArgument : "var_2" "numbah"
		rotate_amount = image_angle;
		sprite_index = s_player_piztol_armanim;
		numbah += -1;
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 225151B8
		/// @DnDParent : 79ADA57F
		/// @DnDArgument : "x" "o_player.facing*kickbackx+shakex"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "shakey+kickbacky"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "o_player.facing"
		/// @DnDArgument : "rot" "androtate*o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_gilbert_w_hands"
		/// @DnDSaveInfo : "sprite" "s_gilbert_w_hands"
		draw_sprite_ext(s_gilbert_w_hands, 0, x + o_player.facing*kickbackx+shakex, y + shakey+kickbacky, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 07D3CCB4
		/// @DnDParent : 79ADA57F
		/// @DnDArgument : "var" "numbah"
		/// @DnDArgument : "op" "3"
		if(numbah <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 280703AE
			/// @DnDInput : 2
			/// @DnDParent : 07D3CCB4
			/// @DnDArgument : "expr" "stance.CASUAL"
			/// @DnDArgument : "expr_1" "s_piztol"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "sprite_index"
			anim = stance.CASUAL;
			sprite_index = s_piztol;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 309F228F
	/// @DnDParent : 29A2478F
	/// @DnDArgument : "const" "stance.RELOAD"
	case stance.RELOAD:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6CA8A538
		/// @DnDParent : 309F228F
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "rotate_amount"
		rotate_amount = image_angle;
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7BD6D93B
		/// @DnDParent : 309F228F
		/// @DnDArgument : "x" "o_player.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2"
		/// @DnDArgument : "yscale" "o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_gilbert_w_hands"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_gilbert_w_hands"
		draw_sprite_ext(s_gilbert_w_hands, image_index, o_player.x+(kickbackx+shakex), o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2, 1, o_player.facing, image_angle + 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 32ED3482
		/// @DnDParent : 309F228F
		/// @DnDArgument : "x1" "mouse_x-19"
		/// @DnDArgument : "y1" "mouse_y-50"
		/// @DnDArgument : "x2" "mouse_x-2"
		/// @DnDArgument : "y2" "mouse_y+50"
		/// @DnDArgument : "direction" "3"
		/// @DnDArgument : "value" "100-(charge/180 * 100)"
		/// @DnDArgument : "backcol" "$BD000000"
		/// @DnDArgument : "barcol" "$00000000"
		/// @DnDArgument : "mincol" "$FFFF0000"
		/// @DnDArgument : "maxcol" "$FF00FF00"
		draw_healthbar(mouse_x-19, mouse_y-50, mouse_x-2, mouse_y+50, 100-(charge/180 * 100), $BD000000 & $FFFFFF, $FFFF0000 & $FFFFFF, $FF00FF00 & $FFFFFF, 3, (($BD000000>>24) != 0), (($00000000>>24) != 0));
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 5D905A3B
		/// @DnDParent : 309F228F
		/// @DnDArgument : "var" "wah"
		/// @DnDArgument : "script" "msg_dynamic"
		/// @DnDArgument : "arg" "blessage"
		/// @DnDSaveInfo : "script" "msg_dynamic"
		wah = script_execute(msg_dynamic, blessage);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 292EA707
		/// @DnDParent : 309F228F
		/// @DnDArgument : "expr" "wah"
		/// @DnDArgument : "not" "1"
		if(!(wah)){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 255B5EAE
			/// @DnDParent : 292EA707
			/// @DnDArgument : "var" "floor(charge) mod 7"
			if(floor(charge) mod 7 == 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 407BBBA7
				/// @DnDParent : 255B5EAE
				/// @DnDArgument : "soundid" "wah_sound"
				/// @DnDArgument : "pitch" "random_range(.9,1.1)+.5"
				audio_play_sound(wah_sound, 0, 0, 1.0, undefined, random_range(.9,1.1)+.5);
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 771A663A
				/// @DnDInput : 6
				/// @DnDParent : 255B5EAE
				/// @DnDArgument : "var" "wah_sound"
				/// @DnDArgument : "option" "wah_1"
				/// @DnDArgument : "option_1" "wah_2"
				/// @DnDArgument : "option_2" "wah_3"
				/// @DnDArgument : "option_3" "wah_4"
				/// @DnDArgument : "option_4" "wah_5"
				/// @DnDArgument : "option_5" "wah_6"
				wah_sound = choose(wah_1, wah_2, wah_3, wah_4, wah_5, wah_6);}}	break;}