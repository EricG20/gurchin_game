/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F891FC1
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_white_flash"
/// @DnDArgument : "arg" "flash_val=.5"
function scr_white_flash(flash_val=.5) {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 16939A35
	/// @DnDParent : 6F891FC1
	/// @DnDArgument : "expr" "o_game.can_flash"
	if(o_game.can_flash){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 08A3D5FF
		/// @DnDParent : 16939A35
		/// @DnDArgument : "expr" "flash_val"
		/// @DnDArgument : "var" "o_game.white_flash_value"
		o_game.white_flash_value = flash_val;}}