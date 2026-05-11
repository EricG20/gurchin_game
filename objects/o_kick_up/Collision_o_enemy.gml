/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2BD586D5
/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
/// @DnDArgument : "value" "-1"
if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40E7F6A5
	/// @DnDInput : 2
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "expr" "facing*12"
	/// @DnDArgument : "expr_1" "-10"
	/// @DnDArgument : "var" "kb_hsp"
	/// @DnDArgument : "var_1" "kb_vsp"
	kb_hsp = facing*12;
	kb_vsp = -10;

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 6B9792E3
	/// @DnDInput : 2
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "function" "ds_list_add"
	/// @DnDArgument : "arg" "collided_with"
	/// @DnDArgument : "arg_1" "other.id"
	ds_list_add(collided_with, other.id);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6AB8DFB0
	/// @DnDDisabled : 1
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "other.hp"


	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 65EF2841
	/// @DnDInput : 3
	/// @DnDParent : 2BD586D5
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

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5619F87C
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "script" "scr_stun_logic"
	/// @DnDSaveInfo : "script" "scr_stun_logic"
	script_execute(scr_stun_logic);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 60E6A9C7
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "soundid" "sfx_melee_land"
	/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
	/// @DnDSaveInfo : "soundid" "sfx_melee_land"
	audio_play_sound(sfx_melee_land, 0, 0, 1.0, undefined, random_range(0.8,1.2));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B0A4B38
	/// @DnDInput : 2
	/// @DnDParent : 2BD586D5
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1.2"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "other.flashAlpha"
	other.hp += 0;
	other.flashAlpha = 1.2;}