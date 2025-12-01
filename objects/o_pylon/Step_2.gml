/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22BEC0DA
/// @DnDArgument : "var" "last_hp"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "hp"
if(last_hp > hp){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 37AE8D48
	/// @DnDParent : 22BEC0DA
	/// @DnDArgument : "soundid" "sfx_pylon_hurt"
	/// @DnDArgument : "pitch" "random_range(1.1,1.4) - (last_hp-hp)*.2"
	/// @DnDSaveInfo : "soundid" "sfx_pylon_hurt"
	audio_play_sound(sfx_pylon_hurt, 0, 0, 1.0, undefined, random_range(1.1,1.4) - (last_hp-hp)*.2);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1DF0AD02
	/// @DnDParent : 22BEC0DA
	/// @DnDArgument : "expr" "last_hp-hp"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "o_game.pylon_lost_health"
	o_game.pylon_lost_health += last_hp-hp;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 71125EA2
/// @DnDArgument : "expr" "hp"
/// @DnDArgument : "var" "last_hp"
last_hp = hp;