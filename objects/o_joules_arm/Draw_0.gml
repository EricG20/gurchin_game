/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6BD06969
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (VISystemExists(system)) {$(13_10)	// Draw all objects of the system$(13_10)	system.Draw(false);$(13_10)}"
/// @description Execute Code
if (VISystemExists(system)) {
	// Draw all objects of the system
	system.Draw(false);
}

/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 65A27F92
/// @DnDDisabled : 1
/// @DnDArgument : "x" "mouse_x"
/// @DnDArgument : "y" "mouse_y"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "text" "charge"


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
		/// @DnDArgument : "x" "(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_joules_gun"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_joules_gun"
		draw_sprite_ext(s_joules_gun, image_index, x + (kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 22440320
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing*(charge/100)"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_joules_gun_rings"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_joules_gun_rings"
		draw_sprite_ext(s_joules_gun_rings, image_index, x + (kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing*(charge/100), image_angle + 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 465FB20B
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "25"
		if(charge > 25){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1F604FC5
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "expr" "charge_at_full"
			/// @DnDArgument : "not" "1"
			if(!(charge_at_full)){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 3F8CFC0E
				/// @DnDParent : 1F604FC5
				/// @DnDArgument : "soundid" "sfx_charge_up_loop"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "sfx_charge_up_loop"
				var l3F8CFC0E_0 = sfx_charge_up_loop;if (!audio_is_playing(l3F8CFC0E_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 186D0870
					/// @DnDParent : 3F8CFC0E
					/// @DnDArgument : "target" "doogie"
					/// @DnDArgument : "soundid" "sfx_charge_up_loop"
					/// @DnDArgument : "gain" ".3"
					/// @DnDArgument : "pitch" "1+(charge/200)"
					/// @DnDSaveInfo : "soundid" "sfx_charge_up_loop"
					doogie = audio_play_sound(sfx_charge_up_loop, 0, 0, .3, undefined, 1+(charge/200));}
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 0B680062
				/// @DnDParent : 1F604FC5
				/// @DnDArgument : "soundid" "sfx_charge_up_loop"
				/// @DnDSaveInfo : "soundid" "sfx_charge_up_loop"
				var l0B680062_0 = sfx_charge_up_loop;if (audio_is_playing(l0B680062_0)){	/// @DnDAction : YoYo Games.Audio.Audio_Set_Pitch
					/// @DnDVersion : 1
					/// @DnDHash : 34283CBE
					/// @DnDParent : 0B680062
					/// @DnDArgument : "sound" "doogie"
					/// @DnDArgument : "pitch" "1+(charge/200)"
					audio_sound_pitch(doogie, 1+(charge/200));}}
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 220E4C39
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "var" "charge_juice"
			/// @DnDArgument : "value" "power(charge/30, 2)"
			var charge_juice = power(charge/30, 2);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17CADB0B
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "var" "charge_vibration"
			/// @DnDArgument : "value" "sin(charge_juice)"
			var charge_vibration = sin(charge_juice);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79B19D82
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "var" "charge_vibration2"
			/// @DnDArgument : "value" "cos(charge_juice)"
			var charge_vibration2 = cos(charge_juice);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1501B664
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "200"
			if(charge >= 200){	/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 296C92DA
				/// @DnDParent : 1501B664
				/// @DnDArgument : "var" "charge_vibration"
				/// @DnDArgument : "value" "1+(sin(current_time/300))*.3"
				var charge_vibration = 1+(sin(current_time/300))*.3;
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 298137C0
				/// @DnDParent : 1501B664
				/// @DnDArgument : "var" "charge_vibration2"
				/// @DnDArgument : "value" "1+(cos(current_time/300))*.3"
				var charge_vibration2 = 1+(cos(current_time/300))*.3;}
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 061400AA
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "x" "glorb_x"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorb_y"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "((charge/200)*charge_vibration)*.15"
			/// @DnDArgument : "yscale" "((charge/200)*charge_vibration2)*.15"
			/// @DnDArgument : "alpha" "charge/200*.1"
			/// @DnDArgument : "sprite" "spr_explosion"
			/// @DnDArgument : "col" "col1"
			/// @DnDSaveInfo : "sprite" "spr_explosion"
			draw_sprite_ext(spr_explosion, 0, x + glorb_x, y + glorb_y, ((charge/200)*charge_vibration)*.15, ((charge/200)*charge_vibration2)*.15, 0, col1 & $ffffff, charge/200*.1);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 6DBEDCFB
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "x" "glorb_x"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorb_y"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "((charge/200)*charge_vibration2)*.12"
			/// @DnDArgument : "yscale" "((charge/200)*charge_vibration)*.12"
			/// @DnDArgument : "alpha" "charge/200*.5"
			/// @DnDArgument : "sprite" "spr_explosion"
			/// @DnDArgument : "col" "col1"
			/// @DnDSaveInfo : "sprite" "spr_explosion"
			draw_sprite_ext(spr_explosion, 0, x + glorb_x, y + glorb_y, ((charge/200)*charge_vibration2)*.12, ((charge/200)*charge_vibration)*.12, 0, col1 & $ffffff, charge/200*.5);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 315B7B2C
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "x" "glorb_x"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorb_y"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "((charge/200)*charge_vibration)*.08"
			/// @DnDArgument : "yscale" "((charge/200)*charge_vibration2)*.08"
			/// @DnDArgument : "alpha" "charge/200*1"
			/// @DnDArgument : "sprite" "spr_explosion"
			/// @DnDArgument : "col" "col1"
			/// @DnDSaveInfo : "sprite" "spr_explosion"
			draw_sprite_ext(spr_explosion, 0, x + glorb_x, y + glorb_y, ((charge/200)*charge_vibration)*.08, ((charge/200)*charge_vibration2)*.08, 0, col1 & $ffffff, charge/200*1);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 6F3B2439
			/// @DnDParent : 465FB20B
			/// @DnDArgument : "x" "glorb_x"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorb_y"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "((charge/200)*charge_vibration)*.7"
			/// @DnDArgument : "yscale" "((charge/200)*charge_vibration)*.7"
			/// @DnDArgument : "rot" "charge_juice*current_time/100"
			/// @DnDArgument : "alpha" "charge/200"
			/// @DnDArgument : "sprite" "s_radiance_blured"
			/// @DnDArgument : "col" "col1"
			/// @DnDSaveInfo : "sprite" "s_radiance_blured"
			draw_sprite_ext(s_radiance_blured, 0, x + glorb_x, y + glorb_y, ((charge/200)*charge_vibration)*.7, ((charge/200)*charge_vibration)*.7, charge_juice*current_time/100, col1 & $ffffff, charge/200);}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 712675A4
		/// @DnDDisabled : 1
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "expr" "laser_out"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 53F0A979
		/// @DnDDisabled : 1
		/// @DnDParent : 712675A4
		/// @DnDArgument : "expr" "ammo/ammo_cap"
		/// @DnDArgument : "var" "light_wobble"
		
		
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6BD190A0
		/// @DnDInput : 11
		/// @DnDDisabled : 1
		/// @DnDParent : 712675A4
		/// @DnDArgument : "script" "scr_laser"
		/// @DnDArgument : "arg" "glorb_x"
		/// @DnDArgument : "arg_1" "glorb_y"
		/// @DnDArgument : "arg_2" "clamp(light_wobble*.2, .1, .2)*(2*weilder.curr_weapon_level)"
		/// @DnDArgument : "arg_3" "undefined"
		/// @DnDArgument : "arg_4" "undefined"
		/// @DnDArgument : "arg_5" "undefined"
		/// @DnDArgument : "arg_6" "col1"
		/// @DnDArgument : "arg_7" "col2"
		/// @DnDArgument : "arg_8" "col3"
		/// @DnDArgument : "arg_9" ".2*power(2, weilder.curr_weapon_level-1)"
		/// @DnDArgument : "arg_10" "2*weilder.curr_weapon_level"
		/// @DnDSaveInfo : "script" "scr_laser"	break;

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
		/// @DnDArgument : "x" "weilder.facing*kickbackx+shakex"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "shakey+kickbacky"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDArgument : "col" "$FFFFFFFF"
		draw_sprite_ext(sprite_index, image_index, x + weilder.facing*kickbackx+shakex, y + shakey+kickbacky, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFFFF & $ffffff, 1);	break;

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
		/// @DnDArgument : "x" "weilder.facing*kickbackx+shakex"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "shakey+kickbacky"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_gilbert_w_hands"
		/// @DnDSaveInfo : "sprite" "s_gilbert_w_hands"
		draw_sprite_ext(s_gilbert_w_hands, 0, x + weilder.facing*kickbackx+shakex, y + shakey+kickbacky, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
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
		/// @DnDArgument : "x" "(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, x + (kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + 0, $FFFFFF & $ffffff, 1);
	
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
		draw_healthbar(mouse_x-19, mouse_y-50, mouse_x-2, mouse_y+50, 100-(charge/180 * 100), $BD000000 & $FFFFFF, $FFFF0000 & $FFFFFF, $FF00FF00 & $FFFFFF, 3, (($BD000000>>24) != 0), (($00000000>>24) != 0));	break;}