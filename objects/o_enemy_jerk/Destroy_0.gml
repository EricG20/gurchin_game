/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2FF267CB
/// @DnDInput : 2
/// @DnDArgument : "script" "process_pylon_kill"
/// @DnDArgument : "arg" "500"
/// @DnDArgument : "arg_1" "irandom_range(9,15)"
/// @DnDSaveInfo : "script" "process_pylon_kill"
script_execute(process_pylon_kill, 500, irandom_range(9,15));

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0462B161
/// @DnDArgument : "script" "play_kill_sound"
/// @DnDSaveInfo : "script" "play_kill_sound"
script_execute(play_kill_sound);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 22BDCF91
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21A4D3DF
	/// @DnDParent : 22BDCF91
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.the_gate.flagz"
	global.the_gate.flagz += -1;}