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
		/// @DnDArgument : "rot" "androtate*o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_shotgun_w_hands"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_shotgun_w_hands"
		draw_sprite_ext(s_shotgun_w_hands, image_index, o_player.x+(kickbackx+shakex), o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);	break;

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
		/// @DnDArgument : "sprite" "sprite_index"
		/// @DnDArgument : "frame" "image_index"
		draw_sprite_ext(sprite_index, image_index, x + o_player.facing*kickbackx+shakex, y + shakey+kickbacky, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);	break;

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
		/// @DnDArgument : "sprite" "sprite_index"
		draw_sprite_ext(sprite_index, 0, x + o_player.facing*kickbackx+shakex, y + shakey+kickbacky, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);
	
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
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 08A3FCFE
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x" "o_player.x+(kickbackx+shakex)"
		/// @DnDArgument : "y" "o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2"
		/// @DnDArgument : "yscale" "o_player.facing"
		/// @DnDArgument : "rot" "androtate*o_player.facing"
		/// @DnDArgument : "rot_relative" "1"
		/// @DnDArgument : "sprite" "s_shotgun_w_hands"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "s_shotgun_w_hands"
		draw_sprite_ext(s_shotgun_w_hands, image_index, o_player.x+(kickbackx+shakex), o_player.y+(shakey+kickbacky)-41+(o_player.head_offset_y)/2, 1, o_player.facing, image_angle + androtate*o_player.facing, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 5327811E
		/// @DnDDisabled : 1
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "x1" "mouse_x-19"
		/// @DnDArgument : "y1" "mouse_y-50"
		/// @DnDArgument : "x2" "mouse_x-2"
		/// @DnDArgument : "y2" "mouse_y+50"
		/// @DnDArgument : "direction" "3"
		/// @DnDArgument : "value" "100-(charge/120 * 100)"
		/// @DnDArgument : "backcol" "$BD000000"
		/// @DnDArgument : "barcol" "$00000000"
		/// @DnDArgument : "mincol" "$FFFF0000"
		/// @DnDArgument : "maxcol" "$FF00FF00"
	
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 0F518286
		/// @DnDInput : 11
		/// @DnDParent : 2FA5C165
		/// @DnDArgument : "script" "draw_wheel_ext"
		/// @DnDArgument : "arg" "mouse_x"
		/// @DnDArgument : "arg_1" "mouse_y"
		/// @DnDArgument : "arg_2" "40"
		/// @DnDArgument : "arg_3" "30"
		/// @DnDArgument : "arg_4" "c_lime"
		/// @DnDArgument : "arg_5" "charge"
		/// @DnDArgument : "arg_6" "120"
		/// @DnDArgument : "arg_7" "1"
		/// @DnDArgument : "arg_8" "90"
		/// @DnDArgument : "arg_9" "false"
		/// @DnDArgument : "arg_10" "1"
		/// @DnDSaveInfo : "script" "draw_wheel_ext"
		script_execute(draw_wheel_ext, mouse_x, mouse_y, 40, 30, c_lime, charge, 120, 1, 90, false, 1);	break;}