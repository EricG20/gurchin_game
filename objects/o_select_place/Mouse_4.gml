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
	case "BACK":	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A8CE487
		/// @DnDParent : 1823131A
		/// @DnDArgument : "expr" "576"
		/// @DnDArgument : "var" "global.targ_x"
		global.targ_x = 576;	break;}