/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 66C1A55C
/// @DnDInput : 2
/// @DnDArgument : "expr" ""What up, my zorba?""
/// @DnDArgument : "expr_1" "wah_1"
/// @DnDArgument : "var" "blessage"
/// @DnDArgument : "var_1" "wah_sound"
blessage = "What up, my zorba?";
wah_sound = wah_1;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 45E60109
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "e_flash"
/// @DnDArgument : "layer" ""Effects""
/// @DnDSaveInfo : "objectid" "e_flash"
instance_create_layer(x + 0, y + 0, "Effects", e_flash);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 62A0CF19
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();