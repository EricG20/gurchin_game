/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7042D694
/// @DnDInput : 4
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "on_ground"
/// @DnDArgument : "arg_3" ".2"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion, x, y, on_ground, .2);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 5C6FF9D9
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 20FB458B
/// @DnDInput : 2
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "75"
/// @DnDArgument : "arg_1" "irandom_range(2,7)"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, 75, irandom_range(2,7));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 41197058
/// @DnDArgument : "script" "play_kill_sound"
/// @DnDSaveInfo : "script" "play_kill_sound"
script_execute(play_kill_sound);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 2C7AC59C
/// @DnDArgument : "times" "irandom_range(5,9)"
repeat(irandom_range(5,9)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3764C8C0
	/// @DnDParent : 2C7AC59C
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	instance_create_layer(x + 0, y + 0, "Instances", e_enemy_walkah_shit);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 56A4DF84
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 322798E4
	/// @DnDParent : 56A4DF84
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.the_gate.flagz"
	global.the_gate.flagz += -1;}