/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02FC6B68
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.GATE"
if(o_game.state == gm.GATE)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1220C425
	/// @DnDParent : 02FC6B68
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "global.the_gate.flagz"
	global.the_gate.flagz += -1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 193FF300
/// @DnDArgument : "expr" "1000"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "o_game.scor"
o_game.scor += 1000;