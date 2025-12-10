/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
/// @DnDVersion : 1
/// @DnDHash : 68029DDC
/// @DnDDisabled : 1
/// @DnDArgument : "x" "20"
/// @DnDArgument : "y" "800"
/// @DnDArgument : "xscale" "2"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "caption" ""game speed: ""
/// @DnDArgument : "text" "global.game_speed"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 03FDEC77
/// @DnDArgument : "expr" "state"
var l03FDEC77_0 = state;switch(l03FDEC77_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 255F2C7D
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	/// @DnDAction : YoYo Games.Drawing.Set_Font
		/// @DnDVersion : 1
		/// @DnDHash : 2C4580BD
		/// @DnDParent : 255F2C7D
		/// @DnDArgument : "font" "Font1"
		/// @DnDSaveInfo : "font" "Font1"
		draw_set_font(Font1);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 23214C71
		/// @DnDParent : 255F2C7D
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "text" "floor(display_score)"
		draw_text_transformed(60, 150, string("") + string(floor(display_score)), 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 17DD5291
		/// @DnDParent : 255F2C7D
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""WAVE ""
		/// @DnDArgument : "text" "pylon_wave_number"
		draw_text_transformed(60, 300, string("WAVE ") + string(pylon_wave_number), 3, 3, 0);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0AFD9667
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.SELECT"
	case gm.SELECT:	/// @DnDAction : YoYo Games.Data Structures.List_Count
		/// @DnDVersion : 1
		/// @DnDHash : 05DC32B4
		/// @DnDParent : 0AFD9667
		/// @DnDArgument : "assignee" "poobungis"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "high_scores"
		var poobungis = ds_list_size(high_scores);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 620EF0BC
		/// @DnDParent : 0AFD9667
		/// @DnDArgument : "var" "poobungis"
		/// @DnDArgument : "op" "2"
		if(poobungis > 0){	/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 683F9B7D
			/// @DnDParent : 620EF0BC
			/// @DnDArgument : "cond" "i < poobungis"
			for(i = 0; i < poobungis; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 6A79307D
				/// @DnDParent : 683F9B7D
				/// @DnDArgument : "assignee" "ploobug"
				/// @DnDArgument : "assignee_temp" "1"
				/// @DnDArgument : "var" "high_scores"
				/// @DnDArgument : "index" "i"
				var ploobug = ds_list_find_value(high_scores, i);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 702B46C4
				/// @DnDParent : 683F9B7D
				/// @DnDArgument : "x" "500+targ_x_approacher"
				/// @DnDArgument : "y" "200+i*60"
				/// @DnDArgument : "xscale" "string_length(string(i) + ". " + string(ploobug))/4"
				/// @DnDArgument : "alpha" ".5"
				/// @DnDArgument : "sprite" "comb_background"
				/// @DnDSaveInfo : "sprite" "comb_background"
				draw_sprite_ext(comb_background, 0, 500+targ_x_approacher, 200+i*60, string_length(string(i) + ". " + string(ploobug))/4, 1, 0, $FFFFFF & $ffffff, .5);
			
				/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
				/// @DnDVersion : 1
				/// @DnDHash : 4432CC1E
				/// @DnDParent : 683F9B7D
				/// @DnDArgument : "x" "510+targ_x_approacher"
				/// @DnDArgument : "y" "200 + i*60"
				/// @DnDArgument : "xscale" "2"
				/// @DnDArgument : "yscale" "2"
				/// @DnDArgument : "caption" """"
				/// @DnDArgument : "text" "string(i+1) + ". " + string(ploobug)"
				draw_text_transformed(510+targ_x_approacher, 200 + i*60, string("") + string(string(i+1) + ". " + string(ploobug)), 2, 2, 0);}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3BABB79E
		/// @DnDParent : 0AFD9667
		else{	/// @DnDAction : YoYo Games.Drawing.Draw_Value
			/// @DnDVersion : 1
			/// @DnDHash : 050A0D7A
			/// @DnDParent : 3BABB79E
			/// @DnDArgument : "x" "20"
			/// @DnDArgument : "y" "20"
			/// @DnDArgument : "caption" ""No scores on record...""
			draw_text(20, 20, string("No scores on record...") + "");}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 08A52609
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A5C9965
		/// @DnDParent : 08A52609
		/// @DnDArgument : "var" "combo_num"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "1"
		if(combo_num >= 1){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 7E6B9B68
			/// @DnDParent : 3A5C9965
			/// @DnDArgument : "x" "80"
			/// @DnDArgument : "y" "500"
			/// @DnDArgument : "caption" """"
			/// @DnDArgument : "text" "string(combo_num) + " kill COMBO!""
			draw_text_transformed(80, 500, string("") + string(string(combo_num) + " kill COMBO!"), 1, 1, 0);
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
			/// @DnDVersion : 1
			/// @DnDHash : 4A532E87
			/// @DnDParent : 3A5C9965
			/// @DnDArgument : "x1" "10"
			/// @DnDArgument : "y1" "530"
			/// @DnDArgument : "x2" "150"
			/// @DnDArgument : "y2" "547"
			/// @DnDArgument : "value" "(combo_bar/530)*100"
			/// @DnDArgument : "backcol" "$FF000000"
			/// @DnDArgument : "mincol" "$FF00FF00"
			/// @DnDArgument : "maxcol" "$FF00FF00"
			draw_healthbar(10, 530, 150, 547, (combo_bar/530)*100, $FF000000 & $FFFFFF, $FF00FF00 & $FFFFFF, $FF00FF00 & $FFFFFF, 0, (($FF000000>>24) != 0), (($FFFFFFFF>>24) != 0));}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 74A61C7F
		/// @DnDParent : 08A52609
		/// @DnDArgument : "expr" "in_wave"
		/// @DnDArgument : "not" "1"
		if(!(in_wave)){	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
			/// @DnDVersion : 1
			/// @DnDHash : 385460E1
			/// @DnDParent : 74A61C7F
			/// @DnDArgument : "x1" "1870"
			/// @DnDArgument : "y1" "400"
			/// @DnDArgument : "x2" "1910"
			/// @DnDArgument : "y2" "650"
			/// @DnDArgument : "direction" "3"
			/// @DnDArgument : "value" "(pylon_incr/1800)*100"
			/// @DnDArgument : "backcol" "$FF000000"
			/// @DnDArgument : "barcol" "$B5FFFFFF"
			/// @DnDArgument : "mincol" "$FF00FF00"
			/// @DnDArgument : "maxcol" "$FF0000FF"
			draw_healthbar(1870, 400, 1910, 650, (pylon_incr/1800)*100, $FF000000 & $FFFFFF, $FF00FF00 & $FFFFFF, $FF0000FF & $FFFFFF, 3, (($FF000000>>24) != 0), (($B5FFFFFF>>24) != 0));
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 438D7741
			/// @DnDParent : 74A61C7F
			/// @DnDArgument : "expr" "can_skip_wave"
			if(can_skip_wave){	/// @DnDAction : YoYo Games.Drawing.Draw_Value
				/// @DnDVersion : 1
				/// @DnDHash : 51947EDD
				/// @DnDParent : 438D7741
				/// @DnDArgument : "x" "1780"
				/// @DnDArgument : "y" "680"
				/// @DnDArgument : "caption" ""Hold -Q- to skip timer.""
				draw_text(1780, 680, string("Hold -Q- to skip timer.") + "");
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 172BA5EA
				/// @DnDInput : 11
				/// @DnDParent : 438D7741
				/// @DnDArgument : "script" "draw_wheel_ext"
				/// @DnDArgument : "arg" "1830"
				/// @DnDArgument : "arg_1" "760"
				/// @DnDArgument : "arg_2" "40"
				/// @DnDArgument : "arg_3" "10"
				/// @DnDArgument : "arg_4" "c_white"
				/// @DnDArgument : "arg_5" "skip_wave_value"
				/// @DnDArgument : "arg_6" "120"
				/// @DnDArgument : "arg_7" "1"
				/// @DnDArgument : "arg_8" "90"
				/// @DnDArgument : "arg_9" "false"
				/// @DnDArgument : "arg_10" "1"
				/// @DnDSaveInfo : "script" "draw_wheel_ext"
				script_execute(draw_wheel_ext, 1830, 760, 40, 10, c_white, skip_wave_value, 120, 1, 90, false, 1);
			
				/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
				/// @DnDVersion : 1
				/// @DnDHash : 35E794E1
				/// @DnDParent : 438D7741
				/// @DnDArgument : "key" "ord("Q")"
				var l35E794E1_0;l35E794E1_0 = keyboard_check(ord("Q"));if (l35E794E1_0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1B375C69
					/// @DnDParent : 35E794E1
					/// @DnDArgument : "expr" "1*global.game_speed"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "skip_wave_value"
					skip_wave_value += 1*global.game_speed;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 33B15D6E
				/// @DnDParent : 438D7741
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7C525CE9
					/// @DnDParent : 33B15D6E
					/// @DnDArgument : "var" "skip_wave_value"
					skip_wave_value = 0;}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 329A570B
				/// @DnDParent : 438D7741
				/// @DnDArgument : "var" "skip_wave_value"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "120"
				if(skip_wave_value >= 120){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 317551BE
					/// @DnDInput : 3
					/// @DnDParent : 329A570B
					/// @DnDArgument : "expr_1" "1799"
					/// @DnDArgument : "expr_2" "false"
					/// @DnDArgument : "var" "skip_wave_value"
					/// @DnDArgument : "var_1" "pylon_incr"
					/// @DnDArgument : "var_2" "can_skip_wave"
					skip_wave_value = 0;
					pylon_incr = 1799;
					can_skip_wave = false;}}}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 64FDFB93
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "150"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "text" "floor(display_score)"
		draw_text_transformed(60, 150, string("") + string(floor(display_score)), 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7B84A7A6
		/// @DnDDisabled : 1
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""WAVE ""
		/// @DnDArgument : "text" "pylon_wave_number"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 618DBAF1
		/// @DnDParent : 08A52609
		/// @DnDArgument : "expr" "string("{0} enemies have spawned. {1} enemies remain. {2} enemies must be defeated. Only {3} enemies can coexist.", pylon_enemies, pylon_enemy_count, pylon_enemy_goal, pylon_enemy_cap)"
		/// @DnDArgument : "var" "pylon_debug"
		pylon_debug = string("{0} enemies have spawned. {1} enemies remain. {2} enemies must be defeated. Only {3} enemies can coexist.", pylon_enemies, pylon_enemy_count, pylon_enemy_goal, pylon_enemy_cap);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 191A8078
		/// @DnDDisabled : 1
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "390"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "text" "pylon_debug"
	
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 45C82BFB
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "70"
		/// @DnDArgument : "y" "190"
		/// @DnDArgument : "xscale" "2"
		/// @DnDArgument : "yscale" "2"
		/// @DnDArgument : "caption" """"
		/// @DnDArgument : "text" "floor(display_flub)"
		draw_text_transformed(70, 190, string("") + string(floor(display_flub)), 2, 2, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 3BE23969
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "50"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "sprite" "s_flub"
		/// @DnDSaveInfo : "sprite" "s_flub"
		draw_sprite_ext(s_flub, 0, 50, 200, 1, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3DFD099B
		/// @DnDParent : 08A52609
		/// @DnDArgument : "var" "white_out"
		/// @DnDArgument : "value" "true"
		if(white_out == true){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 68567DEF
			/// @DnDComment : why did I name it that
			/// @DnDParent : 3DFD099B
			/// @DnDArgument : "expr" ".01"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "white_beans"
			white_beans += .01;
		
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 635D92AF
			/// @DnDParent : 3DFD099B
			/// @DnDArgument : "x" "960"
			/// @DnDArgument : "y" "540"
			/// @DnDArgument : "alpha" "white_beans"
			/// @DnDArgument : "sprite" "white_flash"
			/// @DnDSaveInfo : "sprite" "white_flash"
			draw_sprite_ext(white_flash, 0, 960, 540, 1, 1, 0, $FFFFFF & $ffffff, white_beans);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 57D319FA
			/// @DnDParent : 3DFD099B
			/// @DnDArgument : "var" "white_beans"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "1.2"
			if(white_beans >= 1.2){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2D2C4627
				/// @DnDInput : 2
				/// @DnDParent : 57D319FA
				/// @DnDArgument : "expr" "gm.LEVEL"
				/// @DnDArgument : "expr_1" "false"
				/// @DnDArgument : "var" "o_game.state"
				/// @DnDArgument : "var_1" "o_game.in_wave"
				o_game.state = gm.LEVEL;
				o_game.in_wave = false;
			
				/// @DnDAction : YoYo Games.Rooms.Go_To_Room
				/// @DnDVersion : 1
				/// @DnDHash : 583E2FC7
				/// @DnDParent : 57D319FA
				/// @DnDArgument : "room" "results_room"
				/// @DnDSaveInfo : "room" "results_room"
				room_goto(results_room);}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 062A32BA
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.RESULTS"
	case gm.RESULTS:	/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 5C220032
		/// @DnDParent : 062A32BA
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1F604241
		/// @DnDParent : 062A32BA
		/// @DnDArgument : "x" "960"
		/// @DnDArgument : "y" "540"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""FINAL SCORE: ""
		/// @DnDArgument : "text" "floor(display_score)"
		draw_text_transformed(960, 540, string("FINAL SCORE: ") + string(floor(display_score)), 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 778B387E
		/// @DnDParent : 062A32BA
		/// @DnDArgument : "var" "display_score"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "scor"
		if(!(display_score == scor)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 458E9501
			/// @DnDParent : 778B387E
			var l458E9501_0;l458E9501_0 = keyboard_check_pressed(vk_space);if (l458E9501_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 53A393A9
				/// @DnDParent : 458E9501
				/// @DnDArgument : "expr" "scor"
				/// @DnDArgument : "var" "display_score"
				display_score = scor;
			
				/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 306F7431
				/// @DnDParent : 458E9501
				/// @DnDArgument : "soundid" "points"
				/// @DnDSaveInfo : "soundid" "points"
				audio_stop_sound(points);}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70E16DA4
		/// @DnDParent : 062A32BA
		/// @DnDArgument : "var" "display_score"
		/// @DnDArgument : "value" "scor"
		if(display_score == scor){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 52B0E322
			/// @DnDParent : 70E16DA4
			/// @DnDArgument : "expr" "finish_counting"
			/// @DnDArgument : "not" "1"
			if(!(finish_counting)){	/// @DnDAction : YoYo Games.Data Structures.List_Count
				/// @DnDVersion : 1
				/// @DnDHash : 52FBFFF6
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "assignee" "shoobop"
				/// @DnDArgument : "assignee_temp" "1"
				/// @DnDArgument : "var" "high_scores"
				var shoobop = ds_list_size(high_scores);
			
				/// @DnDAction : YoYo Games.Data Structures.List_Insert
				/// @DnDVersion : 1
				/// @DnDHash : 713F2D49
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "var" "high_scores"
				/// @DnDArgument : "index" "shoobop"
				/// @DnDArgument : "value" "scor"
				ds_list_insert(high_scores, shoobop, scor);
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 2FFC492C
				/// @DnDInput : 2
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "function" "ds_list_sort"
				/// @DnDArgument : "arg" "high_scores"
				/// @DnDArgument : "arg_1" "false"
				ds_list_sort(high_scores, false);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3B1B079F
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "var" "shoobop"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "11"
				if(shoobop >= 11){	/// @DnDAction : YoYo Games.Data Structures.List_Remove
					/// @DnDVersion : 1
					/// @DnDHash : 0AF96DD1
					/// @DnDParent : 3B1B079F
					/// @DnDArgument : "var" "high_scores"
					/// @DnDArgument : "index" "11"
					if(ds_list_size(high_scores) > 11)	ds_list_delete(high_scores, 11);}
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 4A6CD69A
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "var" "save_line"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "function" "ds_list_write"
				/// @DnDArgument : "arg" "high_scores"
				var save_line = ds_list_write(high_scores);
			
				/// @DnDAction : YoYo Games.Files.Open_Ini
				/// @DnDVersion : 1
				/// @DnDHash : 62351946
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "filename" ""scores.ini""
				ini_open("scores.ini");
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 27FB60AC
				/// @DnDInput : 3
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "function" "ini_write_string"
				/// @DnDArgument : "arg" ""high_scores""
				/// @DnDArgument : "arg_1" ""scores_or_whatever""
				/// @DnDArgument : "arg_2" "save_line"
				ini_write_string("high_scores", "scores_or_whatever", save_line);
			
				/// @DnDAction : YoYo Games.Files.Close_Ini
				/// @DnDVersion : 1
				/// @DnDHash : 636D1F07
				/// @DnDParent : 52B0E322
				ini_close();
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 5B47762B
				/// @DnDDisabled : 1
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "script" "scr_save_game"
				/// @DnDSaveInfo : "script" "scr_save_game"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 489CB75B
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "finish_counting"
				finish_counting = true;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2FC2A7D8
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "var" "scor"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "10000"
				if(scor < 10000){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 783E0412
					/// @DnDParent : 2FC2A7D8
					/// @DnDArgument : "soundid" "ur_garbage"
					/// @DnDArgument : "gain" "3"
					/// @DnDSaveInfo : "soundid" "ur_garbage"
					audio_play_sound(ur_garbage, 0, 0, 3, undefined, 1.0);}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5BBD4370
				/// @DnDParent : 52B0E322
				/// @DnDArgument : "var" "scor"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "100000"
				if(scor > 100000){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 70FDC3D8
					/// @DnDParent : 5BBD4370
					/// @DnDArgument : "soundid" "ur_great"
					/// @DnDArgument : "gain" "3"
					/// @DnDSaveInfo : "soundid" "ur_great"
					audio_play_sound(ur_great, 0, 0, 3, undefined, 1.0);}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0A06C060
			/// @DnDParent : 70E16DA4
			else{	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
				/// @DnDVersion : 1
				/// @DnDHash : 071223A4
				/// @DnDParent : 0A06C060
				var l071223A4_0;l071223A4_0 = keyboard_check_pressed(vk_space);if (l071223A4_0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2F2AC72C
					/// @DnDParent : 071223A4
					/// @DnDArgument : "expr" "gm.SELECT"
					/// @DnDArgument : "var" "state"
					state = gm.SELECT;
				
					/// @DnDAction : YoYo Games.Audio.Stop_Audio
					/// @DnDVersion : 1
					/// @DnDHash : 42793F44
					/// @DnDParent : 071223A4
					/// @DnDArgument : "soundid" "points"
					/// @DnDSaveInfo : "soundid" "points"
					audio_stop_sound(points);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 22953DBF
					/// @DnDParent : 071223A4
					/// @DnDArgument : "script" "scr_change_song"
					/// @DnDArgument : "arg" "menu"
					/// @DnDSaveInfo : "script" "scr_change_song"
					script_execute(scr_change_song, menu);
				
					/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
					/// @DnDVersion : 1.1
					/// @DnDHash : 352F84ED
					/// @DnDParent : 071223A4
					/// @DnDArgument : "sound" "menu"
					/// @DnDSaveInfo : "sound" "menu"
					audio_sound_gain(menu, 1, 0);
				
					/// @DnDAction : YoYo Games.Rooms.Go_To_Room
					/// @DnDVersion : 1
					/// @DnDHash : 3F4323B8
					/// @DnDParent : 071223A4
					/// @DnDArgument : "room" "map"
					/// @DnDSaveInfo : "room" "map"
					room_goto(map);}}}	break;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 12AC8F72
/// @DnDArgument : "expr" "paused"
if(paused){	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 1A8D08C2
	/// @DnDParent : 12AC8F72
	/// @DnDArgument : "x" "960 - string_width("PAUSED bro")"
	/// @DnDArgument : "y" "540"
	/// @DnDArgument : "caption" ""PAUSED bro""
	draw_text_transformed(960 - string_width("PAUSED bro"), 540, string("PAUSED bro") + "", 1, 1, 0);}