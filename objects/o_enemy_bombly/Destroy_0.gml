/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 717C71DD
/// @DnDArgument : "soundid" "sfx_bombly_scream"
/// @DnDSaveInfo : "soundid" "sfx_bombly_scream"
audio_stop_sound(sfx_bombly_scream);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73511552
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_vermin_explosion"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "o_vermin_explosion"
instance_create_layer(x + 0, y + 0, "Effects", o_vermin_explosion);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 301DD99B
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDArgument : "pitch" "random_range(.9,1.2)"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, random_range(.9,1.2));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 33865FFA
/// @DnDDisabled : 1
/// @DnDArgument : "script" "play_kill_sound"
/// @DnDSaveInfo : "script" "play_kill_sound"


/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 05F826BD
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "rewards_points ? 75 : 0"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, rewards_points ? 75 : 0);

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