/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 00AD3B9A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "incr_score"
/// @DnDArgument : "arg" "numbor"
function incr_score(numbor) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 414EE506
	/// @DnDApplyTo : o_game
	/// @DnDParent : 00AD3B9A
	/// @DnDArgument : "expr" "numbor"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "scor"
	with(o_game) {
	scor += numbor;
	
	}
}