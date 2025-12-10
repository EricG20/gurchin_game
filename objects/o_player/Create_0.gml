/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 68C25484
/// @DnDArgument : "script" "flash_make"
/// @DnDSaveInfo : "script" "flash_make"
script_execute(flash_make);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 265018CA
/// @DnDInput : 3
/// @DnDArgument : "var" "head_offset_x"
/// @DnDArgument : "var_1" "head_offset_y"
/// @DnDArgument : "var_2" "hair_offset_y"
head_offset_x = 0;
head_offset_y = 0;
hair_offset_y = 0;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 3F158CE0
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "mygurn"
/// @DnDArgument : "objectid" "o_gon"
/// @DnDArgument : "layer" ""Instances_Front""
/// @DnDSaveInfo : "objectid" "o_gon"
mygurn = instance_create_layer(x + 0, y + 0, "Instances_Front", o_gon);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 02E89345
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_camera"
/// @DnDSaveInfo : "objectid" "o_camera"
instance_create_layer(x + 0, y + 0, "Instances", o_camera);