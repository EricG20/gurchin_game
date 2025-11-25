/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2AA6CD4F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_save_settings"
/// @DnDArgument : "arg" "key"
/// @DnDArgument : "arg_1" "valu"
function scr_save_settings(key, valu) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 08E941B2
	/// @DnDApplyTo : o_game
	/// @DnDParent : 2AA6CD4F
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)ds_map_replace(o_game.setting_data,key,valu);$(13_10)ds_map_secure_save(o_game.setting_data,file_name);"
	with(o_game) {
	/// @description Execute Code
	ds_map_replace(o_game.setting_data,key,valu);
	ds_map_secure_save(o_game.setting_data,file_name);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 39AB3F59
	/// @DnDParent : 2AA6CD4F
	/// @DnDArgument : "soundid" "sfx_dry_boost"
	/// @DnDSaveInfo : "soundid" "sfx_dry_boost"
	audio_play_sound(sfx_dry_boost, 0, 0, 1.0, undefined, 1.0);}