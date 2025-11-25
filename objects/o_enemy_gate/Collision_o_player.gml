/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F28CCEC
/// @DnDArgument : "var" "active"
/// @DnDArgument : "value" "false"
if(active == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 29A07446
	/// @DnDParent : 2F28CCEC
	/// @DnDArgument : "var" "cleared"
	/// @DnDArgument : "value" "false"
	if(cleared == false){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7A6226F4
		/// @DnDParent : 29A07446
		/// @DnDArgument : "var" "o_game.state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "gm.GATE"
		if(!(o_game.state == gm.GATE)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0F6DA79C
			/// @DnDInput : 3
			/// @DnDParent : 7A6226F4
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "expr_1" "gm.GATE"
			/// @DnDArgument : "expr_2" "id"
			/// @DnDArgument : "var" "active"
			/// @DnDArgument : "var_1" "o_game.state"
			/// @DnDArgument : "var_2" "global.the_gate"
			active = true;
			o_game.state = gm.GATE;
			global.the_gate = id;
		
			/// @DnDAction : YoYo Games.Sequences.Sequence_Create
			/// @DnDVersion : 1
			/// @DnDHash : 0CEF0543
			/// @DnDParent : 7A6226F4
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "mop"
			/// @DnDArgument : "sequenceid" "seq"
			/// @DnDArgument : "layer" ""Instances""
			mop = layer_sequence_create("Instances", x + 0, y + 0, seq);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 283486C1
			/// @DnDParent : 7A6226F4
			/// @DnDArgument : "soundid" "sfx_confirm"
			/// @DnDSaveInfo : "soundid" "sfx_confirm"
			audio_play_sound(sfx_confirm, 0, 0, 1.0, undefined, 1.0);}}}