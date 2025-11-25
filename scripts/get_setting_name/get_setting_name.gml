/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 773D295D
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "get_setting_name"
function get_setting_name() {	/// @DnDAction : YoYo Games.Common.Return
	/// @DnDVersion : 1
	/// @DnDHash : 1E943F79
	/// @DnDParent : 773D295D
	/// @DnDArgument : "value" "(data_mode)+object_get_name(object_index)"
	return (data_mode)+object_get_name(object_index);}