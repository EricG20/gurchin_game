/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73511552
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_explosion"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_explosion"
instance_create_layer(x + 0, y + 0, "Effects", e_explosion);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 301DD99B
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 42E51314
/// @DnDInput : 4
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "on_ground"
/// @DnDArgument : "arg_3" ".5"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion, x, y, on_ground, .5);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 13EDE4E7
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "100"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, 100);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3E7F04B7
/// @DnDArgument : "times" "irandom_range(5,9)"
repeat(irandom_range(5,9)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C70AEFF
	/// @DnDParent : 3E7F04B7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	instance_create_layer(x + 0, y + 0, "Instances", e_enemy_walkah_shit);}