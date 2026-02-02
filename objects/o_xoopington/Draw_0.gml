/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 7CF9E727
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-90"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" ""Charge: ""
/// @DnDArgument : "var" "charge"


/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 47B9E3A2
/// @DnDArgument : "speed" "clamp(shoot_power/2,1,5)"
image_speed = clamp(shoot_power/2,1,5);

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
		/// @DnDArgument : "x" "weilder.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, weilder.x+(kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 2282F6BE
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "weilder.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_armed"
		/// @DnDSaveInfo : "sprite" "s_xoopington_armed"
		draw_sprite_ext(s_xoopington_armed, 0, weilder.x+(kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31A3667C
		/// @DnDInput : 2
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "var" "wobble1"
		/// @DnDArgument : "value" "random_range(-4,4)"
		/// @DnDArgument : "var_1" "wobble2"
		/// @DnDArgument : "value_1" "random_range(-4,4)"
		var wobble1 = random_range(-4,4);
		var wobble2 = random_range(-4,4);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3AD04866
		/// @DnDInput : 2
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "expr" "random_range(0,shoot_power/2)"
		/// @DnDArgument : "expr_1" "random_range(0,shoot_power/2)"
		/// @DnDArgument : "var" "shakex"
		/// @DnDArgument : "var_1" "shakey"
		shakex = random_range(0,shoot_power/2);
		shakey = random_range(0,shoot_power/2);
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 62C8894D
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "cond" "i < full_shot_tokens"
		for(i = 0; i < full_shot_tokens; i += 1) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 339F48CA
			/// @DnDParent : 62C8894D
			/// @DnDArgument : "var" "check_this_angle_bro"
			/// @DnDArgument : "value" "i * (2 * pi) / full_shot_tokens + current_time/700"
			var check_this_angle_bro = i * (2 * pi) / full_shot_tokens + current_time/700;
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7613EEEE
			/// @DnDParent : 62C8894D
			/// @DnDArgument : "var" "my_super_radius"
			/// @DnDArgument : "value" "30 + sin(current_time / 350 + i) * 8"
			var my_super_radius = 30 + sin(current_time / 350 + i) * 8;
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 543A3287
			/// @DnDParent : 62C8894D
			/// @DnDArgument : "x" "glorp_x+sin(check_this_angle_bro)*1*my_super_radius"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorp_y-cos(check_this_angle_bro)*1*my_super_radius"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "shoot_power/(30+wobble1)"
			/// @DnDArgument : "yscale" "shoot_power/(30+wobble1)"
			/// @DnDArgument : "sprite" "spr_explosion"
			/// @DnDArgument : "col" "$FF00CC00"
			/// @DnDSaveInfo : "sprite" "spr_explosion"
			draw_sprite_ext(spr_explosion, 0, x + glorp_x+sin(check_this_angle_bro)*1*my_super_radius, y + glorp_y-cos(check_this_angle_bro)*1*my_super_radius, shoot_power/(30+wobble1), shoot_power/(30+wobble1), 0, $FF00CC00 & $ffffff, 1);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 4DA28856
			/// @DnDParent : 62C8894D
			/// @DnDArgument : "x" "glorp_x+(sin(check_this_angle_bro))*1*my_super_radius"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "glorp_y-(cos(check_this_angle_bro))*1*my_super_radius"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "shoot_power/(35+wobble2)"
			/// @DnDArgument : "yscale" "shoot_power/(35+wobble2)"
			/// @DnDArgument : "sprite" "spr_explosion"
			/// @DnDArgument : "col" "$FF000000"
			/// @DnDSaveInfo : "sprite" "spr_explosion"
			draw_sprite_ext(spr_explosion, 0, x + glorp_x+(sin(check_this_angle_bro))*1*my_super_radius, y + glorp_y-(cos(check_this_angle_bro))*1*my_super_radius, shoot_power/(35+wobble2), shoot_power/(35+wobble2), 0, $FF000000 & $ffffff, 1);}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 601D2849
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "glorp_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "shoot_power/(22+wobble1)"
		/// @DnDArgument : "yscale" "shoot_power/(22+wobble1)"
		/// @DnDArgument : "sprite" "spr_explosion"
		/// @DnDArgument : "col" "$FF00CC00"
		/// @DnDSaveInfo : "sprite" "spr_explosion"
		draw_sprite_ext(spr_explosion, 0, x + glorp_x, y + glorp_y, shoot_power/(22+wobble1), shoot_power/(22+wobble1), 0, $FF00CC00 & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 37DFB3A5
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "glorp_x"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "shoot_power/(25+wobble2)"
		/// @DnDArgument : "yscale" "shoot_power/(25+wobble2)"
		/// @DnDArgument : "sprite" "spr_explosion"
		/// @DnDArgument : "col" "$FF000000"
		/// @DnDSaveInfo : "sprite" "spr_explosion"
		draw_sprite_ext(spr_explosion, 0, x + glorp_x, y + glorp_y, shoot_power/(25+wobble2), shoot_power/(25+wobble2), 0, $FF000000 & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 45ABEA69
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "glorp_x+(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y+(shakey+kickbacky)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "-1*weilder.facing"
		/// @DnDArgument : "rot" "(androtate-(shoot_power*4))*weilder.facing+wobble1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_head"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "s_xoopington_head"
		draw_sprite_ext(s_xoopington_head, 0, x + glorp_x+(kickbackx+shakex), y + glorp_y+(shakey+kickbacky), 1, -1*weilder.facing, image_angle + (androtate-(shoot_power*4))*weilder.facing+wobble1, $FFFFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 5C5C02C8
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "x" "glorp_x+(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y+(shakey+kickbacky)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "1*weilder.facing"
		/// @DnDArgument : "rot" "(androtate+(shoot_power*4))*weilder.facing-wobble1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_head"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "s_xoopington_head"
		draw_sprite_ext(s_xoopington_head, 0, x + glorp_x+(kickbackx+shakex), y + glorp_y+(shakey+kickbacky), 1, 1*weilder.facing, image_angle + (androtate+(shoot_power*4))*weilder.facing-wobble1, $FFFFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35D491EF
		/// @DnDParent : 1D403BFA
		/// @DnDArgument : "var" "shoot_power"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "1"
		if(shoot_power > 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37346FDA
			/// @DnDParent : 35D491EF
			/// @DnDArgument : "var" "shoot_power"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "5"
			if(!(shoot_power >= 5)){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 58FD320D
				/// @DnDParent : 37346FDA
				/// @DnDArgument : "soundid" "sfx_gilb_charge"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
				var l58FD320D_0 = sfx_gilb_charge;if (!audio_is_playing(l58FD320D_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 5AF562F0
					/// @DnDParent : 58FD320D
					/// @DnDArgument : "soundid" "sfx_gilb_charge"
					/// @DnDArgument : "gain" ".5+shoot_power*.2"
					/// @DnDArgument : "pitch" "2 + shoot_power*.1"
					/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
					audio_play_sound(sfx_gilb_charge, 0, 0, .5+shoot_power*.2, undefined, 2 + shoot_power*.1);}}}	break;

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
		/// @DnDArgument : "expr_1" "s_xoopington"
		/// @DnDArgument : "var" "rotate_amount"
		/// @DnDArgument : "var_1" "sprite_index"
		rotate_amount = image_angle;
		sprite_index = s_xoopington;
	
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
		draw_sprite_ext(sprite_index, image_index, x + weilder.facing*kickbackx+shakex, y + shakey+kickbacky, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);	break;

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
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "s_xoopington"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "rotate_amount"
		/// @DnDArgument : "var_1" "sprite_index"
		/// @DnDArgument : "var_2" "numbah"
		rotate_amount += image_angle;
		sprite_index = s_xoopington;
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
		/// @DnDArgument : "sprite" "sprite_index"
		draw_sprite_ext(sprite_index, 0, x + weilder.facing*kickbackx+shakex, y + shakey+kickbacky, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
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
			/// @DnDArgument : "expr_1" "s_xoopington"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "sprite_index"
			anim = stance.CASUAL;
			sprite_index = s_xoopington;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2FA5C165
	/// @DnDParent : 29A2478F
	/// @DnDArgument : "const" "stance.RELOAD"
	case stance.RELOAD:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73E6FFB0
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "expr" "image_angle"
		/// @DnDArgument : "var" "rotate_amount"
		rotate_amount = image_angle;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 237393A7
		/// @DnDInput : 2
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "var" "wobble1"
		/// @DnDArgument : "value" "random_range(-4,4)"
		/// @DnDArgument : "var_1" "wobble2"
		/// @DnDArgument : "value_1" "random_range(-4,4)"
		var wobble1 = random_range(-4,4);
		var wobble2 = random_range(-4,4);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 08A3FCFE
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x" "weilder.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, weilder.x+(kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0CADFC06
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x" "weilder.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2"
		/// @DnDArgument : "yscale" "weilder.facing"
		/// @DnDArgument : "rot" "androtate*weilder.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_armed"
		/// @DnDSaveInfo : "sprite" "s_xoopington_armed"
		draw_sprite_ext(s_xoopington_armed, 0, weilder.x+(kickbackx+shakex), weilder.y+(shakey+kickbacky)-41+(weilder.head_offset_y)/2, 1, weilder.facing, image_angle + androtate*weilder.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0E2E3BE5
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x" "glorp_x+(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y+(shakey+kickbacky)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "-1*weilder.facing"
		/// @DnDArgument : "rot" "(androtate-(shoot_power*4))*weilder.facing+wobble1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_head"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "s_xoopington_head"
		draw_sprite_ext(s_xoopington_head, 0, x + glorp_x+(kickbackx+shakex), y + glorp_y+(shakey+kickbacky), 1, -1*weilder.facing, image_angle + (androtate-(shoot_power*4))*weilder.facing+wobble1, $FFFFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 57B73E23
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x" "glorp_x+(kickbackx+shakex)"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "glorp_y+(shakey+kickbacky)"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "yscale" "1*weilder.facing"
		/// @DnDArgument : "rot" "(androtate+(shoot_power*4))*weilder.facing-wobble1"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_xoopington_head"
		/// @DnDArgument : "col" "$FFFFFFFF"
		/// @DnDSaveInfo : "sprite" "s_xoopington_head"
		draw_sprite_ext(s_xoopington_head, 0, x + glorp_x+(kickbackx+shakex), y + glorp_y+(shakey+kickbacky), 1, 1*weilder.facing, image_angle + (androtate+(shoot_power*4))*weilder.facing-wobble1, $FFFFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3061A821
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "expr" "awesome_lockout"
		/// @DnDArgument : "not" "1"
		if(!(awesome_lockout)){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0A8545AD
			/// @DnDInput : 9
			/// @DnDParent : 3061A821
			/// @DnDArgument : "script" "draw_wheel_part"
			/// @DnDArgument : "arg" "o_cursor.x"
			/// @DnDArgument : "arg_1" "o_cursor.y"
			/// @DnDArgument : "arg_2" "43"
			/// @DnDArgument : "arg_3" "27"
			/// @DnDArgument : "arg_4" "c_black"
			/// @DnDArgument : "arg_5" "1"
			/// @DnDArgument : "arg_6" "((((reload_frame-(1*awesome_reload_width*global.reload_bonus)))/220)*360)+90"
			/// @DnDArgument : "arg_7" "(4*awesome_reload_width)*global.flat_reload_bonus"
			/// @DnDArgument : "arg_8" "1"
			/// @DnDSaveInfo : "script" "draw_wheel_part"
			script_execute(draw_wheel_part, o_cursor.x, o_cursor.y, 43, 27, c_black, 1, ((((reload_frame-(1*awesome_reload_width*global.reload_bonus)))/220)*360)+90, (4*awesome_reload_width)*global.flat_reload_bonus, 1);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 028FAA8A
			/// @DnDInput : 9
			/// @DnDParent : 3061A821
			/// @DnDArgument : "script" "draw_wheel_part"
			/// @DnDArgument : "arg" "o_cursor.x"
			/// @DnDArgument : "arg_1" "o_cursor.y"
			/// @DnDArgument : "arg_2" "40"
			/// @DnDArgument : "arg_3" "30"
			/// @DnDArgument : "arg_4" "awesome_color"
			/// @DnDArgument : "arg_5" "1"
			/// @DnDArgument : "arg_6" "((((reload_frame-(1*awesome_reload_width*global.reload_bonus)))/220)*360)+90"
			/// @DnDArgument : "arg_7" "(4*awesome_reload_width)*global.flat_reload_bonus"
			/// @DnDArgument : "arg_8" "1"
			/// @DnDSaveInfo : "script" "draw_wheel_part"
			script_execute(draw_wheel_part, o_cursor.x, o_cursor.y, 40, 30, awesome_color, 1, ((((reload_frame-(1*awesome_reload_width*global.reload_bonus)))/220)*360)+90, (4*awesome_reload_width)*global.flat_reload_bonus, 1);}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 505AB928
		/// @DnDInput : 11
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "script" "draw_wheel_ext"
		/// @DnDArgument : "arg" "o_cursor.x"
		/// @DnDArgument : "arg_1" "o_cursor.y"
		/// @DnDArgument : "arg_2" "40"
		/// @DnDArgument : "arg_3" "30"
		/// @DnDArgument : "arg_4" "c_lime"
		/// @DnDArgument : "arg_5" "220-charge"
		/// @DnDArgument : "arg_6" "220"
		/// @DnDArgument : "arg_7" "1"
		/// @DnDArgument : "arg_8" "90"
		/// @DnDArgument : "arg_9" "true"
		/// @DnDArgument : "arg_10" "1"
		/// @DnDSaveInfo : "script" "draw_wheel_ext"
		script_execute(draw_wheel_ext, o_cursor.x, o_cursor.y, 40, 30, c_lime, 220-charge, 220, 1, 90, true, 1);	break;}