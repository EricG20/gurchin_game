/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 6FFCA44D
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "tozer"
/// @DnDArgument : "objectid" "o_geyser"
/// @DnDSaveInfo : "objectid" "o_geyser"
tozer = instance_create_layer(x + 0, y + 0, "Instances", o_geyser);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 089AA39E
/// @DnDArgument : "expr" "facing*7"
/// @DnDArgument : "var" "tozer.dir_speed"
tozer.dir_speed = facing*7;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5D7DE087
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 76B981CB
/// @DnDArgument : "soundid" "jit"
audio_stop_sound(jit);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 0EA88692
/// @DnDArgument : "soundid" "sfx_explosion"
/// @DnDSaveInfo : "soundid" "sfx_explosion"
audio_play_sound(sfx_explosion, 0, 0, 1.0, undefined, 1.0);