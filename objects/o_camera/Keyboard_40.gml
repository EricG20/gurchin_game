/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 662FE3DE
/// @DnDArgument : "expr" "-.002"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "panning_strength"
panning_strength += -.002;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 708DBB58
/// @DnDArgument : "expr" "clamp(panning_strength,0,.5)"
/// @DnDArgument : "var" "panning_strength"
panning_strength = clamp(panning_strength,0,.5);