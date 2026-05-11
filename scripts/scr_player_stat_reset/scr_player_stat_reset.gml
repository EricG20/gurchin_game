/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 128A96EB
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_player_stat_reset"
function scr_player_stat_reset() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6DE0539B
	/// @DnDParent : 128A96EB
	/// @DnDArgument : "code" "switch(character_index){$(13_10)	case "Zelinka":$(13_10)		permanent_firerate_bonus = 1.15;$(13_10)	break;$(13_10)	$(13_10)	default:$(13_10)		permanent_firerate_bonus = 1;$(13_10)	break;$(13_10)}$(13_10)$(13_10)$(13_10)firerate_bonus = 1;$(13_10)ammo_bonus = 1;$(13_10)booster_bonus = 1;$(13_10)movementspeed_bonus = 1;$(13_10)reload_bonus = 1;$(13_10)booster_recharge_bonus = 1;$(13_10)robot_upgrade_level = 0;$(13_10)upgrade_offhand_reload = false;$(13_10)upgrade_switch_firerate = false;$(13_10)switch_firerate_timer = 0;$(13_10)upgrade_pulse_wave = false;$(13_10)$(13_10)for (var i = 0; i < ds_list_size(weapon_invo); i++;){$(13_10)	ds_list_set(weapon_invo, i, o_emptyhanded);$(13_10)	if (i == ds_list_size(weapon_invo)-1) ds_list_set(weapon_invo, i, default_gun);$(13_10)}"
	switch(character_index){
		case "Zelinka":
			permanent_firerate_bonus = 1.15;
		break;
		
		default:
			permanent_firerate_bonus = 1;
		break;
	}
	
	
	firerate_bonus = 1;
	ammo_bonus = 1;
	booster_bonus = 1;
	movementspeed_bonus = 1;
	reload_bonus = 1;
	booster_recharge_bonus = 1;
	robot_upgrade_level = 0;
	upgrade_offhand_reload = false;
	upgrade_switch_firerate = false;
	switch_firerate_timer = 0;
	upgrade_pulse_wave = false;
	
	for (var i = 0; i < ds_list_size(weapon_invo); i++;){
		ds_list_set(weapon_invo, i, o_emptyhanded);
		if (i == ds_list_size(weapon_invo)-1) ds_list_set(weapon_invo, i, default_gun);
	}

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 49A80270
	/// @DnDApplyTo : mygurn
	/// @DnDParent : 128A96EB
	/// @DnDArgument : "objind" "o_emptyhanded"
	/// @DnDSaveInfo : "objind" "o_emptyhanded"
	with(mygurn) instance_change(o_emptyhanded, true);

	/// @DnDAction : YoYo Games.Data Structures.DS_Clear
	/// @DnDVersion : 1
	/// @DnDHash : 5DCDDBBE
	/// @DnDParent : 128A96EB
	/// @DnDArgument : "ds" "1"
	/// @DnDArgument : "var" "weapon_levels"
	ds_map_clear(weapon_levels);

	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
	/// @DnDVersion : 1
	/// @DnDHash : 543BC49B
	/// @DnDInput : 2
	/// @DnDParent : 128A96EB
	/// @DnDArgument : "var" "weapon_levels"
	/// @DnDArgument : "key" "default_gun"
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "key_1" "o_emptyhanded"
	/// @DnDArgument : "value_1" "0"
	ds_map_replace(weapon_levels, default_gun, 1);
	ds_map_replace(weapon_levels, o_emptyhanded, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 685B78EC
	/// @DnDApplyTo : o_game
	/// @DnDParent : 128A96EB
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "camzoom"
	with(o_game) {
	camzoom = 1;
	
	}}