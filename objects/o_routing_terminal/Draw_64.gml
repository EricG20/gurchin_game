/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AEC17A3
/// @DnDArgument : "var" "selected_mission"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "-1"
if(selected_mission > -1){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 38702E07
	/// @DnDParent : 1AEC17A3
	/// @DnDArgument : "x" "-50"
	/// @DnDArgument : "y" "20"
	/// @DnDArgument : "xscale" "40"
	/// @DnDArgument : "alpha" "display_alpha2"
	/// @DnDArgument : "sprite" "comb_background"
	/// @DnDSaveInfo : "sprite" "comb_background"
	draw_sprite_ext(comb_background, 0, -50, 20, 40, 1, 0, $FFFFFF & $ffffff, display_alpha2);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1C775A3F
	/// @DnDParent : 1AEC17A3
	/// @DnDArgument : "expr" "lerp(display_alpha2, 1, .1)"
	/// @DnDArgument : "var" "display_alpha2"
	display_alpha2 = lerp(display_alpha2, 1, .1);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 3877F3A8
	/// @DnDParent : 1AEC17A3
	/// @DnDArgument : "init_temp" "1"
	/// @DnDArgument : "cond" "i < 9"
	for(var i = 0; i < 9; i += 1) {	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 200C3597
		/// @DnDParent : 3877F3A8
		/// @DnDArgument : "x" "((current_time%10000)/10) - 500*i + 3000"
		/// @DnDArgument : "y" "34"
		/// @DnDArgument : "caption" ""Prepare for: ""
		/// @DnDArgument : "text" "ds_map_find_value(mission_details, ds_list_find_value(missions, selected_mission)+"_title")"
		draw_text_transformed(((current_time%10000)/10) - 500*i + 3000, 34, string("Prepare for: ") + string(ds_map_find_value(mission_details, ds_list_find_value(missions, selected_mission)+"_title")), 1, 1, 0);}}

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 707E3E9A
/// @DnDArgument : "x" "1281"
/// @DnDArgument : "xscale" "11.4286"
/// @DnDArgument : "yscale" "19.2857*display_alpha"
/// @DnDArgument : "alpha" "display_alpha"
/// @DnDArgument : "sprite" "comb_background"
/// @DnDSaveInfo : "sprite" "comb_background"
draw_sprite_ext(comb_background, 0, 1281, 0, 11.4286, 19.2857*display_alpha, 0, $FFFFFF & $ffffff, display_alpha);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2615F831
/// @DnDArgument : "expr" "displaying_info"
if(displaying_info){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69A681AF
	/// @DnDParent : 2615F831
	/// @DnDArgument : "expr" "scr_approach(display_alpha,1,.2*(1-display_alpha)*global.game_speed)"
	/// @DnDArgument : "var" "display_alpha"
	display_alpha = scr_approach(display_alpha,1,.2*(1-display_alpha)*global.game_speed);

	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 7F94679B
	/// @DnDParent : 2615F831
	/// @DnDArgument : "cond" "i < ds_list_size(missions)"
	for(i = 0; i < ds_list_size(missions); i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 207301D1
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "var" "mission_index"
		/// @DnDArgument : "value" "i"
		if(mission_index == i){	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 5254A186
			/// @DnDParent : 207301D1
			/// @DnDArgument : "x" "1281"
			/// @DnDArgument : "y" "-2.5+120*i"
			/// @DnDArgument : "xscale" "11.4286"
			/// @DnDArgument : "yscale" "2.23214286*display_alpha"
			/// @DnDArgument : "alpha" "abs(sin(current_time*.0021))"
			/// @DnDArgument : "sprite" "zorb_uibox_highlight"
			/// @DnDArgument : "col" "$FFFFFFFF"
			/// @DnDSaveInfo : "sprite" "zorb_uibox_highlight"
			draw_sprite_ext(zorb_uibox_highlight, 0, 1281, -2.5+120*i, 11.4286, 2.23214286*display_alpha, 0, $FFFFFFFF & $ffffff, abs(sin(current_time*.0021)));}
	
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 14F2AA9F
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "assignee" "sel_mission"
		/// @DnDArgument : "var" "missions"
		/// @DnDArgument : "index" "i"
		sel_mission = ds_list_find_value(missions, i);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1206B844
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "x" "1281"
		/// @DnDArgument : "y" "0+120*i"
		/// @DnDArgument : "sprite" "ds_map_find_value(mission_details, sel_mission+"_thumbnail")"
		draw_sprite_ext(ds_map_find_value(mission_details, sel_mission+"_thumbnail"), 0, 1281, 0+120*i, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 32EDAFA7
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "halign" "fa_center"
		/// @DnDArgument : "valign" "fa_middle"
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 04D8822E
		/// @DnDInput : 14
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "1281 + 320"
		/// @DnDArgument : "arg_1" "120*i+25"
		/// @DnDArgument : "arg_2" "ds_map_find_value(mission_details, sel_mission+"_title")"
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
		script_execute(draw_text_colour_outline, 1281 + 320, 120*i+25, ds_map_find_value(mission_details, sel_mission+"_title"), c_white, c_gray, 1, c_black, c_black, 1, 1, 4, 1, 1, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 6ADAB03E
		/// @DnDParent : 7F94679B
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
		/// @DnDVersion : 1
		/// @DnDHash : 509E829D
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "assignee" "mission_desc"
		/// @DnDArgument : "var" "mission_details"
		/// @DnDArgument : "key" "sel_mission+"_desc""
		mission_desc = ds_map_find_value(mission_details, sel_mission+"_desc");
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2884410B
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "expr" "wrap_text(mission_desc, 75)"
		/// @DnDArgument : "var" "mission_desc"
		mission_desc = wrap_text(mission_desc, 75);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F05D1DC
		/// @DnDInput : 14
		/// @DnDParent : 7F94679B
		/// @DnDArgument : "script" "draw_text_colour_outline"
		/// @DnDArgument : "arg" "1281 + 260"
		/// @DnDArgument : "arg_1" "120*i+70"
		/// @DnDArgument : "arg_2" "mission_desc"
		/// @DnDArgument : "arg_3" "c_white"
		/// @DnDArgument : "arg_4" "c_white"
		/// @DnDArgument : "arg_5" "1"
		/// @DnDArgument : "arg_6" "c_gray"
		/// @DnDArgument : "arg_7" "c_gray"
		/// @DnDArgument : "arg_8" "1"
		/// @DnDArgument : "arg_9" "1"
		/// @DnDArgument : "arg_10" "4"
		/// @DnDArgument : "arg_11" ".5"
		/// @DnDArgument : "arg_12" ".5"
		/// @DnDArgument : "arg_13" "0"
		/// @DnDSaveInfo : "script" "draw_text_colour_outline"
		script_execute(draw_text_colour_outline, 1281 + 260, 120*i+70, mission_desc, c_white, c_white, 1, c_gray, c_gray, 1, 1, 4, .5, .5, 0);}}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3FF0CDC5
/// @DnDArgument : "expr" "displaying_info"
/// @DnDArgument : "not" "1"
if(!(displaying_info)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 388D7EBC
	/// @DnDParent : 3FF0CDC5
	/// @DnDArgument : "expr" "scr_approach(display_alpha,0,(display_alpha*.2)*global.game_speed)"
	/// @DnDArgument : "var" "display_alpha"
	display_alpha = scr_approach(display_alpha,0,(display_alpha*.2)*global.game_speed);}