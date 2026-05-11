/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12D5B530
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4F0EED99
	/// @DnDParent : 12D5B530
	/// @DnDArgument : "expr" "state == es.KNOCKBACK"
	/// @DnDArgument : "not" "1"
	if(!(state == es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C67B3AD
		/// @DnDInput : 4
		/// @DnDDisabled : 1
		/// @DnDParent : 4F0EED99
		/// @DnDArgument : "expr" "-2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "-facing*10"
		/// @DnDArgument : "expr_2" "-10"
		/// @DnDArgument : "expr_3" "es.KNOCKBACK"
		/// @DnDArgument : "var" "other.hp"
		/// @DnDArgument : "var_1" "hsp"
		/// @DnDArgument : "var_2" "vsp"
		/// @DnDArgument : "var_3" "state"
	
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 19B338AF
		/// @DnDDisabled : 1
		/// @DnDParent : 4F0EED99
		/// @DnDArgument : "expr" "gurchenis_buff"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 75497246
		/// @DnDDisabled : 1
		/// @DnDParent : 19B338AF
		/// @DnDArgument : "expr" "-3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "other.hp"}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 06A7DF66
	/// @DnDParent : 12D5B530
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7687DC26
		/// @DnDParent : 06A7DF66
		/// @DnDArgument : "expr" "-facing*10"
		/// @DnDArgument : "var" "hsp"
		hsp = -facing*10;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CED9EE7
		/// @DnDParent : 06A7DF66
		/// @DnDArgument : "expr" "-10"
		/// @DnDArgument : "var" "vsp"
		vsp = -10;}}