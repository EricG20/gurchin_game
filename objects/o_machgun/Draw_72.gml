/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60453E8C
/// @DnDDisabled : 1
/// @DnDArgument : "var" "weilder.curr_weapon_level"
/// @DnDArgument : "op" "4"
/// @DnDArgument : "value" "3"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42B56C34
/// @DnDDisabled : 1
/// @DnDParent : 60453E8C
/// @DnDArgument : "expr" "s_machgun_w_hand"
/// @DnDArgument : "var" "armed_sprite"


/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 2FEA249D
/// @DnDDisabled : 1
/// @DnDApplyTo : weilder
/// @DnDParent : 60453E8C
/// @DnDArgument : "x" "x+(other.kickbackx+other.shakex)"
/// @DnDArgument : "y" "y+(other.shakey+other.kickbacky)-49+(head_offset_y)/2"
/// @DnDArgument : "yscale" "facing"
/// @DnDArgument : "rot" "other.androtate*facing"
/// @DnDArgument : "rot_relative" "1"
/// @DnDArgument : "sprite" "other.armed_sprite"
/// @DnDArgument : "col" "$FF666666"