/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6933F5B3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_zorb_voices"
/// @DnDArgument : "arg" "type="hurt""
function scr_zorb_voices(type="hurt") {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 6BDACC27
	/// @DnDParent : 6933F5B3
	/// @DnDArgument : "expr" "character_index"
	var l6BDACC27_0 = character_index;switch(l6BDACC27_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3871491C
		/// @DnDParent : 6BDACC27
		/// @DnDArgument : "const" ""Gurchin""
		case "Gurchin":	/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 21494BA4
			/// @DnDParent : 3871491C
			/// @DnDArgument : "expr" "type"
			var l21494BA4_0 = type;switch(l21494BA4_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 76454D85
				/// @DnDParent : 21494BA4
				/// @DnDArgument : "const" ""hurt""
				case "hurt":	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 2185B494
					/// @DnDParent : 76454D85
					/// @DnDArgument : "soundid" "gurch_hurt"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "gurch_hurt"
					audio_play_sound(gurch_hurt, 0, 0, 1.5, undefined, random_range(.9,1.1));	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 6143374B
				/// @DnDParent : 21494BA4
				/// @DnDArgument : "const" ""die""
				case "die":	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 43AE2802
					/// @DnDParent : 6143374B
					/// @DnDArgument : "soundid" "gurchin_die"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDSaveInfo : "soundid" "gurchin_die"
					audio_play_sound(gurchin_die, 0, 0, 1.5, undefined, 1.0);	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3BB473A6
				/// @DnDParent : 21494BA4
				/// @DnDArgument : "const" ""speak""
				case "speak":	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
					/// @DnDVersion : 1
					/// @DnDHash : 1C9E195C
					/// @DnDParent : 3BB473A6
					/// @DnDArgument : "soundid" "gwah"
					/// @DnDArgument : "not" "1"
					var l1C9E195C_0 = gwah;if (!audio_is_playing(l1C9E195C_0)){	/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 31F057A2
						/// @DnDInput : 13
						/// @DnDParent : 1C9E195C
						/// @DnDArgument : "var" "gwah"
						/// @DnDArgument : "option" "gurch_babble_1"
						/// @DnDArgument : "option_1" "gurch_babble_2"
						/// @DnDArgument : "option_2" "gurch_babble_3"
						/// @DnDArgument : "option_3" "gurch_babble_4"
						/// @DnDArgument : "option_4" "gurch_babble_5"
						/// @DnDArgument : "option_5" "gurch_babble_6"
						/// @DnDArgument : "option_6" "gurch_babble_7"
						/// @DnDArgument : "option_7" "gurch_babble_8"
						/// @DnDArgument : "option_8" "gurch_babble_9"
						/// @DnDArgument : "option_9" "gurch_babble_10"
						/// @DnDArgument : "option_10" "gurch_babble_11"
						/// @DnDArgument : "option_11" "gurch_babble_12"
						/// @DnDArgument : "option_12" "gurch_babble_13"
						gwah = choose(gurch_babble_1, gurch_babble_2, gurch_babble_3, gurch_babble_4, gurch_babble_5, gurch_babble_6, gurch_babble_7, gurch_babble_8, gurch_babble_9, gurch_babble_10, gurch_babble_11, gurch_babble_12, gurch_babble_13);
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 7F7F9A75
						/// @DnDParent : 1C9E195C
						/// @DnDArgument : "soundid" "gwah"
						/// @DnDArgument : "gain" ".8"
						/// @DnDArgument : "pitch" "random_range(.9,1.2)"
						audio_play_sound(gwah, 0, 0, .8, undefined, random_range(.9,1.2));
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 6BD80900
						/// @DnDParent : 1C9E195C
						/// @DnDArgument : "expr" "ds_list_empty(talking_mouths)"
						/// @DnDArgument : "not" "1"
						if(!(ds_list_empty(talking_mouths))){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 1B37E404
							/// @DnDInput : 2
							/// @DnDParent : 6BD80900
							/// @DnDArgument : "expr" "ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1))"
							/// @DnDArgument : "expr_1" ".5"
							/// @DnDArgument : "var" "mouth_expression"
							/// @DnDArgument : "var_1" "mouth_transformation"
							mouth_expression = ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1));
							mouth_transformation = .5;}}	break;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 26A608A6
		/// @DnDParent : 6BDACC27
		/// @DnDArgument : "const" ""J0UL3S""
		case "J0UL3S":	/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 7446EC5C
			/// @DnDParent : 26A608A6
			/// @DnDArgument : "expr" "type"
			var l7446EC5C_0 = type;switch(l7446EC5C_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 464EA4B0
				/// @DnDParent : 7446EC5C
				/// @DnDArgument : "const" ""hurt""
				case "hurt":	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 6DA5B8A0
					/// @DnDParent : 464EA4B0
					/// @DnDArgument : "soundid" "joules_hit"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "joules_hit"
					audio_play_sound(joules_hit, 0, 0, 1.5, undefined, random_range(.9,1.1));	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 17E826B9
				/// @DnDParent : 7446EC5C
				/// @DnDArgument : "const" ""die""
				case "die":	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 7660D2AB
					/// @DnDParent : 17E826B9
					/// @DnDArgument : "soundid" "joules_die"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDSaveInfo : "soundid" "joules_die"
					audio_play_sound(joules_die, 0, 0, 1.5, undefined, 1.0);	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 168FC77D
				/// @DnDParent : 7446EC5C
				/// @DnDArgument : "const" ""speak""
				case "speak":	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
					/// @DnDVersion : 1
					/// @DnDHash : 356D89EF
					/// @DnDParent : 168FC77D
					/// @DnDArgument : "soundid" "gwah"
					/// @DnDArgument : "not" "1"
					var l356D89EF_0 = gwah;if (!audio_is_playing(l356D89EF_0)){	/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 7BB0446B
						/// @DnDInput : 7
						/// @DnDParent : 356D89EF
						/// @DnDArgument : "var" "gwah"
						/// @DnDArgument : "option" "joules_babble1"
						/// @DnDArgument : "option_1" "joules_babble2"
						/// @DnDArgument : "option_2" "joules_babble3"
						/// @DnDArgument : "option_3" "joules_babble4"
						/// @DnDArgument : "option_4" "joules_babble5"
						/// @DnDArgument : "option_5" "joules_babble6"
						/// @DnDArgument : "option_6" "joules_babble7"
						gwah = choose(joules_babble1, joules_babble2, joules_babble3, joules_babble4, joules_babble5, joules_babble6, joules_babble7);
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 60D3D4E3
						/// @DnDParent : 356D89EF
						/// @DnDArgument : "soundid" "gwah"
						/// @DnDArgument : "gain" ".6"
						/// @DnDArgument : "pitch" ".5+random_range(.9,1.2)"
						audio_play_sound(gwah, 0, 0, .6, undefined, .5+random_range(.9,1.2));
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 6BDAEDC5
						/// @DnDParent : 356D89EF
						/// @DnDArgument : "expr" "ds_list_empty(talking_mouths)"
						/// @DnDArgument : "not" "1"
						if(!(ds_list_empty(talking_mouths))){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 07BD2665
							/// @DnDInput : 2
							/// @DnDParent : 6BDAEDC5
							/// @DnDArgument : "expr" "ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1))"
							/// @DnDArgument : "expr_1" ".5"
							/// @DnDArgument : "var" "mouth_expression"
							/// @DnDArgument : "var_1" "mouth_transformation"
							mouth_expression = ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1));
							mouth_transformation = .5;}}	break;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 55F00A9E
		/// @DnDParent : 6BDACC27
		/// @DnDArgument : "const" ""Zelinka""
		case "Zelinka":	/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 26141905
			/// @DnDParent : 55F00A9E
			/// @DnDArgument : "expr" "type"
			var l26141905_0 = type;switch(l26141905_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 0D8C37C1
				/// @DnDParent : 26141905
				/// @DnDArgument : "const" ""hurt""
				case "hurt":	/// @DnDAction : YoYo Games.Random.Choose
					/// @DnDVersion : 1
					/// @DnDHash : 2AA01751
					/// @DnDInput : 3
					/// @DnDParent : 0D8C37C1
					/// @DnDArgument : "var" "bweh"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "option" "zelinka_hit_1"
					/// @DnDArgument : "option_1" "zelinka_hit_2"
					/// @DnDArgument : "option_2" "zelinka_hit_3"
					var bweh = choose(zelinka_hit_1, zelinka_hit_2, zelinka_hit_3);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 7A0699A5
					/// @DnDParent : 0D8C37C1
					/// @DnDArgument : "soundid" "bweh"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					audio_play_sound(bweh, 0, 0, 1.5, undefined, random_range(.9,1.1));	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 696B967A
				/// @DnDParent : 26141905
				/// @DnDArgument : "const" ""die""
				case "die":	/// @DnDAction : YoYo Games.Random.Choose
					/// @DnDVersion : 1
					/// @DnDHash : 04BEE79F
					/// @DnDInput : 2
					/// @DnDParent : 696B967A
					/// @DnDArgument : "var" "bweh"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "option" "zelinka_die_1"
					/// @DnDArgument : "option_1" "zelinka_die_2"
					var bweh = choose(zelinka_die_1, zelinka_die_2);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0ECE0D0A
					/// @DnDParent : 696B967A
					/// @DnDArgument : "soundid" "bweh"
					/// @DnDArgument : "gain" "1.5"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					audio_play_sound(bweh, 0, 0, 1.5, undefined, random_range(.9,1.1));	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 7C88655E
				/// @DnDParent : 26141905
				/// @DnDArgument : "const" ""speak""
				case "speak":	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
					/// @DnDVersion : 1
					/// @DnDHash : 1C3B7B65
					/// @DnDParent : 7C88655E
					/// @DnDArgument : "soundid" "gwah"
					/// @DnDArgument : "not" "1"
					var l1C3B7B65_0 = gwah;if (!audio_is_playing(l1C3B7B65_0)){	/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 57BD12EF
						/// @DnDInput : 11
						/// @DnDParent : 1C3B7B65
						/// @DnDArgument : "var" "gwah"
						/// @DnDArgument : "option" "zelinka_babble1"
						/// @DnDArgument : "option_1" "zelinka_babble2"
						/// @DnDArgument : "option_2" "zelinka_babble3"
						/// @DnDArgument : "option_3" "zelinka_babble4"
						/// @DnDArgument : "option_4" "zelinka_babble5"
						/// @DnDArgument : "option_5" "zelinka_babble6"
						/// @DnDArgument : "option_6" "zelinka_babble7"
						/// @DnDArgument : "option_7" "zelinka_babble8"
						/// @DnDArgument : "option_8" "zelinka_babble9"
						/// @DnDArgument : "option_9" "zelinka_babble10"
						/// @DnDArgument : "option_10" "zelinka_babble11"
						gwah = choose(zelinka_babble1, zelinka_babble2, zelinka_babble3, zelinka_babble4, zelinka_babble5, zelinka_babble6, zelinka_babble7, zelinka_babble8, zelinka_babble9, zelinka_babble10, zelinka_babble11);
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 2400B593
						/// @DnDParent : 1C3B7B65
						/// @DnDArgument : "soundid" "gwah"
						/// @DnDArgument : "gain" ".8"
						/// @DnDArgument : "pitch" "random_range(.9,1.2)"
						audio_play_sound(gwah, 0, 0, .8, undefined, random_range(.9,1.2));
					
						/// @DnDAction : YoYo Games.Common.If_Expression
						/// @DnDVersion : 1
						/// @DnDHash : 074127A6
						/// @DnDParent : 1C3B7B65
						/// @DnDArgument : "expr" "ds_list_empty(talking_mouths)"
						/// @DnDArgument : "not" "1"
						if(!(ds_list_empty(talking_mouths))){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 4DBD3DDF
							/// @DnDInput : 2
							/// @DnDParent : 074127A6
							/// @DnDArgument : "expr" "ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1))"
							/// @DnDArgument : "expr_1" ".5"
							/// @DnDArgument : "var" "mouth_expression"
							/// @DnDArgument : "var_1" "mouth_transformation"
							mouth_expression = ds_list_find_value(talking_mouths, irandom_range(0, ds_list_size(talking_mouths) -1));
							mouth_transformation = .5;}}	break;}	break;}}