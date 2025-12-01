/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66D39569
/// @DnDArgument : "var" "polyphamy_num"
polyphamy_num = 0;

/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
/// @DnDVersion : 1
/// @DnDHash : 377DD371
/// @DnDArgument : "soundid" "sfx_hit"
/// @DnDSaveInfo : "soundid" "sfx_hit"
var l377DD371_0 = sfx_hit;if (audio_is_playing(l377DD371_0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5EAE9C84
	/// @DnDParent : 377DD371
	/// @DnDArgument : "expr" ".6"
	/// @DnDArgument : "var" "polyphamy_num"
	polyphamy_num = .6;}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2976FED5
/// @DnDArgument : "soundid" "sfx_hit"
/// @DnDArgument : "gain" "1.0-polyphamy_num"
/// @DnDSaveInfo : "soundid" "sfx_hit"
audio_play_sound(sfx_hit, 0, 0, 1.0-polyphamy_num, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 422B73C4
/// @DnDInput : 2
/// @DnDArgument : "expr" "-damage"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "1.2"
/// @DnDArgument : "var" "other.hp"
/// @DnDArgument : "var_1" "other.flashAlpha"
other.hp += -damage;
other.flashAlpha = 1.2;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 61D29FF4
instance_destroy();