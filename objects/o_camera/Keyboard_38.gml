/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6AD38FBA
/// @DnDArgument : "expr" ".002"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "panning_strength"
panning_strength += .002;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 718927D4
/// @DnDArgument : "expr" "clamp(panning_strength,0,.5)"
/// @DnDArgument : "var" "panning_strength"
panning_strength = clamp(panning_strength,0,.5);