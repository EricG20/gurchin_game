/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB49EAC
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C04E2B4
	/// @DnDParent : 3BB49EAC
	/// @DnDArgument : "script" "scr_damage_player"
	/// @DnDArgument : "arg" "1"
	/// @DnDSaveInfo : "script" "scr_damage_player"
	script_execute(scr_damage_player, 1);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 203D05BA
	/// @DnDParent : 3BB49EAC
	instance_destroy();}