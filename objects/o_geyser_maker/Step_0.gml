/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 155F69F4
/// @DnDInput : 2
/// @DnDArgument : "expr" "facing*22"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "length"
x += facing*22;
length += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1910F869
/// @DnDArgument : "var" "length mod 5"
if(length mod 5 == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1EC74447
	/// @DnDParent : 1910F869
	/// @DnDArgument : "soundid" "sfx_smallboom"
	/// @DnDArgument : "gain" ".6"
	audio_play_sound(sfx_smallboom, 0, 0, .6, undefined, 1.0);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10228036
	/// @DnDParent : 1910F869
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "gozer"
	/// @DnDArgument : "objectid" "o_geyser"
	gozer = instance_create_layer(x + 0, y + 0, "Instances", o_geyser);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16EC0650
	/// @DnDParent : 1910F869
	/// @DnDArgument : "expr" "facing*7"
	/// @DnDArgument : "var" "gozer.dir_speed"
	gozer.dir_speed = facing*7;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35F9C5A7
/// @DnDArgument : "var" "length"
if(length == 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27B3D741
	/// @DnDParent : 35F9C5A7
	instance_destroy();
}