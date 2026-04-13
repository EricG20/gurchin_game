/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0D04814F
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_find_nearest_slot"
function scr_find_nearest_slot() {	/// @DnDAction : YoYo Games.Loops.For_Loop
	/// @DnDVersion : 1
	/// @DnDHash : 59B3B688
	/// @DnDParent : 0D04814F
	/// @DnDArgument : "cond" "i < 5"
	for(i = 0; i < 5; i += 1) {	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 09EA1501
		/// @DnDParent : 59B3B688
		/// @DnDArgument : "var" "global.players[i]"
		/// @DnDArgument : "value" "-1"
		if(global.players[i] == -1){	/// @DnDAction : YoYo Games.Common.Return
			/// @DnDVersion : 1
			/// @DnDHash : 220D7F36
			/// @DnDParent : 09EA1501
			/// @DnDArgument : "value" "i"
			return i;}}}