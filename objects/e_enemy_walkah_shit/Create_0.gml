/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 674063F1
/// @DnDInput : 5
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "expr_1" "random_range(-7,-10)"
/// @DnDArgument : "expr_2" "random_range(7,-7)"
/// @DnDArgument : "expr_4" "irandom_range(0,4)"
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "var_1" "vsp"
/// @DnDArgument : "var_2" "hsp"
/// @DnDArgument : "var_3" "image_index"
/// @DnDArgument : "var_4" "bruh"
alpher = 2;
vsp = random_range(-7,-10);
hsp = random_range(7,-7);
image_index = 0;
bruh = irandom_range(0,4);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C656A4F
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;