/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 109F826E
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4E912998
	/// @DnDParent : 109F826E
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.the_gate.flagz"
	global.the_gate.flagz += -1;}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6D34B892
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_explosion"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_explosion"
instance_create_layer(x + 0, y + 0, "Effects", e_explosion);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 684AA6CF
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2A299C3B
/// @DnDInput : 2
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "100"
/// @DnDArgument : "arg_1" "irandom_range(2,4)"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, 100, irandom_range(2,4));

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 7BCBE515
/// @DnDArgument : "times" "5"
repeat(5){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E9C42F2
	/// @DnDParent : 7BCBE515
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	instance_create_layer(x + 0, y + 0, "Instances", e_enemy_walkah_shit);}