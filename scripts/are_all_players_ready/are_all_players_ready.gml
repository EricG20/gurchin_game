/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1293F6A0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "are_all_players_ready"
function are_all_players_ready() {	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 15E2E616
	/// @DnDApplyTo : o_player
	/// @DnDParent : 1293F6A0
	with(o_player) {
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2BE766F2
		/// @DnDParent : 15E2E616
		/// @DnDArgument : "expr" "ready"
		/// @DnDArgument : "not" "1"
		if(!(ready)){	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 636F3291
			/// @DnDParent : 2BE766F2
			/// @DnDArgument : "value" "false"
			return false;}
	}

	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 3029C550
	/// @DnDParent : 1293F6A0
	/// @DnDArgument : "value" "true"
	return true;}