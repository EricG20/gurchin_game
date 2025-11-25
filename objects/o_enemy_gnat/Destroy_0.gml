/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 039BE2B0
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 419B50E6
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 754A5622
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "o_game.scor"
o_game.scor += 100;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 1FAD6414
/// @DnDArgument : "times" "irandom_range(5,9)"
repeat(irandom_range(5,9))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 572162E5
	/// @DnDParent : 1FAD6414
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	instance_create_layer(x + 0, y + 0, "Instances", e_enemy_walkah_shit);
}