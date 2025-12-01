/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 6EEFE384
/// @DnDArgument : "x1" "400"
/// @DnDArgument : "y1" "20"
/// @DnDArgument : "x2" "1500"
/// @DnDArgument : "y2" "50"
/// @DnDArgument : "value" "(hp/40)*100"
/// @DnDArgument : "backcol" "$6E000000"
/// @DnDArgument : "barcol" "$FF000000"
/// @DnDArgument : "mincol" "$FF3232FF"
/// @DnDArgument : "maxcol" "$FF56FF02"
draw_healthbar(400, 20, 1500, 50, (hp/40)*100, $6E000000 & $FFFFFF, $FF3232FF & $FFFFFF, $FF56FF02 & $FFFFFF, 0, (($6E000000>>24) != 0), (($FF000000>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 19D24890
/// @DnDArgument : "x" "390"
/// @DnDArgument : "y" "63"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
draw_sprite_ext(sprite_index, image_index, 390, 63, 1, 1, 0, $FFFFFF & $ffffff, 1);