/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 7AAD5226
/// @DnDArgument : "expr" "state"
var l7AAD5226_0 = state;switch(l7AAD5226_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B9FE7EA
	/// @DnDParent : 7AAD5226
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 399E7422
		/// @DnDParent : 4B9FE7EA
		/// @DnDArgument : "expr" "paused"
		/// @DnDArgument : "not" "1"
		if(!(paused)){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40C98D25
			/// @DnDParent : 399E7422
			/// @DnDArgument : "var" "global.game_speed"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "8"
			if(global.game_speed >= 8){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 54EA61A0
				/// @DnDParent : 40C98D25
				/// @DnDArgument : "soundid" "sfx_pause_start"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(.9,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_pause_start"
				audio_play_sound(sfx_pause_start, 0, 0, .3, undefined, random_range(.9,1.2));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4B57D5A0
				/// @DnDInput : 2
				/// @DnDParent : 40C98D25
				/// @DnDArgument : "expr_1" "true"
				/// @DnDArgument : "var" "global.game_time"
				/// @DnDArgument : "var_1" "paused"
				global.game_time = 0;
				paused = true;
			
				/// @DnDAction : YoYo Games.Sequences.Sequence_Create
				/// @DnDVersion : 1
				/// @DnDHash : 6B76F3D2
				/// @DnDParent : 40C98D25
				/// @DnDArgument : "xpos" "o_camera.x"
				/// @DnDArgument : "ypos" "o_camera.y"
				/// @DnDArgument : "var" "binky"
				/// @DnDArgument : "sequenceid" "pause_settings"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "sequenceid" "pause_settings"
				binky = layer_sequence_create("Effects", o_camera.x, o_camera.y, pause_settings);}}	break;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18DD9CF9
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "global.we_can_move"
global.we_can_move = true;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3D4EFD17
/// @DnDArgument : "expr" "(global.game_speed <= .05) || (global.game_speed >= 8)"
if((global.game_speed <= .05) || (global.game_speed >= 8)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 232C7B6F
	/// @DnDParent : 3D4EFD17
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "global.we_can_move"
	global.we_can_move = false;}