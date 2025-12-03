/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4B28A5A9
/// @DnDInput : 2
/// @DnDArgument : "expr" "flubbington"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "flubbington"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "o_game.flub"
/// @DnDArgument : "var_1" "o_game.new_flub"
o_game.flub += flubbington;
o_game.new_flub += flubbington;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 11A7FE71
/// @DnDArgument : "soundid" "sfx_flub"
/// @DnDArgument : "gain" ".5+flubbington*.5"
/// @DnDArgument : "pitch" "random_range(.8,1.2)"
/// @DnDSaveInfo : "soundid" "sfx_flub"
audio_play_sound(sfx_flub, 0, 0, .5+flubbington*.5, undefined, random_range(.8,1.2));

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76F307DB
instance_destroy();