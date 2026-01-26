/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3E6394AE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_set_pylon_start_params"
function scr_set_pylon_start_params() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1F2DBEEE
	/// @DnDInput : 28
	/// @DnDParent : 3E6394AE
	/// @DnDArgument : "expr_2" "3"
	/// @DnDArgument : "expr_3" "1"
	/// @DnDArgument : "expr_12" "false"
	/// @DnDArgument : "expr_14" "true"
	/// @DnDArgument : "expr_15" "20"
	/// @DnDArgument : "expr_18" "false"
	/// @DnDArgument : "expr_19" "false"
	/// @DnDArgument : "expr_20" "false"
	/// @DnDArgument : "expr_21" "false"
	/// @DnDArgument : "expr_22" "1"
	/// @DnDArgument : "expr_23" "1"
	/// @DnDArgument : "expr_24" "1"
	/// @DnDArgument : "expr_25" "1"
	/// @DnDArgument : "expr_26" "1"
	/// @DnDArgument : "expr_27" "false"
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
	/// @DnDArgument : "var_18" "reward_one"
	/// @DnDArgument : "var_19" "reward_two"
	/// @DnDArgument : "var_20" "reward_three"
	/// @DnDArgument : "var_21" "reward_four"
	/// @DnDArgument : "var_22" "global.ammo_bonus"
	/// @DnDArgument : "var_23" "global.booster_bonus"
	/// @DnDArgument : "var_24" "global.flat_firerate_bonus"
	/// @DnDArgument : "var_25" "global.flat_reload_bonus"
	/// @DnDArgument : "var_26" "global.movementspeed_bonus"
	/// @DnDArgument : "var_27" "boss_bool"
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
	reward_one = false;
	reward_two = false;
	reward_three = false;
	reward_four = false;
	global.ammo_bonus = 1;
	global.booster_bonus = 1;
	global.flat_firerate_bonus = 1;
	global.flat_reload_bonus = 1;
	global.movementspeed_bonus = 1;
	boss_bool = false;}