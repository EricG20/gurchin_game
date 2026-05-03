/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 268BCF82
/// @DnDArgument : "expr" "find_state"
var l268BCF82_0 = find_state;switch(l268BCF82_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 10C9BB31
	/// @DnDParent : 268BCF82
	/// @DnDArgument : "const" "enter.CODE"
	case enter.CODE:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 530A6A16
		/// @DnDParent : 10C9BB31
		/// @DnDArgument : "expr" "connecting"
		/// @DnDArgument : "not" "1"
		if(!(connecting)){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 56C19AD5
			/// @DnDParent : 530A6A16
			/// @DnDArgument : "x" "960"
			/// @DnDArgument : "y" "70"
			/// @DnDArgument : "caption" ""Enter the room code: ""
			/// @DnDArgument : "text" "join_code"
			draw_text_transformed(960, 70, string("Enter the room code: ") + string(join_code), 1, 1, 0);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 52734F12
	/// @DnDParent : 268BCF82
	/// @DnDArgument : "const" "enter.CHOOSING"
	case enter.CHOOSING:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 59E23A23
		/// @DnDParent : 52734F12
		/// @DnDArgument : "x" "960"
		/// @DnDArgument : "y" "540"
		/// @DnDArgument : "xscale" "5.57*31"
		/// @DnDArgument : "yscale" "5.5*16*display_alpha"
		/// @DnDArgument : "alpha" "display_alpha*.2"
		/// @DnDArgument : "sprite" "s_scanline_center"
		/// @DnDArgument : "frame" "(current_time/16.66666)/5.2 %5"
		/// @DnDSaveInfo : "sprite" "s_scanline_center"
		draw_sprite_ext(s_scanline_center, (current_time/16.66666)/5.2 %5, 960, 540, 5.57*31, 5.5*16*display_alpha, 0, $FFFFFF & $ffffff, display_alpha*.2);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 38C90418
		/// @DnDParent : 52734F12
		/// @DnDArgument : "x" "960"
		/// @DnDArgument : "y" "540"
		/// @DnDArgument : "xscale" "31"
		/// @DnDArgument : "yscale" "16*display_alpha"
		/// @DnDArgument : "alpha" "display_alpha"
		/// @DnDArgument : "sprite" "zorb_uibox_centered"
		/// @DnDSaveInfo : "sprite" "zorb_uibox_centered"
		draw_sprite_ext(zorb_uibox_centered, 0, 960, 540, 31, 16*display_alpha, 0, $FFFFFF & $ffffff, display_alpha);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 4223CCB2
		/// @DnDParent : 52734F12
		/// @DnDArgument : "x" "960"
		/// @DnDArgument : "y" "330+((420)*(chosen_mode))"
		/// @DnDArgument : "xscale" "30"
		/// @DnDArgument : "yscale" "(15/2)*display_alpha"
		/// @DnDArgument : "alpha" ".5*(display_alpha*(sin(current_time/700)+1))"
		/// @DnDArgument : "sprite" "zorb_uibox_centered_highlight"
		/// @DnDSaveInfo : "sprite" "zorb_uibox_centered_highlight"
		draw_sprite_ext(zorb_uibox_centered_highlight, 0, 960, 330+((420)*(chosen_mode)), 30, (15/2)*display_alpha, 0, $FFFFFF & $ffffff, .5*(display_alpha*(sin(current_time/700)+1)));
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 29F8DED1
		/// @DnDParent : 52734F12
		/// @DnDArgument : "font" "fontTbyDefault"
		/// @DnDSaveInfo : "font" "fontTbyDefault"
		draw_set_font(fontTbyDefault);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 06B75B21
		/// @DnDInput : 14
		/// @DnDParent : 52734F12
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "320"
		/// @DnDArgument : "arg_1" "330-100"
		/// @DnDArgument : "arg_2" ""Enter Code""
		/// @DnDArgument : "arg_3" "c_white"
		/// @DnDArgument : "arg_4" "c_yellow"
		/// @DnDArgument : "arg_5" "display_alpha"
		/// @DnDArgument : "arg_6" "c_orange"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "display_alpha"
		/// @DnDArgument : "arg_9" "3"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "3"
		/// @DnDArgument : "arg_12" "3"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, 320, 330-100, "Enter Code", c_white, c_yellow, display_alpha, c_orange, c_black, display_alpha, 3, 6, 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 39331D45
		/// @DnDInput : 14
		/// @DnDParent : 52734F12
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "520"
		/// @DnDArgument : "arg_1" "350-0"
		/// @DnDArgument : "arg_2" ""*Doesn't support LAN. Requires the host to port forward.*""
		/// @DnDArgument : "arg_3" "c_gray"
		/// @DnDArgument : "arg_4" "c_gray"
		/// @DnDArgument : "arg_5" "display_alpha"
		/// @DnDArgument : "arg_6" "c_black"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "display_alpha"
		/// @DnDArgument : "arg_9" "2"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "1"
		/// @DnDArgument : "arg_12" "1"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, 520, 350-0, "*Doesn't support LAN. Requires the host to port forward.*", c_gray, c_gray, display_alpha, c_black, c_black, display_alpha, 2, 6, 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7033F27E
		/// @DnDInput : 14
		/// @DnDParent : 52734F12
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "320"
		/// @DnDArgument : "arg_1" "750-100"
		/// @DnDArgument : "arg_2" ""Enter IP Address""
		/// @DnDArgument : "arg_3" "c_white"
		/// @DnDArgument : "arg_4" "c_yellow"
		/// @DnDArgument : "arg_5" "display_alpha"
		/// @DnDArgument : "arg_6" "c_orange"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "display_alpha"
		/// @DnDArgument : "arg_9" "3"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "3"
		/// @DnDArgument : "arg_12" "3"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, 320, 750-100, "Enter IP Address", c_white, c_yellow, display_alpha, c_orange, c_black, display_alpha, 3, 6, 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 353595D2
		/// @DnDInput : 14
		/// @DnDParent : 52734F12
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "520"
		/// @DnDArgument : "arg_1" "770-0"
		/// @DnDArgument : "arg_2" ""*Will work with LAN. Consider using a VPN to make things easier.*""
		/// @DnDArgument : "arg_3" "c_gray"
		/// @DnDArgument : "arg_4" "c_gray"
		/// @DnDArgument : "arg_5" "display_alpha"
		/// @DnDArgument : "arg_6" "c_black"
		/// @DnDArgument : "arg_7" "c_black"
		/// @DnDArgument : "arg_8" "display_alpha"
		/// @DnDArgument : "arg_9" "2"
		/// @DnDArgument : "arg_10" "6"
		/// @DnDArgument : "arg_11" "1"
		/// @DnDArgument : "arg_12" "1"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, 520, 770-0, "*Will work with LAN. Consider using a VPN to make things easier.*", c_gray, c_gray, display_alpha, c_black, c_black, display_alpha, 2, 6, 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 4F7F6AC2
		/// @DnDParent : 52734F12
		/// @DnDArgument : "font" "fontTbyDefault"
		/// @DnDSaveInfo : "font" "fontTbyDefault"
		draw_set_font(fontTbyDefault);	break;}