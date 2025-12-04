/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 674063F1
/// @DnDInput : 5
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "random_range(-7,-10)"
/// @DnDArgument : "expr_2" "random_range(4,-4)"
/// @DnDArgument : "expr_4" "irandom_range(0,4)"
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "var_1" "vsp"
/// @DnDArgument : "var_2" "hsp"
/// @DnDArgument : "var_3" "image_index"
/// @DnDArgument : "var_4" "bruh"
alpher = 2;
vsp = random_range(-7,-10);
hsp = random_range(4,-4);
image_index = 0;
bruh = irandom_range(0,4);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 138E0499
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDArgument : "value" "random_range(1,3)"
/// @DnDArgument : "value_1" "random_range(1,3)"
/// @DnDArgument : "instvar" "15"
/// @DnDArgument : "instvar_1" "16"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C656A4F
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp*2"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp*2;