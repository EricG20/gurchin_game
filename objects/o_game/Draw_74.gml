/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7BD96AC9
/// @DnDDisabled : 1
/// @DnDArgument : "x" "960"
/// @DnDArgument : "y" "540"
/// @DnDArgument : "alpha" "pause_background_alpha"
/// @DnDArgument : "sprite" "Layer_1"
/// @DnDSaveInfo : "sprite" "Layer_1"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C985A9E
/// @DnDArgument : "expr" "state"
var l5C985A9E_0 = state;switch(l5C985A9E_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42070D0E
	/// @DnDParent : 5C985A9E
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3177052A
		/// @DnDDisabled : 1
		/// @DnDParent : 42070D0E
		/// @DnDArgument : "x" "-5"
		/// @DnDArgument : "y" "-10"
		/// @DnDArgument : "xscale" ".8"
		/// @DnDArgument : "sprite" "s_ui_background"
		/// @DnDSaveInfo : "sprite" "s_ui_background"	break;}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 16038A82
/// @DnDArgument : "obj" "o_player"
/// @DnDSaveInfo : "obj" "o_player"
var l16038A82_0 = false;l16038A82_0 = instance_exists(o_player);if(l16038A82_0){	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 0700BCA2
	/// @DnDParent : 16038A82
	/// @DnDArgument : "halign" "fa_center"
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 4DC01CDB
	/// @DnDParent : 16038A82
	/// @DnDArgument : "var" "weapon_name"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "scr_weapon_names"
	/// @DnDArgument : "arg" "local_player.mygurn.object_index"
	/// @DnDSaveInfo : "script" "scr_weapon_names"
	var weapon_name = script_execute(scr_weapon_names, local_player.mygurn.object_index);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2D78AA36
	/// @DnDParent : 16038A82
	/// @DnDArgument : "var" "weapon_desc"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "script" "scr_weapon_descs"
	/// @DnDArgument : "arg" "local_player.mygurn.object_index"
	/// @DnDSaveInfo : "script" "scr_weapon_descs"
	var weapon_desc = script_execute(scr_weapon_descs, local_player.mygurn.object_index);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0BCCEF9D
	/// @DnDInput : 3
	/// @DnDParent : 16038A82
	/// @DnDArgument : "var" "weapon_desc"
	/// @DnDArgument : "function" "wrap_text"
	/// @DnDArgument : "arg" "weapon_desc"
	/// @DnDArgument : "arg_1" "60"
	/// @DnDArgument : "arg_2" "2"
	weapon_desc = wrap_text(weapon_desc, 60, 2);

	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 358CEB8B
	/// @DnDParent : 16038A82
	/// @DnDArgument : "x" "960-120 - (string_width(weapon_desc) + 100)/2"
	/// @DnDArgument : "y" "150"
	/// @DnDArgument : "xscale" "string_width(weapon_desc)/100+1"
	/// @DnDArgument : "yscale" "string_height(weapon_desc)/100+2"
	/// @DnDArgument : "alpha" "pause_background_alpha"
	/// @DnDArgument : "sprite" "zorb_info_box"
	/// @DnDSaveInfo : "sprite" "zorb_info_box"
	draw_sprite_ext(zorb_info_box, 0, 960-120 - (string_width(weapon_desc) + 100)/2, 150, string_width(weapon_desc)/100+1, string_height(weapon_desc)/100+2, 0, $FFFFFF & $ffffff, pause_background_alpha);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3342FCB5
	/// @DnDInput : 14
	/// @DnDParent : 16038A82
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960-120"
	/// @DnDArgument : "arg_1" "180"
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
	script_execute(draw_text_colour_outline, 960-120, 180, weapon_name, c_white, c_white, pause_background_alpha, c_green, c_black, pause_background_alpha, 2, 6, 2, 2, 0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C253611
	/// @DnDInput : 14
	/// @DnDParent : 16038A82
	/// @DnDArgument : "script" "draw_text_colour_outline"
	/// @DnDArgument : "arg" "960-120"
	/// @DnDArgument : "arg_1" "270"
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
	script_execute(draw_text_colour_outline, 960-120, 270, weapon_desc, c_white, c_white, pause_background_alpha, c_black, c_black, pause_background_alpha, 2, 6, 1, 1, 0);

	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
	/// @DnDVersion : 1.1
	/// @DnDHash : 197FDE78
	/// @DnDParent : 16038A82
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);}