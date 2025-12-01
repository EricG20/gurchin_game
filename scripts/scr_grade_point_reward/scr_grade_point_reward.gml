/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 09BDD0B1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_grade_point_reward"
function scr_grade_point_reward() {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4335DF62
	/// @DnDParent : 09BDD0B1
	/// @DnDArgument : "var" "o_game.grade_tally"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "14"
	if(o_game.grade_tally >= 14){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F2820B2
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "expr" "o_game.scor*2"
		/// @DnDArgument : "var" "o_game.scor"
		o_game.scor = o_game.scor*2;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 37C15C3B
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "var" "cardh"
		/// @DnDArgument : "objectid" "e_card"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_card"
		cardh = instance_create_layer(960, 0, "Effects", e_card);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73AE7040
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "expr" "s_epicwin"
		/// @DnDArgument : "var" "cardh.sprite_index"
		cardh.sprite_index = s_epicwin;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 128A653E
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "soundid" "jackpot"
		/// @DnDSaveInfo : "soundid" "jackpot"
		audio_play_sound(jackpot, 0, 0, 1.0, undefined, 1.0);}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 33B17EFF
	/// @DnDParent : 09BDD0B1
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 44DACCE2
		/// @DnDParent : 33B17EFF
		/// @DnDArgument : "expr" "o_game.scor*((o_game.grade_tally/14)*1.5)"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "o_game.scor"
		o_game.scor += o_game.scor*((o_game.grade_tally/14)*1.5);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F9C8D07
	/// @DnDInput : 2
	/// @DnDParent : 09BDD0B1
	/// @DnDArgument : "expr" "o_game.grade_tally"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_game.grade_tally_total"
	/// @DnDArgument : "var_1" "o_game.grade_tally"
	o_game.grade_tally_total += o_game.grade_tally;
	o_game.grade_tally = 0;}