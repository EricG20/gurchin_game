/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BD67DCD
/// @DnDArgument : "var" "other.object_index"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "o_gurch_bubble"
if(!(other.object_index == o_gurch_bubble)){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6816D6FD
	/// @DnDApplyTo : other
	/// @DnDParent : 4BD67DCD
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 3AB12D18
	/// @DnDInput : 2
	/// @DnDParent : 4BD67DCD
	/// @DnDArgument : "value" ".3"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" ".3"
	/// @DnDArgument : "value_relative_1" "1"
	/// @DnDArgument : "instvar" "15"
	/// @DnDArgument : "instvar_1" "16"
	image_xscale += .3;
	image_yscale += .3;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 51F54152
	/// @DnDParent : 4BD67DCD
	/// @DnDArgument : "soundid" "sfx_hit"
	/// @DnDArgument : "gain" ".8"
	/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
	/// @DnDSaveInfo : "soundid" "sfx_hit"
	audio_play_sound(sfx_hit, 0, 0, .8, undefined, random_range(0.9,1.1));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 37F6EB69
	/// @DnDParent : 4BD67DCD
	/// @DnDArgument : "expr" "-other.damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "tolerance"
	tolerance += -other.damage;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7CA2238D
	/// @DnDParent : 4BD67DCD
	/// @DnDArgument : "var" "tolerance"
	/// @DnDArgument : "op" "3"
	if(tolerance <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 644D978C
		/// @DnDParent : 7CA2238D
		instance_destroy();}}