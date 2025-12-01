/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1AFD59A0
/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
/// @DnDArgument : "value" "-1"
if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 547A74F7
	/// @DnDInput : 2
	/// @DnDParent : 1AFD59A0
	/// @DnDArgument : "function" "ds_list_add"
	/// @DnDArgument : "arg" "collided_with"
	/// @DnDArgument : "arg_1" "other.id"
	ds_list_add(collided_with, other.id);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4F1E7AA1
	/// @DnDDisabled : 1
	/// @DnDParent : 1AFD59A0
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.hp"


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6F3DAB10
	/// @DnDInput : 3
	/// @DnDParent : 1AFD59A0
	/// @DnDArgument : "expr" "facing*12"
	/// @DnDArgument : "expr_1" "-10"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "var" "other.hsp"
	/// @DnDArgument : "var_1" "other.vsp"
	/// @DnDArgument : "var_2" "other.on_ground"
	other.hsp = facing*12;
	other.vsp += -10;
	other.on_ground = false;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 72F02873
	/// @DnDParent : 1AFD59A0
	/// @DnDArgument : "soundid" "sfx_melee_land"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "soundid" "sfx_melee_land"
	audio_play_sound(sfx_melee_land, 0, 0, 1.0, undefined, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23EEA884
	/// @DnDInput : 2
	/// @DnDParent : 1AFD59A0
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1.2"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "other.flashAlpha"
	other.hp += 0;
	other.flashAlpha = 1.2;}