/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 575D4F39
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_dynamic_song"
/// @DnDArgument : "arg" "song_id"
/// @DnDArgument : "arg_1" "song_choice=0"
function scr_dynamic_song(song_id, song_choice=0) {	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 6DCD01F3
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "script" "scr_fadeout_song"
	/// @DnDArgument : "arg" "200"
	/// @DnDSaveInfo : "script" "scr_fadeout_song"
	script_execute(scr_fadeout_song, 200);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36E4E40A
	/// @DnDInput : 2
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "var" "prev_song_id"
	/// @DnDArgument : "var_1" "loop_start_here"
	prev_song_id = 0;
	loop_start_here = 0;

	/// @DnDAction : YoYo Games.Data Structures.Create_List
	/// @DnDVersion : 1
	/// @DnDHash : 5FBD9F7F
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "var" "song_channels"
	song_channels = ds_list_create();

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 07ABE3BA
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "expr" "asset_get_index(audio_get_name(o_game.curr_song))"
	var l07ABE3BA_0 = asset_get_index(audio_get_name(o_game.curr_song));switch(l07ABE3BA_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 14357281
		/// @DnDParent : 07ABE3BA
		/// @DnDArgument : "const" "select_zorb"
		case select_zorb:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 454C4EE7
			/// @DnDParent : 14357281
			/// @DnDArgument : "expr" ""menu""
			/// @DnDArgument : "var" "prev_song_id"
			prev_song_id = "menu";	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 0186A16D
		/// @DnDParent : 07ABE3BA
		/// @DnDArgument : "const" "select_zorb_chill"
		case select_zorb_chill:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CBE327C
			/// @DnDParent : 0186A16D
			/// @DnDArgument : "expr" ""menu""
			/// @DnDArgument : "var" "prev_song_id"
			prev_song_id = "menu";	break;}

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 67F8D0C1
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "expr" "song_id"
	var l67F8D0C1_0 = song_id;switch(l67F8D0C1_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4EB9FEE8
		/// @DnDParent : 67F8D0C1
		/// @DnDArgument : "const" ""menu""
		case "menu":	/// @DnDAction : YoYo Games.Data Structures.List_Add
			/// @DnDVersion : 1
			/// @DnDHash : 214FE18F
			/// @DnDInput : 2
			/// @DnDParent : 4EB9FEE8
			/// @DnDArgument : "var" "song_channels"
			/// @DnDArgument : "value" "select_zorb_chill"
			/// @DnDArgument : "value_1" "select_zorb"
			ds_list_add(song_channels, select_zorb_chill, select_zorb);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ECA5B24
			/// @DnDParent : 4EB9FEE8
			/// @DnDArgument : "expr" "1.41"
			/// @DnDArgument : "var" "loop_start_here"
			loop_start_here = 1.41;	break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 43E813AA
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "expr" "clamp(song_choice, 0, ds_list_size(song_channels)-1)"
	/// @DnDArgument : "var" "song_choice"
	song_choice = clamp(song_choice, 0, ds_list_size(song_channels)-1);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12E60E2E
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "var" "timestamp"
	timestamp = 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B729079
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "var" "song_id"
	/// @DnDArgument : "value" "prev_song_id"
	if(song_id == prev_song_id){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 75905031
		/// @DnDParent : 3B729079
		/// @DnDArgument : "var" "timestamp"
		/// @DnDArgument : "function" "audio_sound_get_track_position"
		/// @DnDArgument : "arg" "o_game.curr_song"
		timestamp = audio_sound_get_track_position(o_game.curr_song);}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 605D2D12
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "target" "o_game.curr_song"
	/// @DnDArgument : "soundid" "ds_list_find_value(song_channels, song_choice)"
	/// @DnDArgument : "loop" "1"
	/// @DnDArgument : "offset" "timestamp"
	o_game.curr_song = audio_play_sound(ds_list_find_value(song_channels, song_choice), 0, 1, 1.0, timestamp, 1.0);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3B9A4B57
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "var" "song_id"
	/// @DnDArgument : "value" "prev_song_id"
	if(song_id == prev_song_id){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2EAD7166
		/// @DnDInput : 3
		/// @DnDParent : 3B9A4B57
		/// @DnDArgument : "function" "audio_sound_gain"
		/// @DnDArgument : "arg" "o_game.curr_song"
		/// @DnDArgument : "arg_1" "0"
		/// @DnDArgument : "arg_2" "0"
		audio_sound_gain(o_game.curr_song, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 7E4168DB
		/// @DnDInput : 3
		/// @DnDParent : 3B9A4B57
		/// @DnDArgument : "function" "audio_sound_gain"
		/// @DnDArgument : "arg" "o_game.curr_song"
		/// @DnDArgument : "arg_1" "1"
		/// @DnDArgument : "arg_2" "200"
		audio_sound_gain(o_game.curr_song, 1, 200);}

	/// @DnDAction : YoYo Games.Audio.Set_Audio_Loop_Start
	/// @DnDVersion : 1
	/// @DnDHash : 5BB8D3D1
	/// @DnDParent : 575D4F39
	/// @DnDArgument : "idx" "o_game.curr_song"
	/// @DnDArgument : "offset" "loop_start_here"
	audio_sound_loop_start(o_game.curr_song, loop_start_here);}