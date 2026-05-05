/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0FA83F9B
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "mygurn.weilder"
mygurn.weilder = id;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 019412F2
/// @DnDArgument : "var" "control_type"
/// @DnDArgument : "value" "cr.LOCAL"
if(control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7DB897A8
	/// @DnDParent : 019412F2
	/// @DnDArgument : "expr" "o_game.state"
	var l7DB897A8_0 = o_game.state;switch(l7DB897A8_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 124C4701
		/// @DnDParent : 7DB897A8
		/// @DnDArgument : "const" "gm.PYLON"
		case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7D13822A
			/// @DnDParent : 124C4701
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "ps.DIE"
			if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Drawing.Set_Font
				/// @DnDVersion : 1
				/// @DnDHash : 3558142E
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "font" "imagine"
				/// @DnDSaveInfo : "font" "imagine"
				draw_set_font(imagine);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 0AC6B06A
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20+105"
				/// @DnDArgument : "y" "20+96"
				/// @DnDArgument : "xscale" "(hp/max_hp)*5"
				/// @DnDArgument : "sprite" "spr_tinyhudbar"
				/// @DnDArgument : "col" "$FFAFFF00"
				/// @DnDSaveInfo : "sprite" "spr_tinyhudbar"
				draw_sprite_ext(spr_tinyhudbar, 0, 20+105, 20+96, (hp/max_hp)*5, 1, 0, $FFAFFF00 & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 70269444
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20+105"
				/// @DnDArgument : "y" "20+96+28"
				/// @DnDArgument : "xscale" "v_fuel/(50*global.booster_bonus*booster_bonus)*5"
				/// @DnDArgument : "sprite" "spr_tinyhudbar"
				/// @DnDArgument : "col" "$FF0CEAFF"
				/// @DnDSaveInfo : "sprite" "spr_tinyhudbar"
				draw_sprite_ext(spr_tinyhudbar, 0, 20+105, 20+96+28, v_fuel/(50*global.booster_bonus*booster_bonus)*5, 1, 0, $FF0CEAFF & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 7D085003
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20+93"
				/// @DnDArgument : "y" "20+30+26+140"
				/// @DnDArgument : "xscale" "5.8"
				/// @DnDArgument : "yscale" "-1"
				/// @DnDArgument : "sprite" "spr_tinyhudbar"
				/// @DnDArgument : "col" "$FF000000"
				/// @DnDSaveInfo : "sprite" "spr_tinyhudbar"
				draw_sprite_ext(spr_tinyhudbar, 0, 20+93, 20+30+26+140, 5.8, -1, 0, $FF000000 & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 2A8D144D
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20+93"
				/// @DnDArgument : "y" "20+30+26+140"
				/// @DnDArgument : "xscale" "(special_meter/special_meter_cap)*5.8"
				/// @DnDArgument : "yscale" "-1"
				/// @DnDArgument : "sprite" "spr_tinyhudbar"
				/// @DnDArgument : "col" "$FF0000FF"
				/// @DnDSaveInfo : "sprite" "spr_tinyhudbar"
				draw_sprite_ext(spr_tinyhudbar, 0, 20+93, 20+30+26+140, (special_meter/special_meter_cap)*5.8, -1, 0, $FF0000FF & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 041E3228
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20"
				/// @DnDArgument : "y" "20"
				/// @DnDArgument : "xscale" ".76 + (string_width(character_index)/283)*1.3"
				/// @DnDArgument : "sprite" "spr_hud_element"
				/// @DnDArgument : "col" "suit_color"
				/// @DnDSaveInfo : "sprite" "spr_hud_element"
				draw_sprite_ext(spr_hud_element, 0, 20, 20, .76 + (string_width(character_index)/283)*1.3, 1, 0, suit_color & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 6633D184
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20+58"
				/// @DnDArgument : "y" "20+60"
				/// @DnDArgument : "sprite" "spr_icon"
				draw_sprite_ext(spr_icon, 0, 20+58, 20+60, 1, 1, 0, $FFFFFF & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 33A99E14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "20"
				/// @DnDArgument : "y" "40+140"
				/// @DnDArgument : "xscale" "1.1"
				/// @DnDArgument : "sprite" "spr_small_hud_element"
				/// @DnDArgument : "col" "suit_color"
				/// @DnDSaveInfo : "sprite" "spr_small_hud_element"
				draw_sprite_ext(spr_small_hud_element, 0, 20, 40+140, 1.1, 1, 0, suit_color & $ffffff, 1);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 6057FA9A
				/// @DnDInput : 14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+160"
				/// @DnDArgument : "arg_1" "20+32"
				/// @DnDArgument : "arg_2" "character_index"
				/// @DnDArgument : "arg_3" "$FFAFFF00"
				/// @DnDArgument : "arg_4" "$FFAFFF00"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "$FFAFFF00"
				/// @DnDArgument : "arg_7" "$FFAFFF00"
				/// @DnDArgument : "arg_8" ".1"
				/// @DnDArgument : "arg_9" "3"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" "1.3"
				/// @DnDArgument : "arg_12" "1.3"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
				script_execute(draw_text_colour_outline, 20+160, 20+32, character_index, $FFAFFF00, $FFAFFF00, 1, $FFAFFF00, $FFAFFF00, .1, 3, 8, 1.3, 1.3, 0);
			
				/// @DnDAction : YoYo Games.Drawing.Set_Alignment
				/// @DnDVersion : 1.1
				/// @DnDHash : 47C8028C
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "halign" "fa_center"
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 02826904
				/// @DnDInput : 14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+58"
				/// @DnDArgument : "arg_1" "20+80+12"
				/// @DnDArgument : "arg_2" "hp"
				/// @DnDArgument : "arg_3" "$FFAFFF00"
				/// @DnDArgument : "arg_4" "$FFAFFF00"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "$FFAFFF00"
				/// @DnDArgument : "arg_7" "$FFAFFF00"
				/// @DnDArgument : "arg_8" ".1"
				/// @DnDArgument : "arg_9" "3"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" "1"
				/// @DnDArgument : "arg_12" "1"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
				script_execute(draw_text_colour_outline, 20+58, 20+80+12, hp, $FFAFFF00, $FFAFFF00, 1, $FFAFFF00, $FFAFFF00, .1, 3, 8, 1, 1, 0);
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6F5549EB
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "boost_fuel"
				/// @DnDArgument : "value" "string(round(v_fuel/(50*global.booster_bonus*booster_bonus)*100)) + "%""
				var boost_fuel = string(round(v_fuel/(50*global.booster_bonus*booster_bonus)*100)) + "%";
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 4352B696
				/// @DnDInput : 14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+58"
				/// @DnDArgument : "arg_1" "20+120"
				/// @DnDArgument : "arg_2" "boost_fuel"
				/// @DnDArgument : "arg_3" "$FF0CEAFF"
				/// @DnDArgument : "arg_4" "$FF0CEAFF"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "$FF0CEAFF"
				/// @DnDArgument : "arg_7" "$FF0CEAFF"
				/// @DnDArgument : "arg_8" ".1"
				/// @DnDArgument : "arg_9" "3"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" "1"
				/// @DnDArgument : "arg_12" "1"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
				script_execute(draw_text_colour_outline, 20+58, 20+120, boost_fuel, $FF0CEAFF, $FF0CEAFF, 1, $FF0CEAFF, $FF0CEAFF, .1, 3, 8, 1, 1, 0);
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6D1D0F40
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "special_percent"
				/// @DnDArgument : "value" "string(round(special_meter/(special_meter_cap)*100)) + "%""
				var special_percent = string(round(special_meter/(special_meter_cap)*100)) + "%";
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3D5C3D4E
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "special_color"
				/// @DnDArgument : "value" "merge_colour(c_maroon, c_red, special_meter/special_meter_cap)"
				var special_color = merge_colour(c_maroon, c_red, special_meter/special_meter_cap);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 6BDECEE3
				/// @DnDInput : 14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+64"
				/// @DnDArgument : "arg_1" "20+120+65"
				/// @DnDArgument : "arg_2" "special_percent"
				/// @DnDArgument : "arg_3" "special_color"
				/// @DnDArgument : "arg_4" "special_color"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "special_color"
				/// @DnDArgument : "arg_7" "special_color"
				/// @DnDArgument : "arg_8" ".1"
				/// @DnDArgument : "arg_9" "3"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" "1"
				/// @DnDArgument : "arg_12" "1"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
				script_execute(draw_text_colour_outline, 20+64, 20+120+65, special_percent, special_color, special_color, 1, special_color, special_color, .1, 3, 8, 1, 1, 0);
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4C095ADB
				/// @DnDComment : susan... you're glowing...
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "the_glow"
				/// @DnDArgument : "value" "0"
				var the_glow = 0;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3CC4C385
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "special_meter"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "special_meter_cap"
				if(special_meter >= special_meter_cap){	/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 54626534
					/// @DnDComment : no like you're GLOWING
					/// @DnDInput : 2
					/// @DnDParent : 3CC4C385
					/// @DnDArgument : "var" "the_glow"
					/// @DnDArgument : "value" "abs(sin(current_time/300))"
					/// @DnDArgument : "var_1" "special_color"
					/// @DnDArgument : "value_1" "merge_colour(c_white, c_red, abs(sin(current_time/300)))"
					var the_glow = abs(sin(current_time/300));
					var special_color = merge_colour(c_white, c_red, abs(sin(current_time/300)));}
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 0461C700
				/// @DnDInput : 14
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+64+50"
				/// @DnDArgument : "arg_1" "20+120+96"
				/// @DnDArgument : "arg_2" ""SPECIAL""
				/// @DnDArgument : "arg_3" "special_color"
				/// @DnDArgument : "arg_4" "special_color"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "special_color"
				/// @DnDArgument : "arg_7" "special_color"
				/// @DnDArgument : "arg_8" ".1+the_glow*.1"
				/// @DnDArgument : "arg_9" "3+the_glow"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" "1"
				/// @DnDArgument : "arg_12" "1"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
				script_execute(draw_text_colour_outline, 20+64+50, 20+120+96, "SPECIAL", special_color, special_color, 1, special_color, special_color, .1+the_glow*.1, 3+the_glow, 8, 1, 1, 0);
			
				/// @DnDAction : YoYo Games.Drawing.Set_Alignment
				/// @DnDVersion : 1.1
				/// @DnDHash : 3AB3CF72
				/// @DnDParent : 7D13822A
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 6EC42F28
				/// @DnDInput : 14
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "script" "draw_text_colour_outline"
				/// @DnDArgument : "arg" "20+160"
				/// @DnDArgument : "arg_1" "153+20+86"
				/// @DnDArgument : "arg_2" ""boost""
				/// @DnDArgument : "arg_3" "$FF0CEAFF"
				/// @DnDArgument : "arg_4" "$FF0CEAFF"
				/// @DnDArgument : "arg_5" "1"
				/// @DnDArgument : "arg_6" "$FF0CEAFF"
				/// @DnDArgument : "arg_7" "$FF0CEAFF"
				/// @DnDArgument : "arg_8" ".2"
				/// @DnDArgument : "arg_9" "3"
				/// @DnDArgument : "arg_10" "8"
				/// @DnDArgument : "arg_11" ".8"
				/// @DnDArgument : "arg_12" ".8"
				/// @DnDArgument : "arg_13" "0"
				/// @DnDSaveInfo : "script" "draw_text_colour_outline"
			
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
				/// @DnDVersion : 1
				/// @DnDHash : 086CB9CD
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "99"
				/// @DnDArgument : "y" "70"
				/// @DnDArgument : "sprite" "s_health"
				/// @DnDArgument : "number" "hp*2"
				/// @DnDSaveInfo : "sprite" "s_health"
			
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 360E5C27
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "70"
				/// @DnDArgument : "y" "70"
				/// @DnDArgument : "alpha" "sin(iframes/2)+1"
				/// @DnDArgument : "sprite" "s_gurch_icon"
				/// @DnDArgument : "col" "$FFFFFFFF"
				/// @DnDSaveInfo : "sprite" "s_gurch_icon"
			
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
				/// @DnDVersion : 1
				/// @DnDHash : 36415906
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "95"
				/// @DnDArgument : "y" "108"
				/// @DnDArgument : "sprite" "s_fuel"
				/// @DnDArgument : "number" "v_fuel/2"
				/// @DnDSaveInfo : "sprite" "s_fuel"
			
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 034187CB
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x" "75"
				/// @DnDArgument : "y" "108"
				/// @DnDArgument : "sprite" "s_boosters"
				/// @DnDArgument : "col" "$FFFFFFFF"
				/// @DnDSaveInfo : "sprite" "s_boosters"
			
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
				/// @DnDVersion : 1
				/// @DnDHash : 1D2FA45E
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "x1" "94"
				/// @DnDArgument : "y1" "130"
				/// @DnDArgument : "x2" "271"
				/// @DnDArgument : "y2" "140"
				/// @DnDArgument : "value" "(special_meter/special_meter_cap)*100"
				/// @DnDArgument : "backcol" "$FF990000"
				/// @DnDArgument : "barcol" "$FFFFFF00"
			
			
				/// @DnDAction : YoYo Games.Drawing.Set_Font
				/// @DnDVersion : 1
				/// @DnDHash : 65F5D871
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "font" "fontTbyDefault"
				/// @DnDSaveInfo : "font" "fontTbyDefault"
				draw_set_font(fontTbyDefault);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 392E8E60
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "special_meter"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "special_meter_cap"
				if(special_meter >= special_meter_cap){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 3E05395E
					/// @DnDParent : 392E8E60
					/// @DnDArgument : "x" "290"
					/// @DnDArgument : "y" "120"
					/// @DnDArgument : "yscale" "floor((current_time*.002)%2)"
					/// @DnDArgument : "caption" ""PRESS ""
					/// @DnDArgument : "text" "InputVerbGetBindingName(INPUT_VERB.SPECIAL)"
					draw_text_transformed(290, 120, string("PRESS ") + string(InputVerbGetBindingName(INPUT_VERB.SPECIAL)), 1, floor((current_time*.002)%2), 0);}
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4DB34CD8
				/// @DnDDisabled : 1
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "wep_display_sprite"
				/// @DnDArgument : "value" "object_get_sprite(mygurn.object_index)"
			
			
				/// @DnDAction : YoYo Games.Data Structures.List_Count
				/// @DnDVersion : 1
				/// @DnDHash : 3CC1F610
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "assignee" "weapon_iteration_num"
				/// @DnDArgument : "assignee_temp" "1"
				/// @DnDArgument : "var" "weapon_invo"
				var weapon_iteration_num = ds_list_size(weapon_invo);
			
				/// @DnDAction : YoYo Games.Loops.For_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 32D802F8
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "cond" "i < weapon_iteration_num"
				for(i = 0; i < weapon_iteration_num; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
					/// @DnDVersion : 1
					/// @DnDHash : 0C2D2678
					/// @DnDParent : 32D802F8
					/// @DnDArgument : "assignee" "weapon_iteration"
					/// @DnDArgument : "assignee_temp" "1"
					/// @DnDArgument : "var" "weapon_invo"
					/// @DnDArgument : "index" "i"
					var weapon_iteration = ds_list_find_value(weapon_invo, i);
				
					/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
					/// @DnDVersion : 1
					/// @DnDHash : 0F4691C0
					/// @DnDParent : 32D802F8
					/// @DnDArgument : "assignee" "is_this_weapon_reloading"
					/// @DnDArgument : "assignee_temp" "1"
					/// @DnDArgument : "var" "weapon_reload_info"
					/// @DnDArgument : "key" "weapon_iteration"
					var is_this_weapon_reloading = ds_map_find_value(weapon_reload_info, weapon_iteration);
				
					/// @DnDAction : YoYo Games.Common.If_Undefined
					/// @DnDVersion : 1
					/// @DnDHash : 61A4EE58
					/// @DnDComment : BRO THE WEAPON IS RELOADING!
					/// @DnDParent : 32D802F8
					/// @DnDArgument : "var" "is_this_weapon_reloading"
					/// @DnDArgument : "not" "1"
					if(is_this_weapon_reloading != undefined){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
						/// @DnDVersion : 1
						/// @DnDHash : 143A2B7A
						/// @DnDParent : 61A4EE58
						/// @DnDArgument : "x" "15"
						/// @DnDArgument : "y" "770 - i*50"
						/// @DnDArgument : "xscale" "is_this_weapon_reloading*.01 + sprite_get_width(comb_background)/sprite_get_width(comb_background) +.1"
						/// @DnDArgument : "alpha" ".8"
						/// @DnDArgument : "sprite" "comb_background"
						/// @DnDSaveInfo : "sprite" "comb_background"
						draw_sprite_ext(comb_background, 0, 15, 770 - i*50, is_this_weapon_reloading*.01 + sprite_get_width(comb_background)/sprite_get_width(comb_background) +.1, 1, 0, $FFFFFF & $ffffff, .8);
					
						/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
						/// @DnDVersion : 1
						/// @DnDHash : 2F6115B2
						/// @DnDParent : 61A4EE58
						/// @DnDArgument : "x" "30"
						/// @DnDArgument : "y" "793-i*50"
						/// @DnDArgument : "xscale" ".7"
						/// @DnDArgument : "yscale" ".7"
						/// @DnDArgument : "sprite" "object_get_sprite(weapon_iteration)"
						/// @DnDArgument : "col" "$FFB2B2B2"
						draw_sprite_ext(object_get_sprite(weapon_iteration), 0, 30, 793-i*50, .7, .7, 0, $FFB2B2B2 & $ffffff, 1);
					
						/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
						/// @DnDVersion : 1
						/// @DnDHash : 65688E0C
						/// @DnDParent : 61A4EE58
						/// @DnDArgument : "x" "45"
						/// @DnDArgument : "y" "797-i*50"
						/// @DnDArgument : "sprite" "s_bullet_shell"
						/// @DnDArgument : "number" "floor(is_this_weapon_reloading/6)"
						/// @DnDSaveInfo : "sprite" "s_bullet_shell"
						var l65688E0C_0 = sprite_get_width(s_bullet_shell);var l65688E0C_1 = 0;for(var l65688E0C_2 = floor(is_this_weapon_reloading/6); l65688E0C_2 > 0; --l65688E0C_2) {	draw_sprite(s_bullet_shell, 0, 45 + l65688E0C_1, 797-i*50);	l65688E0C_1 += l65688E0C_0;}}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 62E7BEFA
				/// @DnDParent : 7D13822A
				/// @DnDArgument : "var" "mygurn.object_index"
				/// @DnDArgument : "not" "1"
				/// @DnDArgument : "value" "o_emptyhanded"
				if(!(mygurn.object_index == o_emptyhanded)){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 25014A49
					/// @DnDInput : 2
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "expr" "object_get_sprite(mygurn.object_index)"
					/// @DnDArgument : "expr_1" "sprite_get_width(wep_display_sprite)"
					/// @DnDArgument : "var" "wep_display_sprite"
					/// @DnDArgument : "var_1" "wep_display_width"
					wep_display_sprite = object_get_sprite(mygurn.object_index);
					wep_display_width = sprite_get_width(wep_display_sprite);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 57ABEC68
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "15+9"
					/// @DnDArgument : "y" "840+60"
					/// @DnDArgument : "xscale" "29+(wep_display_width*.005)*29.1"
					/// @DnDArgument : "yscale" "13.3"
					/// @DnDArgument : "alpha" ".2"
					/// @DnDArgument : "sprite" "s_scanline"
					/// @DnDArgument : "frame" "(current_time/16.66666)/5.2 %5"
					/// @DnDSaveInfo : "sprite" "s_scanline"
					draw_sprite_ext(s_scanline, (current_time/16.66666)/5.2 %5, 15+9, 840+60, 29+(wep_display_width*.005)*29.1, 13.3, 0, $FFFFFF & $ffffff, .2);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 11D14B5B
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "15"
					/// @DnDArgument : "y" "840"
					/// @DnDArgument : "xscale" "1+wep_display_width*.005"
					/// @DnDArgument : "alpha" ".8"
					/// @DnDArgument : "sprite" "s_gun_hud"
					/// @DnDSaveInfo : "sprite" "s_gun_hud"
					draw_sprite_ext(s_gun_hud, 0, 15, 840, 1+wep_display_width*.005, 1, 0, $FFFFFF & $ffffff, .8);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 5D7F9C74
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "wep_display_width/2 + 30"
					/// @DnDArgument : "y" "990"
					/// @DnDArgument : "sprite" "wep_display_sprite"
					draw_sprite_ext(wep_display_sprite, 0, wep_display_width/2 + 30, 990, 1, 1, 0, $FFFFFF & $ffffff, 1);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 415858CF
					/// @DnDInput : 14
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "script" "draw_text_colour_outline"
					/// @DnDArgument : "arg" "30"
					/// @DnDArgument : "arg_1" "854"
					/// @DnDArgument : "arg_2" ""LVL  " + string(curr_weapon_level) + " / " + string(scr_weapon_max_levels(mygurn.object_index))"
					/// @DnDArgument : "arg_3" "$FFAFFF00"
					/// @DnDArgument : "arg_4" "$FFAFFF00"
					/// @DnDArgument : "arg_5" "1"
					/// @DnDArgument : "arg_6" "c_blue"
					/// @DnDArgument : "arg_7" "c_black"
					/// @DnDArgument : "arg_8" "1"
					/// @DnDArgument : "arg_9" "2"
					/// @DnDArgument : "arg_10" "8"
					/// @DnDArgument : "arg_11" "1"
					/// @DnDArgument : "arg_12" "1"
					/// @DnDArgument : "arg_13" "0"
					/// @DnDSaveInfo : "script" "draw_text_colour_outline"
					script_execute(draw_text_colour_outline, 30, 854, "LVL  " + string(curr_weapon_level) + " / " + string(scr_weapon_max_levels(mygurn.object_index)), $FFAFFF00, $FFAFFF00, 1, c_blue, c_black, 1, 2, 8, 1, 1, 0);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Value
					/// @DnDVersion : 1
					/// @DnDHash : 446DCB1A
					/// @DnDDisabled : 1
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "wep_display_width-20"
					/// @DnDArgument : "y" "880"
					/// @DnDArgument : "caption" """"
					/// @DnDArgument : "var" "scr_weapon_names(mygurn.object_index)"
				
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 071442C1
					/// @DnDInput : 14
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "script" "draw_text_colour_outline"
					/// @DnDArgument : "arg" "35"
					/// @DnDArgument : "arg_1" "925"
					/// @DnDArgument : "arg_2" "scr_weapon_names(mygurn.object_index)"
					/// @DnDArgument : "arg_3" "c_white"
					/// @DnDArgument : "arg_4" "c_gray"
					/// @DnDArgument : "arg_5" "1"
					/// @DnDArgument : "arg_6" "c_black"
					/// @DnDArgument : "arg_7" "c_black"
					/// @DnDArgument : "arg_8" "1"
					/// @DnDArgument : "arg_9" "1"
					/// @DnDArgument : "arg_10" "4"
					/// @DnDArgument : "arg_11" "1"
					/// @DnDArgument : "arg_12" "1"
					/// @DnDArgument : "arg_13" "0"
					/// @DnDSaveInfo : "script" "draw_text_colour_outline"
					script_execute(draw_text_colour_outline, 35, 925, scr_weapon_names(mygurn.object_index), c_white, c_gray, 1, c_black, c_black, 1, 1, 4, 1, 1, 0);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 1E737CBA
					/// @DnDDisabled : 1
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "40+wep_display_width"
					/// @DnDArgument : "y" "980"
					/// @DnDArgument : "caption" """"
					/// @DnDArgument : "text" "string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus*ammo_bonus))"
				
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 44FEBB93
					/// @DnDInput : 14
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "script" "draw_text_colour_outline"
					/// @DnDArgument : "arg" "40+wep_display_width"
					/// @DnDArgument : "arg_1" "980"
					/// @DnDArgument : "arg_2" "string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus*ammo_bonus))"
					/// @DnDArgument : "arg_3" "c_white"
					/// @DnDArgument : "arg_4" "c_white"
					/// @DnDArgument : "arg_5" "1"
					/// @DnDArgument : "arg_6" "c_black"
					/// @DnDArgument : "arg_7" "c_black"
					/// @DnDArgument : "arg_8" "1"
					/// @DnDArgument : "arg_9" "1"
					/// @DnDArgument : "arg_10" "4"
					/// @DnDArgument : "arg_11" "1"
					/// @DnDArgument : "arg_12" "1"
					/// @DnDArgument : "arg_13" "0"
					/// @DnDSaveInfo : "script" "draw_text_colour_outline"
					script_execute(draw_text_colour_outline, 40+wep_display_width, 980, string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus*ammo_bonus)), c_white, c_white, 1, c_black, c_black, 1, 1, 4, 1, 1, 0);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 2F3B619C
					/// @DnDDisabled : 1
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "160 +wep_display_width"
					/// @DnDArgument : "y" "960"
					/// @DnDArgument : "caption" ""Fire Rate: ""
					/// @DnDArgument : "text" "global.firerate_bonus*firerate_bonus"
				
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3CF86020
					/// @DnDInput : 14
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "script" "draw_text_colour_outline"
					/// @DnDArgument : "arg" "160 +wep_display_width"
					/// @DnDArgument : "arg_1" "920"
					/// @DnDArgument : "arg_2" ""Fire Rate: " + string(global.firerate_bonus*firerate_bonus)"
					/// @DnDArgument : "arg_3" "c_white"
					/// @DnDArgument : "arg_4" "c_orangish"
					/// @DnDArgument : "arg_5" "1"
					/// @DnDArgument : "arg_6" "c_black"
					/// @DnDArgument : "arg_7" "c_red"
					/// @DnDArgument : "arg_8" "1"
					/// @DnDArgument : "arg_9" "1"
					/// @DnDArgument : "arg_10" "4"
					/// @DnDArgument : "arg_11" "1"
					/// @DnDArgument : "arg_12" "1"
					/// @DnDArgument : "arg_13" "0"
					/// @DnDSaveInfo : "script" "draw_text_colour_outline"
					script_execute(draw_text_colour_outline, 160 +wep_display_width, 920, "Fire Rate: " + string(global.firerate_bonus*firerate_bonus), c_white, c_orangish, 1, c_black, c_red, 1, 1, 4, 1, 1, 0);
				
					/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
					/// @DnDVersion : 1
					/// @DnDHash : 1984EF5C
					/// @DnDDisabled : 1
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "x" "160 + wep_display_width"
					/// @DnDArgument : "y" "1000"
					/// @DnDArgument : "caption" ""Reload Speed: ""
					/// @DnDArgument : "text" "global.reload_bonus"
				
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0F514B0E
					/// @DnDInput : 14
					/// @DnDParent : 62E7BEFA
					/// @DnDArgument : "script" "draw_text_colour_outline"
					/// @DnDArgument : "arg" "140 +wep_display_width"
					/// @DnDArgument : "arg_1" "950"
					/// @DnDArgument : "arg_2" ""Reload Speed: " + string(global.reload_bonus*reload_bonus)"
					/// @DnDArgument : "arg_3" "c_white"
					/// @DnDArgument : "arg_4" "c_teal"
					/// @DnDArgument : "arg_5" "1"
					/// @DnDArgument : "arg_6" "c_black"
					/// @DnDArgument : "arg_7" "c_blue"
					/// @DnDArgument : "arg_8" "1"
					/// @DnDArgument : "arg_9" "1"
					/// @DnDArgument : "arg_10" "4"
					/// @DnDArgument : "arg_11" "1"
					/// @DnDArgument : "arg_12" "1"
					/// @DnDArgument : "arg_13" "0"
					/// @DnDSaveInfo : "script" "draw_text_colour_outline"
					script_execute(draw_text_colour_outline, 140 +wep_display_width, 950, "Reload Speed: " + string(global.reload_bonus*reload_bonus), c_white, c_teal, 1, c_black, c_blue, 1, 1, 4, 1, 1, 0);}}	break;}}