/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75BE731D
/// @DnDArgument : "expr" "clamp(hp, 0, 40)"
/// @DnDArgument : "var" "hp"
hp = clamp(hp, 0, 40);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 66BDAA6E
/// @DnDArgument : "expr" "time_to_heal"
if(time_to_heal){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F357C3D
	/// @DnDInput : 3
	/// @DnDParent : 66BDAA6E
	/// @DnDArgument : "expr" "10"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "o_player.max_hp"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "var_1" "o_player.hp"
	/// @DnDArgument : "var_2" "time_to_heal"
	hp += 10;
	o_player.hp = o_player.max_hp;
	time_to_heal = false;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A40742F
	/// @DnDInput : 2
	/// @DnDParent : 66BDAA6E
	/// @DnDArgument : "expr" ""I just thought REALLY hard about you feeling better. Did that work?""
	/// @DnDArgument : "expr_1" "true"
	/// @DnDArgument : "var" "n_message"
	/// @DnDArgument : "var_1" "say_something"
	n_message = "I just thought REALLY hard about you feeling better. Did that work?";
	say_something = true;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 5230A260
	/// @DnDParent : 66BDAA6E
	/// @DnDArgument : "steps" "400"
	alarm_set(0, 400);}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7E56990B
/// @DnDArgument : "expr" "!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)"
if(!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 72D42FD4
	/// @DnDDisabled : 1
	/// @DnDParent : 7E56990B
	/// @DnDArgument : "var" "floor(o_game.pylon_incr)%400"}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1E769378
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23BC4E54
	/// @DnDInput : 2
	/// @DnDParent : 1E769378
	/// @DnDArgument : "expr" "1*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-999"
	/// @DnDArgument : "var" "death_incr"
	/// @DnDArgument : "var_1" "hp"
	death_incr += 1*global.game_speed;
	hp = -999;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5E016CAF
	/// @DnDParent : 1E769378
	/// @DnDArgument : "script" "scr_fadeout_song"
	/// @DnDArgument : "arg" "4000"
	/// @DnDSaveInfo : "script" "scr_fadeout_song"
	script_execute(scr_fadeout_song, 4000);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 790D7DC3
	/// @DnDParent : 1E769378
	/// @DnDArgument : "var" "floor(death_incr) mod 7"
	if(floor(death_incr) mod 7 == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 538717E3
		/// @DnDParent : 790D7DC3
		/// @DnDArgument : "expr" "floor(death_incr)+1"
		/// @DnDArgument : "var" "death_incr"
		death_incr = floor(death_incr)+1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 78C1F000
		/// @DnDInput : 4
		/// @DnDParent : 790D7DC3
		/// @DnDArgument : "script" "scr_makeexplosion"
		/// @DnDArgument : "arg" "x+random_range(-20,20)"
		/// @DnDArgument : "arg_1" "y-30+random_range(-20,20)"
		/// @DnDArgument : "arg_2" "false"
		/// @DnDArgument : "arg_3" ".1"
		/// @DnDSaveInfo : "script" "scr_makeexplosion"
		script_execute(scr_makeexplosion, x+random_range(-20,20), y-30+random_range(-20,20), false, .1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2708C3FE
		/// @DnDParent : 790D7DC3
		/// @DnDArgument : "soundid" "sfx_smallboom"
		/// @DnDArgument : "gain" ".2"
		/// @DnDArgument : "pitch" "random_range(.8,1.2)"
		/// @DnDSaveInfo : "soundid" "sfx_smallboom"
		audio_play_sound(sfx_smallboom, 0, 0, .2, undefined, random_range(.8,1.2));}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7935946F
	/// @DnDParent : 1E769378
	/// @DnDArgument : "script" "scr_white_flash"
	/// @DnDArgument : "arg" "o_game.white_flash_value + 0.15*global.game_speed"
	/// @DnDSaveInfo : "script" "scr_white_flash"
	script_execute(scr_white_flash, o_game.white_flash_value + 0.15*global.game_speed);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4531C80E
/// @DnDArgument : "var" "death_incr"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "300"
if(death_incr >= 300){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3471317E
	/// @DnDInput : 2
	/// @DnDParent : 4531C80E
	/// @DnDArgument : "expr" "gm.RESULTS"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "o_game.state"
	/// @DnDArgument : "var_1" "o_game.in_wave"
	o_game.state = gm.RESULTS;
	o_game.in_wave = false;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 0CC2EB2D
	/// @DnDDisabled : 1
	/// @DnDParent : 4531C80E
	/// @DnDArgument : "room" "results_room"
	/// @DnDSaveInfo : "room" "results_room"}