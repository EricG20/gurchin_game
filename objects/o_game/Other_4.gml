/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 194F6172
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "white_out"
white_out = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27BD0123
/// @DnDInput : 2
/// @DnDArgument : "var" "white_beans"
/// @DnDArgument : "var_1" "targ_x_approacher"
white_beans = 0;
targ_x_approacher = 0;

/// @DnDAction : YoYo Games.Drawing.Set_Alignment
/// @DnDVersion : 1.1
/// @DnDHash : 06980E06
draw_set_halign(fa_left);
draw_set_valign(fa_top);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 61EB12DC
/// @DnDArgument : "expr" "state"
var l61EB12DC_0 = state;switch(l61EB12DC_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 268C1193
	/// @DnDParent : 61EB12DC
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 59A53139
		/// @DnDParent : 268C1193
		/// @DnDArgument : "expr" "room"
		var l59A53139_0 = room;switch(l59A53139_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 559C0940
			/// @DnDParent : 59A53139
			/// @DnDArgument : "const" "ship_room"
			case ship_room:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 785C7666
				/// @DnDInput : 18
				/// @DnDParent : 559C0940
				/// @DnDArgument : "expr_2" "3"
				/// @DnDArgument : "expr_3" "1"
				/// @DnDArgument : "expr_12" "false"
				/// @DnDArgument : "expr_14" "true"
				/// @DnDArgument : "expr_15" "20"
				/// @DnDArgument : "var" "scor"
				/// @DnDArgument : "var_1" "pylon_incr"
				/// @DnDArgument : "var_2" "pylon_enemy_cap"
				/// @DnDArgument : "var_3" "pylon_wave_number"
				/// @DnDArgument : "var_4" "combo_num"
				/// @DnDArgument : "var_5" "combo_bar"
				/// @DnDArgument : "var_6" "highest_combo"
				/// @DnDArgument : "var_7" "grade_tally"
				/// @DnDArgument : "var_8" "grade_tally_total"
				/// @DnDArgument : "var_9" "flub"
				/// @DnDArgument : "var_10" "new_flub"
				/// @DnDArgument : "var_11" "display_flub"
				/// @DnDArgument : "var_12" "finish_counting"
				/// @DnDArgument : "var_13" "pylon_enemies"
				/// @DnDArgument : "var_14" "can_skip_wave"
				/// @DnDArgument : "var_15" "pylon_enemy_goal"
				/// @DnDArgument : "var_16" "display_score"
				/// @DnDArgument : "var_17" "pylon_enemy_count"
				scor = 0;
				pylon_incr = 0;
				pylon_enemy_cap = 3;
				pylon_wave_number = 1;
				combo_num = 0;
				combo_bar = 0;
				highest_combo = 0;
				grade_tally = 0;
				grade_tally_total = 0;
				flub = 0;
				new_flub = 0;
				display_flub = 0;
				finish_counting = false;
				pylon_enemies = 0;
				can_skip_wave = true;
				pylon_enemy_goal = 20;
				display_score = 0;
				pylon_enemy_count = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5BF05470
				/// @DnDParent : 559C0940
				/// @DnDArgument : "xpos" "960"
				/// @DnDArgument : "var" "cardh"
				/// @DnDArgument : "objectid" "e_card"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_card"
				cardh = instance_create_layer(960, 0, "Effects", e_card);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4A26B1A8
				/// @DnDParent : 559C0940
				/// @DnDArgument : "expr" "Layer_1"
				/// @DnDArgument : "var" "cardh.sprite_index"
				cardh.sprite_index = Layer_1;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 06372EF1
				/// @DnDParent : 559C0940
				/// @DnDArgument : "xpos" "sethisx"
				/// @DnDArgument : "ypos" "sethisy"
				/// @DnDArgument : "objectid" "o_player"
				/// @DnDSaveInfo : "objectid" "o_player"
				instance_create_layer(sethisx, sethisy, "Instances", o_player);
			
				/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 6A7DF5DD
				/// @DnDInput : 4
				/// @DnDParent : 559C0940
				/// @DnDArgument : "var" "curr_song"
				/// @DnDArgument : "option" "intermission_1"
				/// @DnDArgument : "option_1" "intermission_2"
				/// @DnDArgument : "option_2" "intermission_3"
				/// @DnDArgument : "option_3" "intermission_4"
				curr_song = choose(intermission_1, intermission_2, intermission_3, intermission_4);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 59301C10
				/// @DnDParent : 559C0940
				/// @DnDArgument : "soundid" "curr_song"
				/// @DnDArgument : "loop" "1"
				audio_play_sound(curr_song, 0, 1, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 09FDFCA9
				/// @DnDParent : 559C0940
				/// @DnDArgument : "expr" "gm.PYLON"
				/// @DnDArgument : "var" "state"
				state = gm.PYLON;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 115C7B5E
			/// @DnDParent : 59A53139
			/// @DnDArgument : "const" "results_room"
			case results_room:	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 4A5D9E87
				/// @DnDParent : 115C7B5E
				/// @DnDArgument : "soundid" "intermission_peace"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "intermission_peace"
				var l4A5D9E87_0 = intermission_peace;if (!audio_is_playing(l4A5D9E87_0)){	/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 25ED2F30
					/// @DnDParent : 4A5D9E87
					/// @DnDArgument : "script" "scr_change_song"
					/// @DnDArgument : "arg" "results"
					/// @DnDSaveInfo : "script" "scr_change_song"
					script_execute(scr_change_song, results);}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0ADE4E37
				/// @DnDInput : 3
				/// @DnDParent : 115C7B5E
				/// @DnDArgument : "expr" "gm.RESULTS"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "display_score"
				/// @DnDArgument : "var_2" "new_points"
				state = gm.RESULTS;
				display_score = 0;
				new_points = 0;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 319F3184
			/// @DnDParent : 59A53139
			/// @DnDArgument : "const" "lvl_0"
			case lvl_0:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1520AFD3
				/// @DnDParent : 319F3184
				/// @DnDArgument : "expr" "s_lvl0_card"
				/// @DnDArgument : "var" "cardh.sprite_index"
				cardh.sprite_index = s_lvl0_card;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 49CAC6B2
				/// @DnDParent : 319F3184
				/// @DnDArgument : "xpos" "192"
				/// @DnDArgument : "ypos" "800"
				/// @DnDArgument : "objectid" "o_player"
				/// @DnDSaveInfo : "objectid" "o_player"
				instance_create_layer(192, 800, "Instances", o_player);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0E90C7E2
			/// @DnDParent : 59A53139
			/// @DnDArgument : "const" "Room1"
			case Room1:	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 76B4E513
				/// @DnDParent : 0E90C7E2
				/// @DnDArgument : "xpos" "192"
				/// @DnDArgument : "objectid" "o_player"
				/// @DnDSaveInfo : "objectid" "o_player"
				instance_create_layer(192, 0, "Instances", o_player);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 55CFD973
				/// @DnDParent : 0E90C7E2
				/// @DnDArgument : "target" "curr_song"
				/// @DnDArgument : "soundid" "test_music"
				/// @DnDArgument : "loop" "1"
				/// @DnDSaveInfo : "soundid" "test_music"
				curr_song = audio_play_sound(test_music, 0, 1, 1.0, undefined, 1.0);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 08545251
			/// @DnDParent : 59A53139
			/// @DnDArgument : "const" "lvl_01"
			case lvl_01:	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 228D2C40
				/// @DnDParent : 08545251
				/// @DnDArgument : "xpos" "sethisx"
				/// @DnDArgument : "ypos" "sethisy"
				/// @DnDArgument : "objectid" "o_player"
				/// @DnDSaveInfo : "objectid" "o_player"
				instance_create_layer(sethisx, sethisy, "Instances", o_player);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 12D00625
				/// @DnDInput : 2
				/// @DnDParent : 08545251
				/// @DnDArgument : "expr" "sethisx"
				/// @DnDArgument : "expr_1" "sethisy"
				/// @DnDArgument : "var" "respawn_x"
				/// @DnDArgument : "var_1" "respawn_y"
				respawn_x = sethisx;
				respawn_y = sethisy;	break;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 64AB5EB5
	/// @DnDParent : 61EB12DC
	/// @DnDArgument : "const" "gm.SELECT"
	case gm.SELECT:	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 25A7A9A4
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "sound" "menu"
		/// @DnDSaveInfo : "sound" "menu"
		audio_sound_gain(menu, 1, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1B882E34
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "script" "scr_change_song"
		/// @DnDArgument : "arg" "menu"
		/// @DnDSaveInfo : "script" "scr_change_song"
		script_execute(scr_change_song, menu);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 76E6B85A
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "var" "cardh"
		/// @DnDArgument : "objectid" "e_card"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_card"
		cardh = instance_create_layer(960, 0, "Effects", e_card);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4DD8E67F
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "expr" "Layer_1"
		/// @DnDArgument : "var" "cardh.sprite_index"
		cardh.sprite_index = Layer_1;
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 28213854
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "xpos" "1920"
		/// @DnDArgument : "var" "settings_dododo"
		/// @DnDArgument : "sequenceid" "settings_page"
		/// @DnDArgument : "layer" ""Instances""
		/// @DnDSaveInfo : "sequenceid" "settings_page"
		settings_dododo = layer_sequence_create("Instances", 1920, 0, settings_page);
	
		/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
		/// @DnDVersion : 1
		/// @DnDHash : 22BA4CBB
		/// @DnDDisabled : 1
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "msg" "string(scor_vals)"
	
	
		/// @DnDAction : YoYo Games.Files.Open_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 7A977EBD
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "filename" ""scores.ini""
		ini_open("scores.ini");
	
		/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 677AA1B7
		/// @DnDParent : 64AB5EB5
		for(i = 0; i < 10; i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 199D8175
			/// @DnDInput : 3
			/// @DnDParent : 677AA1B7
			/// @DnDArgument : "var" "loading_string"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "function" "ini_read_string"
			/// @DnDArgument : "arg" ""high_scores""
			/// @DnDArgument : "arg_1" ""scores_or_whatever""
			/// @DnDArgument : "arg_2" """"
			var loading_string = ini_read_string("high_scores", "scores_or_whatever", "");
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 450022EC
			/// @DnDParent : 677AA1B7
			/// @DnDArgument : "var" "loading_string"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" """"
			if(!(loading_string == "")){	/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 00CA4DF1
				/// @DnDInput : 2
				/// @DnDParent : 450022EC
				/// @DnDArgument : "function" "ds_list_read"
				/// @DnDArgument : "arg" "high_scores"
				/// @DnDArgument : "arg_1" "loading_string"
				ds_list_read(high_scores, loading_string);
			
				/// @DnDAction : YoYo Games.Data Structures.List_Add
				/// @DnDVersion : 1
				/// @DnDHash : 376C5BE0
				/// @DnDDisabled : 1
				/// @DnDParent : 450022EC
				/// @DnDArgument : "var" "high_scores"
				/// @DnDArgument : "value" "blip"}}
	
		/// @DnDAction : YoYo Games.Files.Close_Ini
		/// @DnDVersion : 1
		/// @DnDHash : 5CFD7E44
		/// @DnDParent : 64AB5EB5
		ini_close();
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 171419E1
		/// @DnDInput : 2
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "function" "ds_list_sort"
		/// @DnDArgument : "arg" "high_scores"
		/// @DnDArgument : "arg_1" "false"
		ds_list_sort(high_scores, false);
	
		/// @DnDAction : YoYo Games.Common.If_Undefined
		/// @DnDVersion : 1
		/// @DnDHash : 35D8F720
		/// @DnDDisabled : 1
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "var" "scor_vals"
		/// @DnDArgument : "not" "1"
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 613976B4
		/// @DnDDisabled : 1
		/// @DnDParent : 35D8F720
		/// @DnDArgument : "soundid" "bleh_rblx_se"
		/// @DnDSaveInfo : "soundid" "bleh_rblx_se"
		
		
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 3E91DEBA
		/// @DnDInput : 2
		/// @DnDDisabled : 1
		/// @DnDParent : 35D8F720
		/// @DnDArgument : "function" "ds_list_copy"
		/// @DnDArgument : "arg" "high_scores"
		/// @DnDArgument : "arg_1" "scor_vals"
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C2301E6
		/// @DnDDisabled : 1
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "var" "scor_vals"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "-1"
	
	
		/// @DnDAction : YoYo Games.Common.If_Undefined
		/// @DnDVersion : 1
		/// @DnDHash : 525AF2EE
		/// @DnDDisabled : 1
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "var" "scor_vals"
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 016792C7
		/// @DnDDisabled : 1
		/// @DnDParent : 525AF2EE
		/// @DnDArgument : "soundid" "dry_fart"
		/// @DnDSaveInfo : "soundid" "dry_fart"	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3613DE42
	/// @DnDParent : 61EB12DC
	/// @DnDArgument : "const" "gm.TITLE"
	case gm.TITLE:	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 24D9075E
		/// @DnDParent : 3613DE42
		/// @DnDArgument : "xpos" "1920"
		/// @DnDArgument : "var" "settings_dododo"
		/// @DnDArgument : "sequenceid" "settings_page"
		/// @DnDArgument : "layer" ""Instances""
		/// @DnDSaveInfo : "sequenceid" "settings_page"
		settings_dododo = layer_sequence_create("Instances", 1920, 0, settings_page);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0908798B
	/// @DnDParent : 61EB12DC
	/// @DnDArgument : "const" "gm.BOSS"
	case gm.BOSS:	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 50A54792
		/// @DnDParent : 0908798B
		/// @DnDArgument : "expr" "room"
		var l50A54792_0 = room;switch(l50A54792_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 0A0A468B
			/// @DnDParent : 50A54792
			default:	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 15D00540
				/// @DnDParent : 0A0A468B
				/// @DnDArgument : "xpos" "sethisx"
				/// @DnDArgument : "ypos" "sethisy"
				/// @DnDArgument : "objectid" "o_player"
				/// @DnDSaveInfo : "objectid" "o_player"
				instance_create_layer(sethisx, sethisy, "Instances", o_player);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5E64FF23
			/// @DnDParent : 50A54792
			/// @DnDArgument : "const" "boss_0"
			case boss_0:	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
				/// @DnDVersion : 1
				/// @DnDHash : 2DA35B43
				/// @DnDParent : 5E64FF23
				/// @DnDArgument : "xpos" "640"
				/// @DnDArgument : "ypos" "360"
				/// @DnDArgument : "var" "cutscene"
				/// @DnDArgument : "sequenceid" "boss0scene"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "sequenceid" "boss0scene"
				cutscene = layer_sequence_create("Instances_Front", 640, 360, boss0scene);	break;}	break;}

/// @DnDAction : YoYo Games.Game.Save_Game
/// @DnDVersion : 1
/// @DnDHash : 39B38A82
/// @DnDDisabled : 1