/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12A7FD4B
/// @DnDDisabled : 1
/// @DnDArgument : "var" "o_player.curr_weapon_level"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5D2D1C8E
/// @DnDDisabled : 1
/// @DnDParent : 12A7FD4B
/// @DnDArgument : "expr" "s_machgun_w_hand"
/// @DnDArgument : "var" "armed_sprite"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 463B2380
/// @DnDDisabled : 1
/// @DnDParent : 12A7FD4B
/// @DnDArgument : "x" "o_player.x+(kickbackx+shakex)"
/// @DnDArgument : "y" "o_player.y+(shakey+kickbacky)-49+(o_player.head_offset_y)/2"
/// @DnDArgument : "yscale" "o_player.facing"
/// @DnDArgument : "rot" "androtate*o_player.facing"
/// @DnDArgument : "rot_relative" "1"
/// @DnDArgument : "sprite" "armed_sprite"
/// @DnDArgument : "col" "$FF666666"