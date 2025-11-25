/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3DEF517C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "flash_reduce"
function flash_reduce() 
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5808F0D6
	/// @DnDParent : 3DEF517C
	/// @DnDArgument : "var" "flashAlpha"
	/// @DnDArgument : "op" "2"
	if(flashAlpha > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7ABAB802
		/// @DnDParent : 5808F0D6
		/// @DnDArgument : "expr" "-.07"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "flashAlpha"
		flashAlpha += -.07;
	}
}