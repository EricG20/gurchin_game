/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 48C5C2F7
/// @DnDArgument : "expr" "in_sequence"
if(in_sequence){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1543513D
	/// @DnDInput : 2
	/// @DnDParent : 48C5C2F7
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" ""BACK""
	/// @DnDArgument : "var" "part_of_main_menu"
	/// @DnDArgument : "var_1" "words"
	part_of_main_menu = false;
	words = "BACK";}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 13B94203
else{	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1ACFAE28
	/// @DnDParent : 13B94203
	/// @DnDArgument : "value" "x"
	/// @DnDArgument : "var" "targ_x"
	global.targ_x = x;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2CD04DB0
/// @DnDArgument : "script" "flash_make"
/// @DnDArgument : "arg" "c_white"
/// @DnDSaveInfo : "script" "flash_make"
script_execute(flash_make, c_white);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 0EB9F60D
/// @DnDArgument : "font" "fontTbyDefault"
/// @DnDSaveInfo : "font" "fontTbyDefault"
draw_set_font(fontTbyDefault);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 37A6CD1D
/// @DnDInput : 3
/// @DnDArgument : "expr" "s_grid"
/// @DnDArgument : "expr_1" "level_data_get_key()"
/// @DnDArgument : "expr_2" "key+"score""
/// @DnDArgument : "var" "grade_sprite"
/// @DnDArgument : "var_1" "key"
/// @DnDArgument : "var_2" "scorekey"
grade_sprite = s_grid;
key = level_data_get_key();
scorekey = key+"score";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6CD4CFC0
/// @DnDInput : 2
/// @DnDArgument : "expr" "ds_map_find_value(o_game.level_data,key)"
/// @DnDArgument : "expr_1" "ds_map_find_value(o_game.level_data,scorekey)"
/// @DnDArgument : "var" "varabl"
/// @DnDArgument : "var_1" "scorr"
varabl = ds_map_find_value(o_game.level_data,key);
scorr = ds_map_find_value(o_game.level_data,scorekey);

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 406BF30B
/// @DnDArgument : "var" "varabl"
/// @DnDArgument : "not" "1"
if(varabl != undefined){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CA48A55
	/// @DnDParent : 406BF30B
	/// @DnDArgument : "expr" "varabl"
	/// @DnDArgument : "var" "grade"
	grade = varabl;}

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 2D7B7C6A
/// @DnDArgument : "var" "scorr"
/// @DnDArgument : "not" "1"
if(scorr != undefined){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D0E0C06
	/// @DnDParent : 2D7B7C6A
	/// @DnDArgument : "expr" "scorr"
	/// @DnDArgument : "var" "scor"
	scor = scorr;}