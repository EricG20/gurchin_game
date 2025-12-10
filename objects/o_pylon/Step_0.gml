/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6BC019A2
/// @DnDArgument : "expr" "!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)"
if(!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C6A45FB
	/// @DnDParent : 6BC019A2
	/// @DnDArgument : "var" "floor(o_game.pylon_incr)%400"
	if(floor(o_game.pylon_incr)%400 == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70601913
		/// @DnDParent : 0C6A45FB
		/// @DnDArgument : "expr" "clamp(hp+1, 0, 40)"
		/// @DnDArgument : "var" "hp"
		hp = clamp(hp+1, 0, 40);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B6CC9D3
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B3D3DDB
	/// @DnDInput : 2
	/// @DnDParent : 2B6CC9D3
	/// @DnDArgument : "expr" "1*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-999"
	/// @DnDArgument : "var" "death_incr"
	/// @DnDArgument : "var_1" "hp"
	death_incr += 1*global.game_speed;
	hp = -999;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 37099456
	/// @DnDParent : 2B6CC9D3
	/// @DnDArgument : "script" "scr_fadeout_song"
	/// @DnDArgument : "arg" "4000"
	/// @DnDSaveInfo : "script" "scr_fadeout_song"
	script_execute(scr_fadeout_song, 4000);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 637959B5
	/// @DnDParent : 2B6CC9D3
	/// @DnDArgument : "var" "floor(death_incr) mod 7"
	if(floor(death_incr) mod 7 == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3846EDA0
		/// @DnDParent : 637959B5
		/// @DnDArgument : "expr" "floor(death_incr)+1"
		/// @DnDArgument : "var" "death_incr"
		death_incr = floor(death_incr)+1;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 64ECB703
		/// @DnDInput : 4
		/// @DnDParent : 637959B5
		/// @DnDArgument : "script" "scr_makeexplosion"
		/// @DnDArgument : "arg" "x+random_range(-20,20)"
		/// @DnDArgument : "arg_1" "y-30+random_range(-20,20)"
		/// @DnDArgument : "arg_2" "false"
		/// @DnDArgument : "arg_3" ".1"
		/// @DnDSaveInfo : "script" "scr_makeexplosion"
		script_execute(scr_makeexplosion, x+random_range(-20,20), y-30+random_range(-20,20), false, .1);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 63D9C062
		/// @DnDParent : 637959B5
		/// @DnDArgument : "soundid" "sfx_smallboom"
		/// @DnDArgument : "gain" ".2"
		/// @DnDArgument : "pitch" "random_range(.8,1.2)"
		/// @DnDSaveInfo : "soundid" "sfx_smallboom"
		audio_play_sound(sfx_smallboom, 0, 0, .2, undefined, random_range(.8,1.2));}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1F2937DE
	/// @DnDParent : 2B6CC9D3
	/// @DnDArgument : "script" "scr_white_flash"
	/// @DnDArgument : "arg" "o_game.white_flash_value + 0.15*global.game_speed"
	/// @DnDSaveInfo : "script" "scr_white_flash"
	script_execute(scr_white_flash, o_game.white_flash_value + 0.15*global.game_speed);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DBDF74B
/// @DnDArgument : "var" "death_incr"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "300"
if(death_incr >= 300){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B1B65F3
	/// @DnDInput : 2
	/// @DnDParent : 0DBDF74B
	/// @DnDArgument : "expr" "gm.LEVEL"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "o_game.state"
	/// @DnDArgument : "var_1" "o_game.in_wave"
	o_game.state = gm.LEVEL;
	o_game.in_wave = false;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 748AB610
	/// @DnDParent : 0DBDF74B
	/// @DnDArgument : "room" "results_room"
	/// @DnDSaveInfo : "room" "results_room"
	room_goto(results_room);}