/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 52216736
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "level_data_get_key"
function level_data_get_key() 
{
	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 705AF0D2
	/// @DnDParent : 52216736
	/// @DnDArgument : "value" "room_get_name(room)+object_get_name(object_index)+string(x)+string(y)"
	return room_get_name(room)+object_get_name(object_index)+string(x)+string(y);
}