/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0B12CE55
/// @DnDArgument : "var" "o_game.in_wave"
/// @DnDArgument : "value" "true"
if(o_game.in_wave == true){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73580916
	/// @DnDParent : 0B12CE55
	/// @DnDArgument : "var" "last_hp"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "hp"
	if(last_hp > hp){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
		/// @DnDVersion : 1
		/// @DnDHash : 17AEBA92
		/// @DnDParent : 73580916
		/// @DnDArgument : "soundid" "sfx_pylon_hurt"
		/// @DnDSaveInfo : "soundid" "sfx_pylon_hurt"
		var l17AEBA92_0 = sfx_pylon_hurt;if (audio_is_playing(l17AEBA92_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 410A78A0
			/// @DnDParent : 17AEBA92
			/// @DnDArgument : "soundid" "sfx_pylon_hurt"
			/// @DnDSaveInfo : "soundid" "sfx_pylon_hurt"
			audio_stop_sound(sfx_pylon_hurt);}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 4121E056
		/// @DnDParent : 73580916
		/// @DnDArgument : "soundid" "sfx_pylon_hurt"
		/// @DnDArgument : "gain" ".5"
		/// @DnDArgument : "pitch" "-.5+random_range(1.1,1.4) - (last_hp-hp)*.2"
		/// @DnDSaveInfo : "soundid" "sfx_pylon_hurt"
		audio_play_sound(sfx_pylon_hurt, 0, 0, .5, undefined, -.5+random_range(1.1,1.4) - (last_hp-hp)*.2);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CBE3890
		/// @DnDParent : 73580916
		/// @DnDArgument : "expr" "last_hp-hp"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "o_game.pylon_lost_health"
		o_game.pylon_lost_health += last_hp-hp;
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 65C5640F
		/// @DnDInput : 3
		/// @DnDParent : 73580916
		/// @DnDArgument : "var" "n_message"
		/// @DnDArgument : "option" ""OH NAH!""
		/// @DnDArgument : "option_1" ""YEOOOW!""
		/// @DnDArgument : "option_2" ""HELP!""
		n_message = choose("OH NAH!", "YEOOOW!", "HELP!");
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EAD3A85
		/// @DnDInput : 2
		/// @DnDParent : 73580916
		/// @DnDArgument : "expr" "n_message"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "n_message"
		/// @DnDArgument : "var_1" "say_something"
		n_message = n_message;
		say_something = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 13148A98
		/// @DnDParent : 73580916
		/// @DnDArgument : "steps" "200"
		alarm_set(0, 200);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2EAE7177
		/// @DnDParent : 73580916
		/// @DnDArgument : "script" "msg_stop"
		/// @DnDSaveInfo : "script" "msg_stop"
		script_execute(msg_stop);}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 488892CB
/// @DnDArgument : "expr" "hp"
/// @DnDArgument : "var" "last_hp"
last_hp = hp;