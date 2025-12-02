/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A5C9965
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
	/// @DnDHash : 08A52609
	/// @DnDParent : 03FDEC77
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Expression
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
			draw_healthbar(1870, 400, 1910, 650, (pylon_incr/1800)*100, $FF000000 & $FFFFFF, $FF00FF00 & $FFFFFF, $FF0000FF & $FFFFFF, 3, (($FF000000>>24) != 0), (($B5FFFFFF>>24) != 0));}
	
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
		/// @DnDParent : 08A52609
		/// @DnDArgument : "x" "60"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""WAVE ""
		/// @DnDArgument : "text" "pylon_wave_number"
		draw_text_transformed(60, 300, string("WAVE ") + string(pylon_wave_number), 3, 3, 0);
	
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
		draw_sprite_ext(s_flub, 0, 50, 200, 1, 1, 0, $FFFFFF & $ffffff, 1);	break;}

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