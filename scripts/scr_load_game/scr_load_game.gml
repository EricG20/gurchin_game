/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7E6F085C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_load_game"
function scr_load_game() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 06DFE434
	/// @DnDApplyTo : o_game
	/// @DnDParent : 7E6F085C
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(!file_exists(file_name))$(13_10)	exit$(13_10)ds_map_destroy(level_data);$(13_10)ds_map_destroy(setting_data);$(13_10)var data=ds_map_secure_load(file_name);$(13_10)setting_data=data;$(13_10)level_data=data;$(13_10)room_restart();"
	with(o_game) {
	/// @description Execute Code
	if(!file_exists(file_name))
		exit
	ds_map_destroy(level_data);
	ds_map_destroy(setting_data);
	var data=ds_map_secure_load(file_name);
	setting_data=data;
	level_data=data;
	room_restart();
	}}