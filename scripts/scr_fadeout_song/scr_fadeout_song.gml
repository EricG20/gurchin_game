/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1AC4663D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_fadeout_song"
/// @DnDArgument : "arg" "timmy=500"
function scr_fadeout_song(timmy=500) {	/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
	/// @DnDVersion : 1.1
	/// @DnDHash : 1856FA0A
	/// @DnDParent : 1AC4663D
	/// @DnDArgument : "sound" "o_game.curr_song"
	/// @DnDArgument : "volume" "0"
	/// @DnDArgument : "time" "timmy"
	audio_sound_gain(o_game.curr_song, 0, timmy);}