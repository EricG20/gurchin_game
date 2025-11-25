/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41D5AF19
/// @DnDInput : 2
/// @DnDArgument : "expr" "get_setting_name()"
/// @DnDArgument : "expr_1" "get_setting_name()+"_Y""
/// @DnDArgument : "var" "key"
/// @DnDArgument : "var_1" "y_key"
key = get_setting_name();
y_key = get_setting_name()+"_Y";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FB80DCA
/// @DnDInput : 2
/// @DnDArgument : "expr" "ds_map_find_value(o_game.setting_data, key)"
/// @DnDArgument : "expr_1" "ds_map_find_value(o_game.setting_data, y_key)"
/// @DnDArgument : "var" "r_value"
/// @DnDArgument : "var_1" "y_value"
r_value = ds_map_find_value(o_game.setting_data, key);
y_value = ds_map_find_value(o_game.setting_data, y_key);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 713FC1F9
/// @DnDArgument : "var" "r_value"
/// @DnDArgument : "not" "1"
if(r_value != undefined){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0493D42E
	/// @DnDInput : 2
	/// @DnDParent : 713FC1F9
	/// @DnDArgument : "expr" "r_value"
	/// @DnDArgument : "expr_1" "y_value"
	/// @DnDArgument : "var" "slider_value"
	/// @DnDArgument : "var_1" "y"
	slider_value = r_value;
	y = y_value;}