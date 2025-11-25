/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0A84C78F
/// @DnDInput : 4
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "true"
/// @DnDArgument : "arg_3" "15"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion, x, y, true, 15);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AA6D098
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4799992C
	/// @DnDParent : 0AA6D098
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.the_gate.flagz"
	global.the_gate.flagz += -1;}