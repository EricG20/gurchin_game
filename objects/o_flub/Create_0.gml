/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F5B6FC7
/// @DnDInput : 4
/// @DnDArgument : "expr" "random_range(1,5)"
/// @DnDArgument : "expr_1" "random_range(-2,2)"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "random_range(-7,-3)"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "-20"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "var_1" "hsp"
/// @DnDArgument : "var_2" "vsp"
/// @DnDArgument : "var_3" "y"
flubbington = random_range(1,5);
hsp += random_range(-2,2);
vsp += random_range(-7,-3);
y += -20;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3FECD8D9
/// @DnDInput : 2
/// @DnDArgument : "value" "clamp(flubbington/2,0,1.5)"
/// @DnDArgument : "value_1" "clamp(flubbington/2,0,1.5)"
/// @DnDArgument : "instvar" "16"
/// @DnDArgument : "instvar_1" "15"
image_yscale = clamp(flubbington/2,0,1.5);
image_xscale = clamp(flubbington/2,0,1.5);