/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A4632DF
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)inputs = {$(13_10)    left: false,$(13_10)    right: false,$(13_10)    jump: false,$(13_10)    boost_start: false,$(13_10)    boost: false,$(13_10)    up: false,$(13_10)    down: false,$(13_10)    reload: false,$(13_10)    melee: false,$(13_10)    jump_release: false,$(13_10)    shoot: false,$(13_10)    shooting: false,$(13_10)    shoot_release: false,$(13_10)    special: false,$(13_10)    swap: false,$(13_10)    accept: false,$(13_10)    cancel: false,$(13_10)    up_tap: false,$(13_10)    down_tap: false,$(13_10)	tick: false$(13_10)};$(13_10)$(13_10)#macro GOOD_JOB 1$(13_10)#macro YOU_SUCK 2$(13_10)#macro I_NEED_HELP 3$(13_10)#macro GLOAT 4$(13_10)#macro I_WANT_THAT 5$(13_10)#macro HI 6$(13_10)"
/// @description Execute Code
inputs = {
    left: false,
    right: false,
    jump: false,
    boost_start: false,
    boost: false,
    up: false,
    down: false,
    reload: false,
    melee: false,
    jump_release: false,
    shoot: false,
    shooting: false,
    shoot_release: false,
    special: false,
    swap: false,
    accept: false,
    cancel: false,
    up_tap: false,
    down_tap: false,
	tick: false
};

#macro GOOD_JOB 1
#macro YOU_SUCK 2
#macro I_NEED_HELP 3
#macro GLOAT 4
#macro I_WANT_THAT 5
#macro HI 6

/// @DnDAction : YoYo Games.Data Structures.Create_Stack
/// @DnDVersion : 1
/// @DnDHash : 710E7669
/// @DnDDisabled : 1
/// @DnDArgument : "var" "weapon_invo"


/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 314717AB
/// @DnDInput : 2
/// @DnDArgument : "var" "weapon_invo"
/// @DnDArgument : "var_1" "talking_mouths"
weapon_invo = ds_list_create();
talking_mouths = ds_list_create();

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 70E024D3
/// @DnDInput : 2
/// @DnDArgument : "var" "vocabulary"
/// @DnDArgument : "var_1" "expressions"
vocabulary = ds_map_create();
expressions = ds_map_create();

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
/// @DnDInput : 5
/// @DnDArgument : "expr_3" "-1"
/// @DnDArgument : "expr_4" """"
/// @DnDArgument : "var" "head_offset_x"
/// @DnDArgument : "var_1" "head_offset_y"
/// @DnDArgument : "var_2" "hair_offset_y"
/// @DnDArgument : "var_3" "gwah"
/// @DnDArgument : "var_4" "this_expression"
head_offset_x = 0;
head_offset_y = 0;
hair_offset_y = 0;
gwah = -1;
this_expression = "";

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
/// @DnDArgument : "objectid" "o_emptyhanded"
/// @DnDArgument : "layer" ""Instances_Front""
/// @DnDSaveInfo : "objectid" "o_emptyhanded"
mygurn = instance_create_layer(x + 0, y + 0, "Instances_Front", o_emptyhanded);

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
/// @DnDArgument : "var" "my_cam"
/// @DnDArgument : "objectid" "o_camera"
/// @DnDSaveInfo : "objectid" "o_camera"
my_cam = instance_create_layer(x + 0, y + 0, "Instances", o_camera);

/// @DnDAction : YoYo Games.Data Structures.Create_Map
/// @DnDVersion : 1
/// @DnDHash : 13A26F19
/// @DnDInput : 3
/// @DnDArgument : "var" "weapon_levels"
/// @DnDArgument : "var_1" "weapon_ammo"
/// @DnDArgument : "var_2" "weapon_reload_info"
weapon_levels = ds_map_create();
weapon_ammo = ds_map_create();
weapon_reload_info = ds_map_create();

/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
/// @DnDVersion : 1
/// @DnDHash : 04CA44E1
/// @DnDInput : 2
/// @DnDArgument : "var" "weapon_levels"
/// @DnDArgument : "key" "default_gun"
/// @DnDArgument : "value" "1"
/// @DnDArgument : "key_1" "o_emptyhanded"
/// @DnDArgument : "value_1" "1"
ds_map_replace(weapon_levels, default_gun, 1);
ds_map_replace(weapon_levels, o_emptyhanded, 1);

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 1F59D768
/// @DnDArgument : "var" "player_num"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "o_player"
var player_num = instance_number(o_player);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 5AB5172B
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "var" "reticle"
/// @DnDArgument : "objectid" "o_reticle"
/// @DnDSaveInfo : "objectid" "o_reticle"
reticle = instance_create_layer(x + 0, y + 0, "Instances", o_reticle);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 70EAA60E
/// @DnDArgument : "expr" "id"
/// @DnDArgument : "var" "reticle.master"
reticle.master = id;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EE66E43
/// @DnDArgument : "var" "player_num"
/// @DnDArgument : "value" "1"
if(player_num == 1){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73573921
	/// @DnDParent : 7EE66E43
	/// @DnDArgument : "expr" "id"
	/// @DnDArgument : "var" "o_game.local_player"
	o_game.local_player = id;

	/// @DnDAction : YoYo Games.Common.Variable
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