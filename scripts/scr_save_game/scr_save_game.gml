/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 60CA8AC5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_save_game"
function scr_save_game() 
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 088CB88F
	/// @DnDApplyTo : o_game
	/// @DnDParent : 60CA8AC5
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)ds_map_secure_save(level_data,file_name)"
	with(o_game) {
	/// @description Execute Code
	ds_map_secure_save(level_data,file_name)
	}
}