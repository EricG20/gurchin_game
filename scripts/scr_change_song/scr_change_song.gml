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

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 06F2F2D6
	/// @DnDParent : 05983DB4
	/// @DnDArgument : "expr" "new_song"
	var l06F2F2D6_0 = new_song;switch(l06F2F2D6_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6C964895
		/// @DnDParent : 06F2F2D6
		/// @DnDArgument : "const" "combat_1"
		case combat_1:	/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
			/// @DnDVersion : 1
			/// @DnDHash : 172D6BF4
			/// @DnDParent : 6C964895
			/// @DnDArgument : "idx" "o_game.curr_song"
			/// @DnDArgument : "offset" "36.92"
			audio_sound_loop_start(o_game.curr_song, 36.92);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 32F753E0
		/// @DnDParent : 06F2F2D6
		/// @DnDArgument : "const" "combat_3"
		case combat_3:	/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
			/// @DnDVersion : 1
			/// @DnDHash : 115B9922
			/// @DnDParent : 32F753E0
			/// @DnDArgument : "idx" "o_game.curr_song"
			/// @DnDArgument : "offset" "29.79"
			audio_sound_loop_start(o_game.curr_song, 29.79);	break;}}