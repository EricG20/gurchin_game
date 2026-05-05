/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 2D6D5532
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 72BD9F72
/// @DnDInput : 4
/// @DnDArgument : "expr" "90"
/// @DnDArgument : "expr_1" "random_range(-15,15)"
/// @DnDArgument : "expr_2" "false"
/// @DnDArgument : "expr_3" "-4"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "var" "fuse"
/// @DnDArgument : "var_1" "spin"
/// @DnDArgument : "var_2" "on_ground"
/// @DnDArgument : "var_3" "vsp"
fuse = 90;
spin = random_range(-15,15);
on_ground = false;
vsp += -4;