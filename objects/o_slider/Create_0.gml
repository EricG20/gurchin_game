/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 78FDED36
/// @DnDArgument : "expr" "instance_number(object_index)"
var l78FDED36_0 = instance_number(object_index);switch(l78FDED36_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0866EF5D
	/// @DnDParent : 78FDED36
	/// @DnDArgument : "const" "4"
	case 4:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A33C23D
		/// @DnDParent : 0866EF5D
		/// @DnDArgument : "expr" ""master""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "master";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2B3B4D2B
	/// @DnDParent : 78FDED36
	/// @DnDArgument : "const" "3"
	case 3:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 733FA2FC
		/// @DnDParent : 2B3B4D2B
		/// @DnDArgument : "expr" ""music""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "music";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0A207AF8
	/// @DnDParent : 78FDED36
	/// @DnDArgument : "const" "2"
	case 2:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4900C666
		/// @DnDParent : 0A207AF8
		/// @DnDArgument : "expr" ""sound_effects""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "sound_effects";	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7124C398
	/// @DnDParent : 78FDED36
	/// @DnDArgument : "const" "1"
	case 1:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6DAFC1BB
		/// @DnDParent : 7124C398
		/// @DnDArgument : "expr" ""aim_pan""
		/// @DnDArgument : "var" "data_mode"
		data_mode = "aim_pan";	break;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3A52DD79
/// @DnDArgument : "var" "data_mode"
/// @DnDArgument : "value" ""aim_pan""
if(data_mode == "aim_pan"){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CABEC66
	/// @DnDParent : 3A52DD79
	/// @DnDArgument : "expr" "20"
	/// @DnDArgument : "var" "slider_value"
	slider_value = 20;}

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
	/// @DnDParent : 713FC1F9
	/// @DnDArgument : "expr" "r_value"
	/// @DnDArgument : "var" "slider_value"
	slider_value = r_value;}