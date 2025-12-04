/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 78EE51F4
/// @DnDArgument : "soundid" "kaching_sound_fx"
/// @DnDSaveInfo : "soundid" "kaching_sound_fx"
audio_play_sound(kaching_sound_fx, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 785C7666
/// @DnDArgument : "var" "scor"
scor = 0;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 61EB12DC
/// @DnDArgument : "expr" "state"
var l61EB12DC_0 = state;switch(l61EB12DC_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 268C1193
	/// @DnDParent : 61EB12DC
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5BF05470
		/// @DnDParent : 268C1193
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "var" "cardh"
		/// @DnDArgument : "objectid" "e_card"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_card"
		cardh = instance_create_layer(960, 0, "Effects", e_card);
	
		/// @DnDAction : YoYo Games.Switch.Switch
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
	case gm.SELECT:	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 77100F1C
		/// @DnDParent : 64AB5EB5
		/// @DnDArgument : "soundid" "menu"
		/// @DnDArgument : "loop" "1"
		/// @DnDSaveInfo : "soundid" "menu"
		audio_play_sound(menu, 0, 1, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 28213854
		/// @DnDParent : 64AB5EB5
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