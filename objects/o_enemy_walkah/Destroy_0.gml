/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 73511552
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_explosion"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_explosion"
instance_create_layer(x + 0, y + 0, "Effects", e_explosion);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5F847EE0
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 301DD99B
/// @DnDArgument : "soundid" "sfx_smallboom"
/// @DnDSaveInfo : "soundid" "sfx_smallboom"
audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 76BCC6BD
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "o_game.scor"
o_game.scor += 50;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 3E7F04B7
/// @DnDArgument : "times" "irandom_range(5,9)"
repeat(irandom_range(5,9))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C70AEFF
	/// @DnDParent : 3E7F04B7
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	instance_create_layer(x + 0, y + 0, "Instances", e_enemy_walkah_shit);
}