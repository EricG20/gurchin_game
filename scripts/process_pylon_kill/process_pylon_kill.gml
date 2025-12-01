/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 635359D0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "process_pylon_kill"
/// @DnDArgument : "arg" "bounty=50"
function process_pylon_kill(bounty=50) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EABA602
	/// @DnDParent : 635359D0
	/// @DnDArgument : "expr" "bounty"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_game.scor"
	o_game.scor += bounty;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4996F17C
	/// @DnDParent : 635359D0
	/// @DnDArgument : "var" "o_game.state"
	/// @DnDArgument : "value" "gm.PYLON"
	if(o_game.state == gm.PYLON){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4D5CDC6A
		/// @DnDInput : 3
		/// @DnDParent : 4996F17C
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "530"
		/// @DnDArgument : "expr_2" "1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "o_game.pylon_enemy_count"
		/// @DnDArgument : "var_1" "o_game.combo_bar"
		/// @DnDArgument : "var_2" "o_game.combo_num"
		o_game.pylon_enemy_count += -1;
		o_game.combo_bar = 530;
		o_game.combo_num += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 59AFE9E2
		/// @DnDParent : 4996F17C
		/// @DnDArgument : "var" "o_game.combo_num % 15"
		if(o_game.combo_num % 15 == 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 35E13EE7
			/// @DnDParent : 59AFE9E2
			/// @DnDArgument : "soundid" "sfx_combo"
			/// @DnDArgument : "pitch" ".8+(o_game.combo_num/15)*.2"
			/// @DnDSaveInfo : "soundid" "sfx_combo"
			audio_play_sound(sfx_combo, 0, 0, 1.0, undefined, .8+(o_game.combo_num/15)*.2);}}}