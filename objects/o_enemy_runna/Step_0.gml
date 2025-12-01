/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 19E8EF50
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 493C8123
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6E865C25
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A5A8999
/// @DnDArgument : "expr" "on_ground"
if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36BC9442
	/// @DnDInput : 2
	/// @DnDParent : 2A5A8999
	/// @DnDArgument : "expr" "facing*(3+running_variance)*(.1 * global.game_speed)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "clamp(hsp, -(3+running_variance), 3+running_variance)"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "hsp"
	hsp += facing*(3+running_variance)*(.1 * global.game_speed);
	hsp = clamp(hsp, -(3+running_variance), 3+running_variance);}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 325A8AF8
/// @DnDDisabled : 1
/// @DnDArgument : "x" "facing"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solid"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "o_solid"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F0C6F4F
/// @DnDDisabled : 1
/// @DnDParent : 325A8AF8
/// @DnDArgument : "expr" "-facing"
/// @DnDArgument : "var" "facing"

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5BAE664B
/// @DnDArgument : "x" "facing*5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solid"
/// @DnDSaveInfo : "object" "o_solid"
var l5BAE664B_0 = instance_place(x + facing*5, y + -10, [o_solid]);if ((l5BAE664B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E75421E
	/// @DnDParent : 5BAE664B
	/// @DnDArgument : "expr" "-facing"
	/// @DnDArgument : "var" "facing"
	facing = -facing;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44B79C17
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 423831B4
	/// @DnDParent : 44B79C17
	instance_destroy();}