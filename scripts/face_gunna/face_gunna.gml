/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 0E2B54D6
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "face_gunna"
function face_gunna() 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 67F8B90E
	/// @DnDParent : 0E2B54D6
	/// @DnDArgument : "expr" "-(sign(x-o_player.x))"
	/// @DnDArgument : "var" "facing"
	facing = -(sign(x-o_player.x));
}