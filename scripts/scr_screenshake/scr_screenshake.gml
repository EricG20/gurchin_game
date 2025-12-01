/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 1816CEA7
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_screenshake"
/// @DnDArgument : "arg" "h=random_range(0,5)"
/// @DnDArgument : "arg_1" "v=random_range(0,5)"
function scr_screenshake(h=random_range(0,5), v=random_range(0,5)) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4642D5AA
	/// @DnDParent : 1816CEA7
	/// @DnDArgument : "var" "o_game.can_shake"
	/// @DnDArgument : "value" "true"
	if(o_game.can_shake == true){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 17193069
		/// @DnDApplyTo : o_camera
		/// @DnDParent : 4642D5AA
		with(o_camera) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0FD8DE93
			/// @DnDInput : 2
			/// @DnDParent : 17193069
			/// @DnDArgument : "expr" "h"
			/// @DnDArgument : "expr_1" "v"
			/// @DnDArgument : "var" "shakeh"
			/// @DnDArgument : "var_1" "shakev"
			shakeh = h;
			shakev = v;
		}}}