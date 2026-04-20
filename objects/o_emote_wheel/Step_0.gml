/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 2062E475
/// @DnDArgument : "var" "dx"
/// @DnDArgument : "value" "o_game.local_player.reticle.x"
var dx = o_game.local_player.reticle.x;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 0A8A8DAD
/// @DnDArgument : "var" "dy"
/// @DnDArgument : "value" "o_game.local_player.reticle.y"
var dy = o_game.local_player.reticle.y;

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 329CD31B
/// @DnDArgument : "var" "angle"
/// @DnDArgument : "value" "point_direction(x,y, dx, dy)"
var angle = point_direction(x,y, dx, dy);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 7442CF07
/// @DnDArgument : "var" "slice_angle"
/// @DnDArgument : "value" "360/n"
var slice_angle = 360/n;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7683C441
/// @DnDArgument : "var" "hover_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "floor(angle/slice_angle)"
if(!(hover_index == floor(angle/slice_angle))){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2870B705
	/// @DnDParent : 7683C441
	/// @DnDArgument : "soundid" "uimove"
	/// @DnDArgument : "pitch" "1.1"
	/// @DnDSaveInfo : "soundid" "uimove"
	audio_play_sound(uimove, 0, 0, 1.0, undefined, 1.1);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79EFB2D6
/// @DnDArgument : "expr" "floor(angle/slice_angle)"
/// @DnDArgument : "var" "hover_index"
hover_index = floor(angle/slice_angle);