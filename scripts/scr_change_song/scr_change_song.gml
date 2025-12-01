/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 05983DB4
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_change_song"
/// @DnDArgument : "arg" "new_song"
function scr_change_song(new_song) {	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 24F1FF69
	/// @DnDParent : 05983DB4
	/// @DnDArgument : "soundid" "o_game.curr_song"
	var l24F1FF69_0 = o_game.curr_song;if (audio_is_playing(l24F1FF69_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 2F90A18C
		/// @DnDParent : 24F1FF69
		/// @DnDArgument : "soundid" "o_game.curr_song"
		audio_stop_sound(o_game.curr_song);}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 005F0202
	/// @DnDParent : 05983DB4
	/// @DnDArgument : "target" "o_game.curr_song"
	/// @DnDArgument : "soundid" "new_song"
	/// @DnDArgument : "loop" "1"
	o_game.curr_song = audio_play_sound(new_song, 0, 1, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B867046
	/// @DnDParent : 05983DB4
	/// @DnDArgument : "var" "new_song"
	/// @DnDArgument : "value" "combat_1"
	if(new_song == combat_1){	/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
		/// @DnDVersion : 1
		/// @DnDHash : 172D6BF4
		/// @DnDParent : 7B867046
		/// @DnDArgument : "idx" "o_game.curr_song"
		/// @DnDArgument : "offset" "36.92"
		audio_sound_loop_start(o_game.curr_song, 36.92);}}