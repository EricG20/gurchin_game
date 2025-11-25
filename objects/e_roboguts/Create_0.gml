/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 1E4D5130
/// @DnDInput : 4
/// @DnDArgument : "var" "image_index"
/// @DnDArgument : "option_1" "1"
/// @DnDArgument : "option_2" "2"
/// @DnDArgument : "option_3" "3"
image_index = choose(0, 1, 2, 3);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 78569EDA
/// @DnDArgument : "var" "spin"
/// @DnDArgument : "min" "-10"
/// @DnDArgument : "max" "10"
spin = (random_range(-10, 10));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 2488505C
/// @DnDArgument : "var" "hspeed"
/// @DnDArgument : "min" "-5"
/// @DnDArgument : "max" "5"
hspeed = (random_range(-5, 5));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 047CDC08
/// @DnDArgument : "var" "vspeed"
/// @DnDArgument : "min" "-8"
/// @DnDArgument : "max" "-6"
vspeed = (random_range(-8, -6));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 079574B4
/// @DnDArgument : "var" "doop"
doop = 0;