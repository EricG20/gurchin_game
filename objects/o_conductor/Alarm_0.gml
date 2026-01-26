/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 27AEEE21
/// @DnDArgument : "steps" "15"
alarm_set(0, 15);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 10D6F68B
/// @DnDArgument : "x" "random_range(-15,15)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "random_range(-15,15)"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "3"
/// @DnDArgument : "color" "$FF0000FF"
effect_create_below(3, x + random_range(-15,15), y + random_range(-15,15), 0, $FF0000FF & $ffffff);