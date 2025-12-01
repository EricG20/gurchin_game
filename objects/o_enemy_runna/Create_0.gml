/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D66D393
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "c_red"
/// @DnDArgument : "expr_2" "random_range(4,9)"
/// @DnDArgument : "var" "flashAlpha"
/// @DnDArgument : "var_1" "flashColor"
/// @DnDArgument : "var_2" "running_variance"
flashAlpha = 0;
flashColor = c_red;
running_variance = random_range(4,9);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 520E51E2
/// @DnDArgument : "value" "c_orange"
/// @DnDArgument : "instvar" "14"
image_blend = c_orange;