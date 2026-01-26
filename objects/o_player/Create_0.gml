/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 42667F57
/// @DnDArgument : "script" "controlz"
/// @DnDSaveInfo : "script" "controlz"
script_execute(controlz);

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5A7CC706
/// @DnDInput : 3
/// @DnDArgument : "expr" "animcurve_get_channel(walk_bob_curve,0)"
/// @DnDArgument : "expr_1" "animcurve_get_channel(walk_squash_curve,0)"
/// @DnDArgument : "var" "walk_curve"
/// @DnDArgument : "var_1" "ear_bob_curve"
/// @DnDArgument : "var_2" "ear_bobbing"
walk_curve = animcurve_get_channel(walk_bob_curve,0);
ear_bob_curve = animcurve_get_channel(walk_squash_curve,0);
ear_bobbing = 0;

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

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 61658F32
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "mygurn.weilder"
mygurn.weilder = id;

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 02E89345
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "o_camera"
/// @DnDSaveInfo : "objectid" "o_camera"
instance_create_layer(x + 0, y + 0, "Instances", o_camera);

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 13A26F19
/// @DnDArgument : "var" "weapon_levels"
weapon_levels = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 04CA44E1
/// @DnDArgument : "var" "weapon_levels"
/// @DnDArgument : "key" "o_gon"
/// @DnDArgument : "value" "1"
ds_map_replace(weapon_levels, o_gon, 1);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 1F59D768
/// @DnDArgument : "var" "player_num"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "o_player"
var player_num = instance_number(o_player);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EE66E43
/// @DnDArgument : "var" "player_num"
/// @DnDArgument : "value" "1"
if(player_num == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47C4C9FD
	/// @DnDComment : afro-bun hairstyle
	/// @DnDInput : 3
	/// @DnDDisabled : 1
	/// @DnDParent : 7EE66E43
	/// @DnDArgument : "expr" "s_player_afro_bun"
	/// @DnDArgument : "expr_1" "s_player_afro_bun_bangs"
	/// @DnDArgument : "expr_2" "c_purple"
	/// @DnDArgument : "var" "hair_sprite"
	/// @DnDArgument : "var_1" "bangs_sprite"
	/// @DnDArgument : "var_2" "suit_color"}