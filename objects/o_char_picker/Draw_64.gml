/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7C8326A6
/// @DnDInput : 3
/// @DnDArgument : "script" "draw_border"
/// @DnDArgument : "arg" "960"
/// @DnDArgument : "arg_1" "0"
/// @DnDArgument : "arg_2" "-1"
/// @DnDSaveInfo : "script" "draw_border"
script_execute(draw_border, 960, 0, -1);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 5CEF23D5
/// @DnDArgument : "init_temp" "1"
/// @DnDArgument : "cond" "i < 18"
for(var i = 0; i < 18; i += 1) {	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 7DB8675A
	/// @DnDParent : 5CEF23D5
	/// @DnDArgument : "x" "-((current_time%4000)/4) - 1000*i + 3000"
	/// @DnDArgument : "y" "34"
	/// @DnDArgument : "xscale" "2"
	/// @DnDArgument : "yscale" "2"
	/// @DnDArgument : "caption" ""CHOOSE YOUR CHARACTER""
	draw_text_transformed(-((current_time%4000)/4) - 1000*i + 3000, 34, string("CHOOSE YOUR CHARACTER") + "", 2, 2, 0);}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2D0A9759
/// @DnDInput : 3
/// @DnDArgument : "script" "draw_border"
/// @DnDArgument : "arg" "960"
/// @DnDArgument : "arg_1" "1080"
/// @DnDArgument : "arg_2" "1"
/// @DnDSaveInfo : "script" "draw_border"
script_execute(draw_border, 960, 1080, 1);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0F24C25F
/// @DnDArgument : "cond" "i < ds_list_size(char_list)"
for(i = 0; i < ds_list_size(char_list); i += 1) {	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6D2EE6A9
	/// @DnDInput : 6
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "character_icon"
	/// @DnDArgument : "value" "s_gurchin_ico"
	/// @DnDArgument : "var_1" "character_portrait"
	/// @DnDArgument : "value_1" "s_gurchin_portrait"
	/// @DnDArgument : "var_2" "char_backdrop"
	/// @DnDArgument : "value_2" "s_gurchin_backdrop"
	/// @DnDArgument : "var_3" "char_desc"
	/// @DnDArgument : "value_3" ""This is a person who does things""
	/// @DnDArgument : "var_4" "hp_string"
	/// @DnDArgument : "value_4" ""7""
	/// @DnDArgument : "var_5" "speed_string"
	/// @DnDArgument : "value_5" ""5.5""
	var character_icon = s_gurchin_ico;
	var character_portrait = s_gurchin_portrait;
	var char_backdrop = s_gurchin_backdrop;
	var char_desc = "This is a person who does things";
	var hp_string = "7";
	var speed_string = "5.5";

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 5F9178DE
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "expr" "ds_list_find_value(char_list, i)"
	var l5F9178DE_0 = ds_list_find_value(char_list, i);switch(l5F9178DE_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 15E6DD99
		/// @DnDParent : 5F9178DE
		/// @DnDArgument : "const" ""Zelinka""
		case "Zelinka":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53C6CAC6
			/// @DnDInput : 3
			/// @DnDParent : 15E6DD99
			/// @DnDArgument : "expr" "s_zelinka_ico"
			/// @DnDArgument : "expr_1" ""5""
			/// @DnDArgument : "expr_2" ""6.8""
			/// @DnDArgument : "var" "character_icon"
			/// @DnDArgument : "var_1" "hp_string"
			/// @DnDArgument : "var_2" "speed_string"
			character_icon = s_zelinka_ico;
			hp_string = "5";
			speed_string = "6.8";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 441CAE1D
		/// @DnDParent : 5F9178DE
		/// @DnDArgument : "const" ""J0UL3S""
		case "J0UL3S":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 31B60C65
			/// @DnDParent : 441CAE1D
			/// @DnDArgument : "expr" "s_joules_ico"
			/// @DnDArgument : "var" "character_icon"
			character_icon = s_joules_ico;	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3579BA06
		/// @DnDParent : 5F9178DE
		/// @DnDArgument : "const" ""Gurchin""
		case "Gurchin":	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 18943E46
			/// @DnDParent : 3579BA06
			/// @DnDArgument : "expr" ""The Zorbulan Empire was lucky to find Gurchin as their star mechanic. Responsible for engineering 40% of Zorbulon’s modern artillery, there is no end to his metal machinations. Though none compare to the technological marvel that is the Load Variable Limit (LVL) system. Physically, he is not special, but his contributions to everyone’s arsenal easily makes up for it.\n\n For his special, he deploys a turret.""
			/// @DnDArgument : "var" "char_desc"
			char_desc = "The Zorbulan Empire was lucky to find Gurchin as their star mechanic. Responsible for engineering 40% of Zorbulon’s modern artillery, there is no end to his metal machinations. Though none compare to the technological marvel that is the Load Variable Limit (LVL) system. Physically, he is not special, but his contributions to everyone’s arsenal easily makes up for it.\n\n For his special, he deploys a turret.";	break;}

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 06DB624C
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "selected_bool"
	/// @DnDArgument : "value" "i == char_in_question"
	var selected_bool = i == char_in_question;

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 128D1286
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "dist"
	/// @DnDArgument : "value" "abs(i - scroll_pos)"
	var dist = abs(i - scroll_pos);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F5ABA7B
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "fade"
	/// @DnDArgument : "value" "clamp(dist, 0, 1)"
	var fade = clamp(dist, 0, 1);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 609DB05A
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "details_string"
	/// @DnDArgument : "value" ""HP: " + hp_string + "                " + "SPD: " + speed_string"
	var details_string = "HP: " + hp_string + "                " + "SPD: " + speed_string;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 03E5D938
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "expr" "merge_colour(c_white, fade_out_color, fade)"
	/// @DnDArgument : "var" "icon_color"
	icon_color = merge_colour(c_white, fade_out_color, fade);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 421F1881
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "x" "1650 - (1-fade)*220"
	/// @DnDArgument : "y" "540"
	/// @DnDArgument : "xscale" ".9"
	/// @DnDArgument : "yscale" ".9"
	/// @DnDArgument : "alpha" "(1-fade)*.7"
	/// @DnDArgument : "sprite" "char_backdrop"
	draw_sprite_ext(char_backdrop, 0, 1650 - (1-fade)*220, 540, .9, .9, 0, $FFFFFF & $ffffff, (1-fade)*.7);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 54ACB088
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "x" "960 + (i- scroll_pos)*100"
	/// @DnDArgument : "y" "980 + power(abs(i- scroll_pos)*3.4, 2)"
	/// @DnDArgument : "xscale" "selected_bool ? 1: .6"
	/// @DnDArgument : "yscale" "selected_bool ? 1: .6"
	/// @DnDArgument : "sprite" "character_icon"
	/// @DnDArgument : "col" "icon_color"
	draw_sprite_ext(character_icon, 0, 960 + (i- scroll_pos)*100, 980 + power(abs(i- scroll_pos)*3.4, 2), selected_bool ? 1: .6, selected_bool ? 1: .6, 0, icon_color & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 790D7023
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 1C3D73ED
	/// @DnDInput : 3
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "var" "char_desc"
	/// @DnDArgument : "function" "wrap_text"
	/// @DnDArgument : "arg" "char_desc"
	/// @DnDArgument : "arg_1" "60"
	/// @DnDArgument : "arg_2" "2"
	char_desc = wrap_text(char_desc, 60, 2);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 435FC3C5
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "x" "(-(string_width(char_desc)/1.2)*(.5*1.36))+960+150*(1-fade)"
	/// @DnDArgument : "y" "130"
	/// @DnDArgument : "xscale" "(string_width(char_desc)/12)*1.36"
	/// @DnDArgument : "yscale" "10*2.3+string_height(char_desc)/10"
	/// @DnDArgument : "alpha" "(1-fade)*.5"
	/// @DnDArgument : "sprite" "s_scanline"
	/// @DnDArgument : "frame" "scr_anim_index(18, 5)"
	/// @DnDSaveInfo : "sprite" "s_scanline"
	draw_sprite_ext(s_scanline, scr_anim_index(18, 5), (-(string_width(char_desc)/1.2)*(.5*1.36))+960+150*(1-fade), 130, (string_width(char_desc)/12)*1.36, 10*2.3+string_height(char_desc)/10, 0, $FFFFFF & $ffffff, (1-fade)*.5);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4DB7FAC9
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "x" "(-(string_width(char_desc)/1.2)*(.5*1.4))+960+150*(1-fade)"
	/// @DnDArgument : "y" "130"
	/// @DnDArgument : "xscale" "(string_width(char_desc)/120)*1.4"
	/// @DnDArgument : "yscale" "2.3+string_height(char_desc)/100"
	/// @DnDArgument : "alpha" "(1-fade)*1"
	/// @DnDArgument : "sprite" "zorb_info_box"
	/// @DnDSaveInfo : "sprite" "zorb_info_box"
	draw_sprite_ext(zorb_info_box, 0, (-(string_width(char_desc)/1.2)*(.5*1.4))+960+150*(1-fade), 130, (string_width(char_desc)/120)*1.4, 2.3+string_height(char_desc)/100, 0, $FFFFFF & $ffffff, (1-fade)*1);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 613D2DE6
	/// @DnDInput : 14
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960+150*(1-fade)"
	/// @DnDArgument : "arg_1" "180"
	/// @DnDArgument : "arg_2" "ds_list_find_value(char_list, i)"
	/// @DnDArgument : "arg_3" "c_cybergreen"
	/// @DnDArgument : "arg_4" "c_white"
	/// @DnDArgument : "arg_5" "(1-fade)"
	/// @DnDArgument : "arg_6" "c_black"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "(1-fade)"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "2"
	/// @DnDArgument : "arg_12" "2"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960+150*(1-fade), 180, ds_list_find_value(char_list, i), c_cybergreen, c_white, (1-fade), c_black, c_black, (1-fade), 2, 6, 2, 2, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 43846815
	/// @DnDInput : 14
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960+150*(1-fade)"
	/// @DnDArgument : "arg_1" "250"
	/// @DnDArgument : "arg_2" "details_string"
	/// @DnDArgument : "arg_3" "c_cybergreen"
	/// @DnDArgument : "arg_4" "c_cybergreen"
	/// @DnDArgument : "arg_5" "(1-fade)"
	/// @DnDArgument : "arg_6" "c_black"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "(1-fade)"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "1"
	/// @DnDArgument : "arg_12" "1"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960+150*(1-fade), 250, details_string, c_cybergreen, c_cybergreen, (1-fade), c_black, c_black, (1-fade), 2, 6, 1, 1, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 614F2F59
	/// @DnDInput : 14
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960+150*(1-fade)"
	/// @DnDArgument : "arg_1" "210"
	/// @DnDArgument : "arg_2" "string_repeat("_", string_length(ds_list_find_value(char_list, i)))"
	/// @DnDArgument : "arg_3" "c_white"
	/// @DnDArgument : "arg_4" "c_white"
	/// @DnDArgument : "arg_5" "(1-fade)"
	/// @DnDArgument : "arg_6" "c_black"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "(1-fade)"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "2"
	/// @DnDArgument : "arg_12" "1"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960+150*(1-fade), 210, string_repeat("_", string_length(ds_list_find_value(char_list, i))), c_white, c_white, (1-fade), c_black, c_black, (1-fade), 2, 6, 2, 1, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6B331F58
	/// @DnDInput : 14
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960+150*(1-fade)"
	/// @DnDArgument : "arg_1" "263"
	/// @DnDArgument : "arg_2" "string_repeat("_", string_length(ds_list_find_value(char_list, i)))"
	/// @DnDArgument : "arg_3" "c_white"
	/// @DnDArgument : "arg_4" "c_white"
	/// @DnDArgument : "arg_5" "(1-fade)"
	/// @DnDArgument : "arg_6" "c_black"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "(1-fade)"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "2"
	/// @DnDArgument : "arg_12" "1"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960+150*(1-fade), 263, string_repeat("_", string_length(ds_list_find_value(char_list, i))), c_white, c_white, (1-fade), c_black, c_black, (1-fade), 2, 6, 2, 1, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 37839C75
	/// @DnDInput : 14
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960+150*(1-fade)"
	/// @DnDArgument : "arg_1" "310"
	/// @DnDArgument : "arg_2" "char_desc"
	/// @DnDArgument : "arg_3" "c_white"
	/// @DnDArgument : "arg_4" "c_white"
	/// @DnDArgument : "arg_5" "(1-fade)"
	/// @DnDArgument : "arg_6" "c_black"
	/// @DnDArgument : "arg_7" "c_black"
	/// @DnDArgument : "arg_8" "(1-fade)"
	/// @DnDArgument : "arg_9" "2"
	/// @DnDArgument : "arg_10" "6"
	/// @DnDArgument : "arg_11" "1"
	/// @DnDArgument : "arg_12" "1"
	/// @DnDArgument : "arg_13" "0"
	/// @DnDSaveInfo : "script" "draw_text_colour_outline"
	script_execute(draw_text_colour_outline, 960+150*(1-fade), 310, char_desc, c_white, c_white, (1-fade), c_black, c_black, (1-fade), 2, 6, 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 2FEFAFAB
	/// @DnDParent : 0F24C25F
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 4BEA6EA4
	/// @DnDParent : 0F24C25F
	/// @DnDArgument : "x" "300 + (1-fade)*120"
	/// @DnDArgument : "y" "540"
	/// @DnDArgument : "alpha" "1-fade"
	/// @DnDArgument : "sprite" "character_portrait"
	draw_sprite_ext(character_portrait, 0, 300 + (1-fade)*120, 540, 1, 1, 0, $FFFFFF & $ffffff, 1-fade);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E391E60
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "select_state.CHARACTER"
if(state == select_state.CHARACTER){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 62DAD500
	/// @DnDParent : 0E391E60
	/// @DnDArgument : "expr" "char_in_question == 0"
	/// @DnDArgument : "not" "1"
	if(!(char_in_question == 0)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 6D43517F
		/// @DnDParent : 62DAD500
		/// @DnDArgument : "x" "960-150"
		/// @DnDArgument : "y" "970"
		/// @DnDArgument : "xscale" "-1.4-(sin(current_time/1000))*.5"
		/// @DnDArgument : "sprite" "ui_arrow"
		/// @DnDSaveInfo : "sprite" "ui_arrow"
		draw_sprite_ext(ui_arrow, 0, 960-150, 970, -1.4-(sin(current_time/1000))*.5, 1, 0, $FFFFFF & $ffffff, 1);}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7951A43F
	/// @DnDParent : 0E391E60
	/// @DnDArgument : "expr" "char_in_question == ds_list_size(char_list)-1"
	/// @DnDArgument : "not" "1"
	if(!(char_in_question == ds_list_size(char_list)-1)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 24353070
		/// @DnDParent : 7951A43F
		/// @DnDArgument : "x" "960+150"
		/// @DnDArgument : "y" "970"
		/// @DnDArgument : "xscale" "1.4+(sin(current_time/1000))*.5"
		/// @DnDArgument : "sprite" "ui_arrow"
		/// @DnDSaveInfo : "sprite" "ui_arrow"
		draw_sprite_ext(ui_arrow, 0, 960+150, 970, 1.4+(sin(current_time/1000))*.5, 1, 0, $FFFFFF & $ffffff, 1);}}