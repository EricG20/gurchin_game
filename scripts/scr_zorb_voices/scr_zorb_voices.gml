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
					audio_play_sound(gurchin_die, 0, 0, 1.5, undefined, 1.0);	break;}	break;
	
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
					audio_play_sound(bweh, 0, 0, 1.5, undefined, random_range(.9,1.1));	break;}	break;}}