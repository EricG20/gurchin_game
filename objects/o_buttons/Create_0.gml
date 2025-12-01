/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 74BC092B
/// @DnDArgument : "expr" "instance_number(object_index)"
var l74BC092B_0 = instance_number(object_index);switch(l74BC092B_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 79A803C6
	/// @DnDParent : 74BC092B
	/// @DnDArgument : "const" "3"
	case 3:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 370759D8
		/// @DnDParent : 79A803C6
		/// @DnDArgument : "expr" ""30_fps""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "30_fps";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1F49C429
	/// @DnDParent : 74BC092B
	/// @DnDArgument : "const" "2"
	case 2:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 78A05796
		/// @DnDInput : 2
		/// @DnDParent : 1F49C429
		/// @DnDArgument : "expr" ""60_fps""
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "data_mode"
		/// @DnDArgument : "var_1" "is_clicked"
		data_mode = "60_fps";
		is_clicked = true;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 66F3A392
	/// @DnDParent : 74BC092B
	/// @DnDArgument : "const" "1"
	case 1:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 225767E4
		/// @DnDParent : 66F3A392
		/// @DnDArgument : "expr" ""120_fps""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "120_fps";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 28037839
	/// @DnDParent : 74BC092B
	/// @DnDArgument : "const" "4"
	case 4:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6ECD6119
		/// @DnDInput : 3
		/// @DnDParent : 28037839
		/// @DnDArgument : "expr" ""screen_shake""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_2" "true"
		/// @DnDArgument : "var" "data_mode"
		/// @DnDArgument : "var_1" "data_set"
		/// @DnDArgument : "var_2" "is_clicked"
		data_mode = "screen_shake";
		data_set = -1;
		is_clicked = true;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3EDE425A
	/// @DnDParent : 74BC092B
	/// @DnDArgument : "const" "5"
	case 5:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7408DD73
		/// @DnDInput : 3
		/// @DnDParent : 3EDE425A
		/// @DnDArgument : "expr" ""bright_flashes""
		/// @DnDArgument : "expr_1" "-1"
		/// @DnDArgument : "expr_2" "true"
		/// @DnDArgument : "var" "data_mode"
		/// @DnDArgument : "var_1" "data_set"
		/// @DnDArgument : "var_2" "is_clicked"
		data_mode = "bright_flashes";
		data_set = -1;
		is_clicked = true;	break;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1DCF447B
/// @DnDArgument : "expr" "get_setting_name()"
/// @DnDArgument : "var" "key"
key = get_setting_name();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 03D8018D
/// @DnDArgument : "expr" "ds_map_find_value(o_game.setting_data, key)"
/// @DnDArgument : "var" "r_value"
r_value = ds_map_find_value(o_game.setting_data, key);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 623D03E6
/// @DnDArgument : "var" "r_value"
/// @DnDArgument : "not" "1"
if(r_value != undefined){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 61B8AA81
	/// @DnDParent : 623D03E6
	/// @DnDArgument : "expr" "r_value"
	/// @DnDArgument : "var" "is_clicked"
	is_clicked = r_value;}