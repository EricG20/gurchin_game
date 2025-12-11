/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2297323E
/// @DnDArgument : "soundid" "sfx_confirm"
/// @DnDSaveInfo : "soundid" "sfx_confirm"
audio_play_sound(sfx_confirm, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4741758F
/// @DnDArgument : "expr" "1.4"
/// @DnDArgument : "var" "flashAlpha"
flashAlpha = 1.4;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 08A25B38
/// @DnDArgument : "expr" "words"
var l08A25B38_0 = words;switch(l08A25B38_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 32B6CF9A
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""PLAY""
	case "PLAY":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7F158A79
		/// @DnDParent : 32B6CF9A
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "increment"
		increment = true;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 5A338DD3
		/// @DnDParent : 32B6CF9A
		/// @DnDArgument : "sound" "menu"
		/// @DnDArgument : "volume" "0"
		/// @DnDArgument : "time" "3000"
		/// @DnDSaveInfo : "sound" "menu"
		audio_sound_gain(menu, 0, 3000);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2DB445DC
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""START""
	case "START":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26238128
		/// @DnDParent : 2DB445DC
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "increment"
		increment = true;
	
		/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
		/// @DnDVersion : 1.1
		/// @DnDHash : 0A99D3F2
		/// @DnDParent : 2DB445DC
		/// @DnDArgument : "sound" "menu"
		/// @DnDArgument : "volume" "0"
		/// @DnDArgument : "time" "3000"
		/// @DnDSaveInfo : "sound" "menu"
		audio_sound_gain(menu, 0, 3000);	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B49FFE5
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""SETTINGS""
	case "SETTINGS":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4B0EA715
		/// @DnDParent : 4B49FFE5
		/// @DnDArgument : "expr" "-1260"
		/// @DnDArgument : "var" "global.targ_x"
		global.targ_x = -1260;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1823131A
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""BACK""
	case "BACK":	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 02C757E2
		/// @DnDParent : 1823131A
		/// @DnDArgument : "expr" "o_game.state"
		var l02C757E2_0 = o_game.state;switch(l02C757E2_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 4ABA7112
			/// @DnDParent : 02C757E2
			default:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 31AAB79E
				/// @DnDParent : 4ABA7112
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "increment"
				increment = true;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 36239174
				/// @DnDParent : 4ABA7112
				/// @DnDArgument : "script" "scr_fadeout_song"
				/// @DnDArgument : "arg" "2000"
				/// @DnDSaveInfo : "script" "scr_fadeout_song"
				script_execute(scr_fadeout_song, 2000);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 2DAC6BF1
			/// @DnDParent : 02C757E2
			/// @DnDArgument : "const" "gm.SELECT"
			case gm.SELECT:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7A8CE487
				/// @DnDParent : 2DAC6BF1
				/// @DnDArgument : "expr" "576"
				/// @DnDArgument : "var" "global.targ_x"
				global.targ_x = 576;	break;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6C11E009
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""QUIT""
	case "QUIT":	/// @DnDAction : YoYo Games.Game.End_Game
		/// @DnDVersion : 1
		/// @DnDHash : 4567E630
		/// @DnDParent : 6C11E009
		game_end();	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0202F69F
	/// @DnDParent : 08A25B38
	/// @DnDArgument : "const" ""TUTORIAL""
	case "TUTORIAL":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 18004433
		/// @DnDParent : 0202F69F
		/// @DnDArgument : "expr" "2260"
		/// @DnDArgument : "var" "global.targ_x"
		global.targ_x = 2260;
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 3E8C1E8B
		/// @DnDApplyTo : {o_game}
		/// @DnDParent : 0202F69F
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "ypos" "540"
		/// @DnDArgument : "var" "teto"
		/// @DnDArgument : "sequenceid" "tutorial"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "sequenceid" "tutorial"
		with(o_game) {
			teto = layer_sequence_create("Effects", 960, 540, tutorial); 
		}
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4FFFB591
		/// @DnDParent : 0202F69F
		/// @DnDArgument : "script" "scr_fadeout_song"
		/// @DnDArgument : "arg" "10"
		/// @DnDSaveInfo : "script" "scr_fadeout_song"
		script_execute(scr_fadeout_song, 10);	break;}