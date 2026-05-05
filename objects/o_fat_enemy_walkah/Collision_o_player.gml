/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5E4DDC2C
/// @DnDArgument : "var" "state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "es.KNOCKBACK"
if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0F0AC354
	/// @DnDParent : 5E4DDC2C
	/// @DnDArgument : "script" "scr_damage_player"
	/// @DnDArgument : "arg" "1"
	/// @DnDSaveInfo : "script" "scr_damage_player"
	script_execute(scr_damage_player, 1);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 48F8BB84
	/// @DnDParent : 5E4DDC2C
	/// @DnDArgument : "expr" "gurchenis_buff"
	if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 77C365C0
		/// @DnDParent : 48F8BB84
		/// @DnDArgument : "script" "scr_damage_player"
		/// @DnDArgument : "arg" "2"
		/// @DnDSaveInfo : "script" "scr_damage_player"
		script_execute(scr_damage_player, 2);}}