/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0A84C78F
/// @DnDInput : 4
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDArgument : "arg_2" "true"
/// @DnDArgument : "arg_3" "5"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion, x, y, true, 5);

/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
/// @DnDVersion : 1
/// @DnDHash : 3C8B86C4
/// @DnDArgument : "layer" "layer_get_id("Effect_1")"
layer_set_visible(layer_get_id("Effect_1"), 0);

/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
/// @DnDVersion : 1
/// @DnDHash : 658C8B62
/// @DnDArgument : "layer" "layer_get_id("gurchenis_background")"
layer_set_visible(layer_get_id("gurchenis_background"), 0);

/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
/// @DnDVersion : 1
/// @DnDHash : 20062B19
/// @DnDArgument : "layer" "layer_get_id("Effect_4")"
layer_set_visible(layer_get_id("Effect_4"), 0);

/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
/// @DnDVersion : 1
/// @DnDHash : 4CED95BA
/// @DnDArgument : "layer" "layer_get_id("Effect_2")"
layer_set_visible(layer_get_id("Effect_2"), 0);

/// @DnDAction : YoYo Games.Layers.Layer_Set_Visible
/// @DnDVersion : 1
/// @DnDHash : 75DC0BCE
/// @DnDArgument : "layer" "layer_get_id("Effect_5")"
layer_set_visible(layer_get_id("Effect_5"), 0);

/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 11979F99
/// @DnDArgument : "soundid" "gurchenis_blowup"
/// @DnDSaveInfo : "soundid" "gurchenis_blowup"
audio_stop_sound(gurchenis_blowup);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 58DD6F5E
/// @DnDArgument : "soundid" "sfx_Complete_Destruction"
/// @DnDArgument : "gain" "1.5"
/// @DnDSaveInfo : "soundid" "sfx_Complete_Destruction"
audio_play_sound(sfx_Complete_Destruction, 0, 0, 1.5, undefined, 1.0);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2B5F3734
/// @DnDArgument : "script" "play_kill_sound"
/// @DnDArgument : "arg" "3"
/// @DnDSaveInfo : "script" "play_kill_sound"
script_execute(play_kill_sound, 3);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 145AED7C
/// @DnDArgument : "script" "scr_white_flash"
/// @DnDArgument : "arg" "1"
/// @DnDSaveInfo : "script" "scr_white_flash"
script_execute(scr_white_flash, 1);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 4592E8C8
/// @DnDArgument : "times" "60"
repeat(60){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25BCB526
	/// @DnDParent : 4592E8C8
	/// @DnDArgument : "xpos" "random_range(bbox_left,bbox_right)"
	/// @DnDArgument : "ypos" "random_range(bbox_bottom,bbox_top)"
	/// @DnDArgument : "objectid" "o_red_vermin_explosion"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "o_red_vermin_explosion"
	instance_create_layer(random_range(bbox_left,bbox_right), random_range(bbox_bottom,bbox_top), "Effects", o_red_vermin_explosion);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0AA6D098
/// @DnDArgument : "var" "o_game.state"
/// @DnDArgument : "value" "gm.PYLON"
if(o_game.state == gm.PYLON){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3C7F0FF1
	/// @DnDInput : 2
	/// @DnDParent : 0AA6D098
	/// @DnDArgument : "script" "process_pylon_kill"
	/// @DnDArgument : "arg" "15000"
	/// @DnDArgument : "arg_1" "100"
	/// @DnDSaveInfo : "script" "process_pylon_kill"
	script_execute(process_pylon_kill, 15000, 100);}