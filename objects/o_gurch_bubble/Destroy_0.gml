/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 1FD004BB
/// @DnDArgument : "soundid" "sfx_bubblepop"
/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
/// @DnDSaveInfo : "soundid" "sfx_bubblepop"
audio_play_sound(sfx_bubblepop, 0, 0, 1.0, undefined, random_range(0.9,1.1));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 74FCED89
/// @DnDArgument : "script" "play_kill_sound"
/// @DnDArgument : "arg" ".5"
/// @DnDSaveInfo : "script" "play_kill_sound"
script_execute(play_kill_sound, .5);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0A327FFF
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_red_vermin_explosion"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "o_red_vermin_explosion"
instance_create_layer(x + 0, y + 0, "Effects", o_red_vermin_explosion);

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 47AEF6F2
event_inherited();