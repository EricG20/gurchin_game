/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 22874FD7
/// @DnDArgument : "expr" "global.targ_x+1400"
/// @DnDArgument : "var" "x"
x = global.targ_x+1400;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3AA0CF04
/// @DnDArgument : "expr" "activated"
if(activated){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 09C19EE9
	/// @DnDParent : 3AA0CF04
	/// @DnDArgument : "expr" "state"
	var l09C19EE9_0 = state;switch(l09C19EE9_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4197E699
		/// @DnDParent : 09C19EE9
		/// @DnDArgument : "const" "select_state.CHARACTER"
		case select_state.CHARACTER:	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 0761A331
			/// @DnDParent : 4197E699
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.RIGHT)"
			if(InputPressed(INPUT_VERB.RIGHT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 56850D9D
				/// @DnDParent : 0761A331
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "char_in_question"
				char_in_question += 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 259F4CC2
			/// @DnDParent : 4197E699
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.LEFT)"
			if(InputPressed(INPUT_VERB.LEFT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 040139F2
				/// @DnDParent : 259F4CC2
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "char_in_question"
				char_in_question += -1;}
		
			/// @DnDAction : YoYo Games.Data Structures.List_Count
			/// @DnDVersion : 1
			/// @DnDHash : 0907D0C5
			/// @DnDParent : 4197E699
			/// @DnDArgument : "assignee" "char_list_length"
			/// @DnDArgument : "var" "char_list"
			char_list_length = ds_list_size(char_list);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 711EC668
			/// @DnDParent : 4197E699
			/// @DnDArgument : "expr" "clamp(char_in_question,0,char_list_length-1)"
			/// @DnDArgument : "var" "char_in_question"
			char_in_question = clamp(char_in_question,0,char_list_length-1);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5E0DB7B3
			/// @DnDParent : 4197E699
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.JUMP)"
			if(InputPressed(INPUT_VERB.JUMP)){	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 39526D5A
				/// @DnDParent : 5E0DB7B3
				/// @DnDArgument : "assignee" "picked_char"
				/// @DnDArgument : "var" "char_list"
				/// @DnDArgument : "index" "char_in_question"
				picked_char = ds_list_find_value(char_list, char_in_question);
			
				/// @DnDAction : YoYo Games.Switch.Switch
				/// @DnDVersion : 1
				/// @DnDHash : 5CB8FA84
				/// @DnDParent : 5E0DB7B3
				/// @DnDArgument : "expr" "picked_char"
				var l5CB8FA84_0 = picked_char;switch(l5CB8FA84_0){	/// @DnDAction : YoYo Games.Switch.Case
					/// @DnDVersion : 1
					/// @DnDHash : 3F5D0054
					/// @DnDParent : 5CB8FA84
					/// @DnDArgument : "const" ""Gurchin""
					case "Gurchin":	/// @DnDAction : YoYo Games.Data Structures.List_Add
						/// @DnDVersion : 1
						/// @DnDHash : 13868C75
						/// @DnDInput : 2
						/// @DnDParent : 3F5D0054
						/// @DnDArgument : "var" "hair_styles"
						/// @DnDArgument : "value" ""afro_bun""
						/// @DnDArgument : "value_1" ""bald""
						ds_list_add(hair_styles, "afro_bun", "bald");	break;
				
					/// @DnDAction : YoYo Games.Switch.Case
					/// @DnDVersion : 1
					/// @DnDHash : 33E384B7
					/// @DnDParent : 5CB8FA84
					/// @DnDArgument : "const" ""Zelinka""
					case "Zelinka":	/// @DnDAction : YoYo Games.Data Structures.List_Add
						/// @DnDVersion : 1
						/// @DnDHash : 010D6077
						/// @DnDParent : 33E384B7
						/// @DnDArgument : "var" "hair_styles"
						/// @DnDArgument : "value" ""afro""
						ds_list_add(hair_styles, "afro");	break;}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3445D750
				/// @DnDParent : 5E0DB7B3
				/// @DnDArgument : "expr" "select_state.HAIR"
				/// @DnDArgument : "var" "state"
				state = select_state.HAIR;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2E943B7C
		/// @DnDParent : 09C19EE9
		/// @DnDArgument : "const" "select_state.HAIR"
		case select_state.HAIR:	/// @DnDAction : YoYo Games.Data Structures.List_Count
			/// @DnDVersion : 1
			/// @DnDHash : 47F7566E
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "assignee" "hair_styles_list_length"
			/// @DnDArgument : "var" "hair_styles"
			hair_styles_list_length = ds_list_size(hair_styles);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3E8258B6
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "var" "hair_styles_list_length"
			/// @DnDArgument : "value" "1"
			if(hair_styles_list_length == 1){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 74B9D656
				/// @DnDParent : 3E8258B6
				/// @DnDArgument : "expr" "select_state.COLOR"
				/// @DnDArgument : "var" "state"
				state = select_state.COLOR;
			
				/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 30EDB88F
				/// @DnDParent : 3E8258B6
				/// @DnDArgument : "assignee" "picked_hair"
				/// @DnDArgument : "var" "hair_styles"
				/// @DnDArgument : "index" "hair_style_in_question"
				picked_hair = ds_list_find_value(hair_styles, hair_style_in_question);}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5C88C3C9
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.RIGHT)"
			if(InputPressed(INPUT_VERB.RIGHT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 16960B83
				/// @DnDParent : 5C88C3C9
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hair_style_in_question"
				hair_style_in_question += 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 38B25D22
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.LEFT)"
			if(InputPressed(INPUT_VERB.LEFT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 11BC89CA
				/// @DnDParent : 38B25D22
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "hair_style_in_question"
				hair_style_in_question += -1;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 489026F2
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "expr" "clamp(hair_style_in_question,0,hair_styles_list_length-1)"
			/// @DnDArgument : "var" "hair_style_in_question"
			hair_style_in_question = clamp(hair_style_in_question,0,hair_styles_list_length-1);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 5E9667E9
			/// @DnDParent : 2E943B7C
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.JUMP)"
			if(InputPressed(INPUT_VERB.JUMP)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 11E95105
				/// @DnDParent : 5E9667E9
				/// @DnDArgument : "expr" "select_state.COLOR"
				/// @DnDArgument : "var" "state"
				state = select_state.COLOR;
			
				/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 2379A355
				/// @DnDParent : 5E9667E9
				/// @DnDArgument : "assignee" "picked_hair"
				/// @DnDArgument : "var" "hair_styles"
				/// @DnDArgument : "index" "hair_style_in_question"
				picked_hair = ds_list_find_value(hair_styles, hair_style_in_question);}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 663ACBE1
		/// @DnDParent : 09C19EE9
		/// @DnDArgument : "const" "select_state.COLOR"
		case select_state.COLOR:	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 01E0AA61
			/// @DnDParent : 663ACBE1
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.RIGHT)"
			if(InputPressed(INPUT_VERB.RIGHT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7936B59F
				/// @DnDParent : 01E0AA61
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "suit_color_in_question"
				suit_color_in_question += 1;}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 148BB093
			/// @DnDParent : 663ACBE1
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.LEFT)"
			if(InputPressed(INPUT_VERB.LEFT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7C1E5010
				/// @DnDParent : 148BB093
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "suit_color_in_question"
				suit_color_in_question += -1;}
		
			/// @DnDAction : YoYo Games.Data Structures.List_Count
			/// @DnDVersion : 1
			/// @DnDHash : 02B62284
			/// @DnDParent : 663ACBE1
			/// @DnDArgument : "assignee" "colors_list_length"
			/// @DnDArgument : "var" "colors"
			colors_list_length = ds_list_size(colors);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11596835
			/// @DnDParent : 663ACBE1
			/// @DnDArgument : "expr" "clamp(suit_color_in_question,0,colors_list_length-1)"
			/// @DnDArgument : "var" "suit_color_in_question"
			suit_color_in_question = clamp(suit_color_in_question,0,colors_list_length-1);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 6B16A163
			/// @DnDParent : 663ACBE1
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.JUMP)"
			if(InputPressed(INPUT_VERB.JUMP)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 49B56C38
				/// @DnDInput : 2
				/// @DnDParent : 6B16A163
				/// @DnDArgument : "expr" "select_state.MISSION"
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "homie.increment"
				state = select_state.MISSION;
				homie.increment = true;
			
				/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 2BA9F4BD
				/// @DnDParent : 6B16A163
				/// @DnDArgument : "assignee" "picked_color"
				/// @DnDArgument : "var" "colors"
				/// @DnDArgument : "index" "suit_color_in_question"
				picked_color = ds_list_find_value(colors, suit_color_in_question);
			
				/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
				/// @DnDVersion : 1
				/// @DnDHash : 2DD8A156
				/// @DnDInput : 3
				/// @DnDParent : 6B16A163
				/// @DnDArgument : "var" "o_game.player_details"
				/// @DnDArgument : "key" ""player_char""
				/// @DnDArgument : "value" "picked_char"
				/// @DnDArgument : "key_1" ""player_hair""
				/// @DnDArgument : "value_1" "picked_hair"
				/// @DnDArgument : "key_2" ""player_color""
				/// @DnDArgument : "value_2" "picked_color"
				ds_map_replace(o_game.player_details, "player_char", picked_char);
				ds_map_replace(o_game.player_details, "player_hair", picked_hair);
				ds_map_replace(o_game.player_details, "player_color", picked_color);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 7DD6E576
				/// @DnDParent : 6B16A163
				/// @DnDArgument : "script" "scr_fadeout_song"
				/// @DnDSaveInfo : "script" "scr_fadeout_song"
				script_execute(scr_fadeout_song);}	break;}}