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
/// @DnDHash : 1BE66B39
/// @DnDInput : 2
/// @DnDArgument : "var" "burst_count"
/// @DnDArgument : "var_1" "burst_timer"
burst_count = 0;
burst_timer = 0;