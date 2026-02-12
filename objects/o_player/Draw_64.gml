/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7D13822A
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.DIE"
if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 086CB9CD
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "99"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "sprite" "s_health"
	/// @DnDArgument : "number" "hp*2"
	/// @DnDSaveInfo : "sprite" "s_health"
	var l086CB9CD_0 = sprite_get_width(s_health);var l086CB9CD_1 = 0;for(var l086CB9CD_2 = hp*2; l086CB9CD_2 > 0; --l086CB9CD_2) {	draw_sprite(s_health, 0, 99 + l086CB9CD_1, 70);	l086CB9CD_1 += l086CB9CD_0;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 360E5C27
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "70"
	/// @DnDArgument : "y" "70"
	/// @DnDArgument : "alpha" "sin(iframes/2)+1"
	/// @DnDArgument : "sprite" "s_gurch_icon"
	/// @DnDSaveInfo : "sprite" "s_gurch_icon"
	draw_sprite_ext(s_gurch_icon, 0, 70, 70, 1, 1, 0, $FFFFFF & $ffffff, sin(iframes/2)+1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprites_Stacked
	/// @DnDVersion : 1
	/// @DnDHash : 36415906
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "95"
	/// @DnDArgument : "y" "108"
	/// @DnDArgument : "sprite" "s_fuel"
	/// @DnDArgument : "number" "v_fuel/2"
	/// @DnDSaveInfo : "sprite" "s_fuel"
	var l36415906_0 = sprite_get_width(s_fuel);var l36415906_1 = 0;for(var l36415906_2 = v_fuel/2; l36415906_2 > 0; --l36415906_2) {	draw_sprite(s_fuel, 0, 95 + l36415906_1, 108);	l36415906_1 += l36415906_0;}

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 034187CB
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "75"
	/// @DnDArgument : "y" "108"
	/// @DnDArgument : "sprite" "s_boosters"
	/// @DnDSaveInfo : "sprite" "s_boosters"
	draw_sprite_ext(s_boosters, 0, 75, 108, 1, 1, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 1D2FA45E
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x1" "94"
	/// @DnDArgument : "y1" "130"
	/// @DnDArgument : "x2" "271"
	/// @DnDArgument : "y2" "140"
	/// @DnDArgument : "value" "(special_meter/special_meter_cap)*100"
	/// @DnDArgument : "backcol" "$FF990000"
	/// @DnDArgument : "barcol" "$FFFFFF00"
	draw_healthbar(94, 130, 271, 140, (special_meter/special_meter_cap)*100, $FF990000 & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 0, (($FF990000>>24) != 0), (($FFFFFF00>>24) != 0));

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


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25014A49
	/// @DnDInput : 2
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "expr" "object_get_sprite(mygurn.object_index)"
	/// @DnDArgument : "expr_1" "sprite_get_width(wep_display_sprite)"
	/// @DnDArgument : "var" "wep_display_sprite"
	/// @DnDArgument : "var_1" "wep_display_width"
	wep_display_sprite = object_get_sprite(mygurn.object_index);
	wep_display_width = sprite_get_width(wep_display_sprite);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 11D14B5B
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "15"
	/// @DnDArgument : "y" "840"
	/// @DnDArgument : "xscale" "1+wep_display_width*.005"
	/// @DnDArgument : "sprite" "s_gun_hud"
	/// @DnDSaveInfo : "sprite" "s_gun_hud"
	draw_sprite_ext(s_gun_hud, 0, 15, 840, 1+wep_display_width*.005, 1, 0, $FFFFFF & $ffffff, 1);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 5D7F9C74
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "wep_display_width"
	/// @DnDArgument : "y" "990"
	/// @DnDArgument : "yscale" ".8"
	/// @DnDArgument : "alpha" ".9"
	/// @DnDArgument : "sprite" "wep_display_sprite"
	draw_sprite_ext(wep_display_sprite, 0, wep_display_width, 990, 1, .8, 0, $FFFFFF & $ffffff, .9);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 415858CF
	/// @DnDInput : 14
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "30"
	/// @DnDArgument : "arg_1" "854"
	/// @DnDArgument : "arg_2" ""LVL  " + string(curr_weapon_level) + " / " + string(max_gun_level)"
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
	script_execute(draw_text_colour_outline, 30, 854, "LVL  " + string(curr_weapon_level) + " / " + string(max_gun_level), $FFAFFF00, $FFAFFF00, 1, c_blue, c_black, 1, 2, 8, 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 446DCB1A
	/// @DnDDisabled : 1
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "wep_display_width-20"
	/// @DnDArgument : "y" "880"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "var" "scr_weapon_names(mygurn.object_index)"


	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 071442C1
	/// @DnDInput : 14
	/// @DnDParent : 7D13822A
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
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "40+wep_display_width"
	/// @DnDArgument : "y" "980"
	/// @DnDArgument : "caption" """"
	/// @DnDArgument : "text" "string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus))"


	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 44FEBB93
	/// @DnDInput : 14
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "40+wep_display_width"
	/// @DnDArgument : "arg_1" "980"
	/// @DnDArgument : "arg_2" "string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus))"
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
	script_execute(draw_text_colour_outline, 40+wep_display_width, 980, string(mygurn.ammo) + "/" + string(floor(mygurn.ammo_cap*global.ammo_bonus)), c_white, c_white, 1, c_black, c_black, 1, 1, 4, 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 2F3B619C
	/// @DnDDisabled : 1
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "160 +wep_display_width"
	/// @DnDArgument : "y" "960"
	/// @DnDArgument : "caption" ""Fire Rate: ""
	/// @DnDArgument : "text" "global.firerate_bonus"


	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3CF86020
	/// @DnDInput : 14
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "160 +wep_display_width"
	/// @DnDArgument : "arg_1" "920"
	/// @DnDArgument : "arg_2" ""Fire Rate: " + string(global.firerate_bonus)"
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
	script_execute(draw_text_colour_outline, 160 +wep_display_width, 920, "Fire Rate: " + string(global.firerate_bonus), c_white, c_orangish, 1, c_black, c_red, 1, 1, 4, 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1984EF5C
	/// @DnDDisabled : 1
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "x" "160 + wep_display_width"
	/// @DnDArgument : "y" "1000"
	/// @DnDArgument : "caption" ""Reload Speed: ""
	/// @DnDArgument : "text" "global.reload_bonus"


	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0F514B0E
	/// @DnDInput : 14
	/// @DnDParent : 7D13822A
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "140 +wep_display_width"
	/// @DnDArgument : "arg_1" "950"
	/// @DnDArgument : "arg_2" ""Reload Speed: " + string(global.reload_bonus)"
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
	script_execute(draw_text_colour_outline, 140 +wep_display_width, 950, "Reload Speed: " + string(global.reload_bonus), c_white, c_teal, 1, c_black, c_blue, 1, 1, 4, 1, 1, 0);}