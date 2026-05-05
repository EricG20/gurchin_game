/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 578CF08A
/// @DnDArgument : "expr" "clamp(special_meter, 0, special_meter_cap)"
/// @DnDArgument : "var" "special_meter"
special_meter = clamp(special_meter, 0, special_meter_cap);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49093D0C
/// @DnDArgument : "var" "special_meter"
/// @DnDArgument : "value" "special_meter_cap"
if(special_meter == special_meter_cap){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 57F10689
	/// @DnDParent : 49093D0C
	/// @DnDArgument : "expr" "special_line_flag"
	/// @DnDArgument : "not" "1"
	if(!(special_line_flag)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4427D2D6
		/// @DnDParent : 57F10689
		/// @DnDArgument : "xpos" "x"
		/// @DnDArgument : "ypos" "bbox_top"
		/// @DnDArgument : "var" "special_flash"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_hoop"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_hoop"
		var special_flash = instance_create_layer(x, bbox_top, "Effects", e_hoop);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 52E71D88
		/// @DnDParent : 57F10689
		/// @DnDArgument : "expr" "spr_whiteflash"
		/// @DnDArgument : "var" "special_flash.sprite_index"
		special_flash.sprite_index = spr_whiteflash;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3EFA8A55
		/// @DnDParent : 57F10689
		/// @DnDArgument : "soundid" "uispecial"
		/// @DnDArgument : "gain" "1.2"
		/// @DnDSaveInfo : "soundid" "uispecial"
		audio_play_sound(uispecial, 0, 0, 1.2, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43114BB4
		/// @DnDParent : 57F10689
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "special_line_flag"
		special_line_flag = true;
	
		/// @DnDAction : YoYo Games.Data Structures.List_Get_At
		/// @DnDVersion : 1
		/// @DnDHash : 5206E473
		/// @DnDParent : 57F10689
		/// @DnDArgument : "assignee" "say_the_line"
		/// @DnDArgument : "assignee_temp" "1"
		/// @DnDArgument : "var" "special_lines"
		/// @DnDArgument : "index" "irandom_range(1, ds_list_size(special_lines)-1)"
		var say_the_line = ds_list_find_value(special_lines, irandom_range(1, ds_list_size(special_lines)-1));
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2B364C64
		/// @DnDParent : 57F10689
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)scr_make_zorb_say(say_the_line, "joy_eyes", "neutral_mouth", 60*5);"
		/// @description Execute Code
		scr_make_zorb_say(say_the_line, "joy_eyes", "neutral_mouth", 60*5);}}