/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 5BC6838C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "flub_fellows"


/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F5B6FC7
/// @DnDInput : 5
/// @DnDArgument : "expr" "random_range(1,5)"
/// @DnDArgument : "expr_1" "random_range(-2,2)"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" "random_range(-7,-3)"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "-20"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "expr_4" "true"
/// @DnDArgument : "var" "flubbington"
/// @DnDArgument : "var_1" "hsp"
/// @DnDArgument : "var_2" "vsp"
/// @DnDArgument : "var_3" "y"
/// @DnDArgument : "var_4" "will_combine"
flubbington = random_range(1,5);
hsp += random_range(-2,2);
vsp += random_range(-7,-3);
y += -20;
will_combine = true;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 3FECD8D9
/// @DnDInput : 2
/// @DnDArgument : "value" "clamp(flubbington/2,0,1.5)/2"
/// @DnDArgument : "value_1" "clamp(flubbington/2,0,1.5)/2"
/// @DnDArgument : "instvar" "16"
/// @DnDArgument : "instvar_1" "15"
image_yscale = clamp(flubbington/2,0,1.5)/2;
image_xscale = clamp(flubbington/2,0,1.5)/2;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 21C1CF6E
/// @DnDInput : 4
/// @DnDArgument : "var" "will_combine"
/// @DnDArgument : "option" "true"
/// @DnDArgument : "option_1" "true"
/// @DnDArgument : "option_2" "true"
/// @DnDArgument : "option_3" "false"
will_combine = choose(true, true, true, false);