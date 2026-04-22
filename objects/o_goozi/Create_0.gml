/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 45E60109
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_flash"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_flash"
instance_create_layer(x + 0, y + 0, "Effects", e_flash);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DA97D24
/// @DnDArgument : "expr" "(36*weilder.curr_weapon_level)*global.ammo_bonus*weilder.ammo_bonus"
/// @DnDArgument : "var" "ammo"
ammo = (36*weilder.curr_weapon_level)*global.ammo_bonus*weilder.ammo_bonus;