/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2A58EDB3
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_melee_handler"
function scr_melee_handler() {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26D82740
	/// @DnDParent : 2A58EDB3
	/// @DnDArgument : "var" "melee_cooldown"
	/// @DnDArgument : "op" "3"
	if(melee_cooldown <= 0){	/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 5E575036
		/// @DnDParent : 26D82740
		/// @DnDArgument : "expr" "character_index"
		var l5E575036_0 = character_index;switch(l5E575036_0){	/// @DnDAction : YoYo Games.Switch.Default
			/// @DnDVersion : 1
			/// @DnDHash : 146EF44A
			/// @DnDParent : 5E575036
			default:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2D507994
				/// @DnDInput : 2
				/// @DnDParent : 146EF44A
				/// @DnDArgument : "expr" "-4"
				/// @DnDArgument : "expr_1" "140*global.firerate_bonus*firerate_bonus"
				/// @DnDArgument : "var" "vsp"
				/// @DnDArgument : "var_1" "melee_cooldown"
				vsp = -4;
				melee_cooldown = 140*global.firerate_bonus*firerate_bonus;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 35502688
				/// @DnDParent : 146EF44A
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "billy"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "upgrade_pulse_wave ? o_pulse_wave : o_kick_up"
				/// @DnDArgument : "layer" ""Instances_Front""
				var billy = instance_create_layer(x + 0, y + 0, "Instances_Front", upgrade_pulse_wave ? o_pulse_wave : o_kick_up);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 294CF09D
				/// @DnDParent : 146EF44A
				/// @DnDArgument : "soundid" "sfx_kick"
				/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
				/// @DnDSaveInfo : "soundid" "sfx_kick"
				audio_play_sound(sfx_kick, 0, 0, 1.0, undefined, random_range(0.9,1.1));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 49A81396
				/// @DnDInput : 2
				/// @DnDParent : 146EF44A
				/// @DnDArgument : "expr" "facing"
				/// @DnDArgument : "expr_1" "id"
				/// @DnDArgument : "var" "billy.facing"
				/// @DnDArgument : "var_1" "billy.sender"
				billy.facing = facing;
				billy.sender = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 15A273BD
				/// @DnDParent : 146EF44A
				/// @DnDArgument : "expr" "billy.image_xscale * billy.facing"
				/// @DnDArgument : "var" "billy.image_xscale"
				billy.image_xscale = billy.image_xscale * billy.facing;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 706A5182
			/// @DnDParent : 5E575036
			/// @DnDArgument : "const" ""J0UL3S""
			case "J0UL3S":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2F39B8E4
				/// @DnDParent : 706A5182
				/// @DnDArgument : "expr" "150*global.firerate_bonus*firerate_bonus"
				/// @DnDArgument : "var" "melee_cooldown"
				melee_cooldown = 150*global.firerate_bonus*firerate_bonus;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 22C3AE5D
				/// @DnDParent : 706A5182
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "billy"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_pulse_wave"
				/// @DnDArgument : "layer" ""Instances_Front""
				/// @DnDSaveInfo : "objectid" "o_pulse_wave"
				var billy = instance_create_layer(x + 0, y + 0, "Instances_Front", o_pulse_wave);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 320E82D4
				/// @DnDParent : 706A5182
				/// @DnDArgument : "soundid" "sfx_lightning"
				/// @DnDSaveInfo : "soundid" "sfx_lightning"
				audio_play_sound(sfx_lightning, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 62E4E64D
				/// @DnDInput : 2
				/// @DnDParent : 706A5182
				/// @DnDArgument : "expr" "facing"
				/// @DnDArgument : "expr_1" "id"
				/// @DnDArgument : "var" "billy.facing"
				/// @DnDArgument : "var_1" "billy.sender"
				billy.facing = facing;
				billy.sender = id;
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 17A50913
				/// @DnDParent : 706A5182
				/// @DnDArgument : "expr" "billy.image_xscale * billy.facing"
				/// @DnDArgument : "var" "billy.image_xscale"
				billy.image_xscale = billy.image_xscale * billy.facing;	break;}}}