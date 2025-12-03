/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 15204216
/// @DnDArgument : "expr" "anim"
var l15204216_0 = anim;switch(l15204216_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7C1C8DB5
	/// @DnDParent : 15204216
	/// @DnDArgument : "const" "stance.SHOT"
	case stance.SHOT:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 5B1662F8
		/// @DnDParent : 7C1C8DB5
		/// @DnDArgument : "expr" "image_index >= 3 && image_index <= 5"
		if(image_index >= 3 && image_index <= 5){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46DEE259
			/// @DnDParent : 5B1662F8
			/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
			/// @DnDArgument : "value" "-1"
			if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Instances.Set_Alarm
				/// @DnDVersion : 1
				/// @DnDHash : 09F7BFCF
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "steps" "5*(fps/60)"
				alarm_set(0, 5*(fps/60));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 207D2289
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "expr" "0.05"
				/// @DnDArgument : "var" "global.game_time"
				global.game_time = 0.05;
			
				/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 65746821
				/// @DnDInput : 2
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "function" "ds_list_add"
				/// @DnDArgument : "arg" "collided_with"
				/// @DnDArgument : "arg_1" "other.id"
				ds_list_add(collided_with, other.id);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 7BAEB6E0
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "expr" "-2*(image_xscale)"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "other.hp"
				other.hp += -2*(image_xscale);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 177433F2
				/// @DnDInput : 4
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "expr" "lengthdir_x(10*(image_xscale),image_angle)"
				/// @DnDArgument : "expr_1" "lengthdir_y(10*(image_xscale),image_angle)"
				/// @DnDArgument : "expr_2" "false"
				/// @DnDArgument : "expr_3" "-2"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "other.hsp"
				/// @DnDArgument : "var_1" "other.vsp"
				/// @DnDArgument : "var_2" "other.on_ground"
				/// @DnDArgument : "var_3" "other.y"
				other.hsp = lengthdir_x(10*(image_xscale),image_angle);
				other.vsp = lengthdir_y(10*(image_xscale),image_angle);
				other.on_ground = false;
				other.y += -2;
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 4B753DEA
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "soundid" "sfx_hit"
				/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_hit"
				audio_play_sound(sfx_hit, 0, 0, 1.0, undefined, random_range(0.8,1.2));
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 5489BC5B
				/// @DnDDisabled : 1
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "soundid" "sfx_shine"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(.6,.8)"
				/// @DnDSaveInfo : "soundid" "sfx_shine"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0E4BF5DB
				/// @DnDInput : 2
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "expr_1" "1.2"
				/// @DnDArgument : "var" "other.hp"
				/// @DnDArgument : "var_1" "other.flashAlpha"
				other.hp += 0;
				other.flashAlpha = 1.2;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 792DB668
				/// @DnDParent : 46DEE259
				/// @DnDArgument : "var" "image_xscale"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "2.15"
				if(image_xscale >= 2.15){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 2D3FD385
					/// @DnDParent : 792DB668
					/// @DnDArgument : "soundid" "sfx_smash"
					/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
					/// @DnDSaveInfo : "soundid" "sfx_smash"
					audio_play_sound(sfx_smash, 0, 0, 1.0, undefined, random_range(0.8,1.2));
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 686A3778
					/// @DnDParent : 792DB668
					/// @DnDArgument : "var" "global.game_time"
					global.game_time = 0;
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 1E20D898
					/// @DnDInput : 2
					/// @DnDParent : 792DB668
					/// @DnDArgument : "script" "scr_screenshake"
					/// @DnDArgument : "arg" "15"
					/// @DnDArgument : "arg_1" "15"
					/// @DnDSaveInfo : "script" "scr_screenshake"
					script_execute(scr_screenshake, 15, 15);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 1624D62E
					/// @DnDParent : 792DB668
					/// @DnDArgument : "script" "scr_white_flash"
					/// @DnDArgument : "arg" ".2"
					/// @DnDSaveInfo : "script" "scr_white_flash"
					script_execute(scr_white_flash, .2);
				
					/// @DnDAction : YoYo Games.Instances.Set_Alarm
					/// @DnDVersion : 1
					/// @DnDHash : 7E805AD7
					/// @DnDParent : 792DB668
					/// @DnDArgument : "steps" "15*(fps/60)"
					alarm_set(0, 15*(fps/60));
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 47EED376
					/// @DnDParent : 792DB668
					/// @DnDArgument : "expr" "-2"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "other.hp"
					other.hp += -2;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 07C6E8B1
					/// @DnDParent : 792DB668
					/// @DnDArgument : "xpos" "other.x"
					/// @DnDArgument : "ypos" "y"
					/// @DnDArgument : "objectid" "e_mighty_hit"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_mighty_hit"
					instance_create_layer(other.x, y, "Effects", e_mighty_hit);}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 685B32A2
				/// @DnDParent : 46DEE259
				else{	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 3D1794EE
					/// @DnDParent : 685B32A2
					/// @DnDArgument : "xpos" "other.x"
					/// @DnDArgument : "ypos" "y"
					/// @DnDArgument : "objectid" "e_bullet_dust"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_bullet_dust"
					instance_create_layer(other.x, y, "Effects", e_bullet_dust);}}}	break;}