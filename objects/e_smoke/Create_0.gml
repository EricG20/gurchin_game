/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 0D608148
/// @DnDInput : 3
/// @DnDArgument : "var" "poop"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
/// @DnDArgument : "option_2" "2"
var poop = choose(0, 1, 2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 55E09653
/// @DnDInput : 6
/// @DnDArgument : "expr" "poop"
/// @DnDArgument : "expr_1" "animcurve_get_channel(smokecurve,0)"
/// @DnDArgument : "expr_3" "-7"
/// @DnDArgument : "expr_relative_3" "1"
/// @DnDArgument : "expr_4" "scale"
/// @DnDArgument : "expr_5" "scale"
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "var_1" "corve"
/// @DnDArgument : "var_2" "mov"
/// @DnDArgument : "var_3" "y"
/// @DnDArgument : "var_4" "image_xscale"
/// @DnDArgument : "var_5" "image_yscale"
image_index = poop;
corve = animcurve_get_channel(smokecurve,0);
mov = 0;
y += -7;
image_xscale = scale;
image_yscale = scale;

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 6C7608EC
/// @DnDInput : 4
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "option_1" "90"
/// @DnDArgument : "option_2" "180"
/// @DnDArgument : "option_3" "270"
image_angle = choose(0, 90, 180, 270);