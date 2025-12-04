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


/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 31A90076
/// @DnDArgument : "soundid" "bleh_rblx_se"
/// @DnDArgument : "gain" "1.5"
/// @DnDArgument : "pitch" "random_range(1,1.4)"
/// @DnDSaveInfo : "soundid" "bleh_rblx_se"
audio_play_sound(bleh_rblx_se, 0, 0, 1.5, undefined, random_range(1,1.4));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 05F826BD
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "50"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, 50);

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