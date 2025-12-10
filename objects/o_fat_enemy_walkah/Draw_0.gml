/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 45CFD8DD
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "$FFFFFFFF"


/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 404286F7
/// @DnDArgument : "speed" "abs(hsp)/3"
image_speed = abs(hsp)/3;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52F254D4
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);