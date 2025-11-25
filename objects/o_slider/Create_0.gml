/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 41D5AF19
/// @DnDArgument : "expr" "get_setting_name()"
/// @DnDArgument : "var" "key"
key = get_setting_name();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3FB80DCA
/// @DnDArgument : "expr" "ds_map_find_value(o_game.setting_data, key)"
/// @DnDArgument : "var" "r_value"
r_value = ds_map_find_value(o_game.setting_data, key);

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
	/// @DnDArgument : "expr_1" "initial_y+(slider_value*5)"
	/// @DnDArgument : "var" "slider_value"
	/// @DnDArgument : "var_1" "y"
	slider_value = r_value;
	y = initial_y+(slider_value*5);}