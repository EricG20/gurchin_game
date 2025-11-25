/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2297323E
/// @DnDArgument : "soundid" "sfx_confirm"
/// @DnDSaveInfo : "soundid" "sfx_confirm"
audio_play_sound(sfx_confirm, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4741758F
/// @DnDArgument : "expr" "1.4"
/// @DnDArgument : "var" "flashAlpha"
flashAlpha = 1.4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7F158A79
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "increment"
increment = true;

/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
/// @DnDVersion : 1.1
/// @DnDHash : 5A338DD3
/// @DnDArgument : "sound" "menu"
/// @DnDArgument : "volume" "0"
/// @DnDArgument : "time" "3000"
/// @DnDSaveInfo : "sound" "menu"
audio_sound_gain(menu, 0, 3000);