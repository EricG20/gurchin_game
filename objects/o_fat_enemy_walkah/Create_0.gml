/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D66D393
/// @DnDInput : 3
/// @DnDArgument : "expr_1" "c_red"
/// @DnDArgument : "expr_2" "random_range(0,3)"
/// @DnDArgument : "var" "flashAlpha"
/// @DnDArgument : "var_1" "flashColor"
/// @DnDArgument : "var_2" "running_variance"
flashAlpha = 0;
flashColor = c_red;
running_variance = random_range(0,3);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 520E51E2
/// @DnDInput : 3
/// @DnDArgument : "value" "c_yellow"
/// @DnDArgument : "value_1" "1.5"
/// @DnDArgument : "value_2" "1.5"
/// @DnDArgument : "instvar" "14"
/// @DnDArgument : "instvar_1" "15"
/// @DnDArgument : "instvar_2" "16"
image_blend = c_yellow;
image_xscale = 1.5;
image_yscale = 1.5;