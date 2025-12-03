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
	/// @DnDArgument : "value" "12"
	if(o_game.grade_tally >= 12){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F2820B2
		/// @DnDInput : 2
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "expr" "o_game.new_points"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "o_game.new_flub"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "o_game.scor"
		/// @DnDArgument : "var_1" "o_game.flub"
		o_game.scor += o_game.new_points;
		o_game.flub += o_game.new_flub;
	
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
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 036E46A4
		/// @DnDApplyTo : cardh
		/// @DnDParent : 4335DF62
		/// @DnDArgument : "value" "s_epicwin"
		/// @DnDArgument : "instvar" "10"
		with(cardh) {
		sprite_index = s_epicwin;
		}
	
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
		/// @DnDInput : 2
		/// @DnDParent : 33B17EFF
		/// @DnDArgument : "expr" "floor(o_game.new_points*((o_game.grade_tally/12)*.3))"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "floor(o_game.new_flub*((o_game.grade_tally/12)*.3))"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "o_game.scor"
		/// @DnDArgument : "var_1" "o_game.flub"
		o_game.scor += floor(o_game.new_points*((o_game.grade_tally/12)*.3));
		o_game.flub += floor(o_game.new_flub*((o_game.grade_tally/12)*.3));}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F9C8D07
	/// @DnDInput : 5
	/// @DnDParent : 09BDD0B1
	/// @DnDArgument : "expr" "o_game.grade_tally"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_game.grade_tally_total"
	/// @DnDArgument : "var_1" "o_game.grade_tally"
	/// @DnDArgument : "var_2" "o_game.new_points"
	/// @DnDArgument : "var_3" "o_game.new_flub"
	/// @DnDArgument : "var_4" "o_game.player_lost_health"
	o_game.grade_tally_total += o_game.grade_tally;
	o_game.grade_tally = 0;
	o_game.new_points = 0;
	o_game.new_flub = 0;
	o_game.player_lost_health = 0;}