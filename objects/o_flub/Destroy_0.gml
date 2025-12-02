/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0E6248A1
/// @DnDArgument : "script" "scr_afterimage"
/// @DnDSaveInfo : "script" "scr_afterimage"
script_execute(scr_afterimage);

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 79CB946D
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "color" "$FFFFFFFF"
effect_create_below(1, x + 0, y + 0, 0, $FFFFFFFF & $ffffff);