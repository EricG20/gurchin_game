/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4828C3CF
/// @DnDArgument : "funcName" "scr_specials"
function scr_specials() {	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 42076BBB
	/// @DnDParent : 4828C3CF
	/// @DnDArgument : "expr" "character_index"
	var l42076BBB_0 = character_index;switch(l42076BBB_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 35DF5D2A
		/// @DnDParent : 42076BBB
		/// @DnDArgument : "const" ""Gurchin""
		case "Gurchin":	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3E52EE5B
			/// @DnDParent : 35DF5D2A
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "lilbuddy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "o_minion"
			/// @DnDSaveInfo : "objectid" "o_minion"
			var lilbuddy = instance_create_layer(x + 0, y + 0, "Instances", o_minion);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 407A4117
			/// @DnDInput : 3
			/// @DnDApplyTo : lilbuddy
			/// @DnDParent : 35DF5D2A
			/// @DnDArgument : "script" "scr_homing"
			/// @DnDArgument : "arg" "o_cursor"
			/// @DnDArgument : "arg_1" "20"
			/// @DnDArgument : "arg_2" "9999"
			/// @DnDSaveInfo : "script" "scr_homing"
			with(lilbuddy) {
				script_execute(scr_homing, o_cursor, 20, 9999);
			}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2E756A15
		/// @DnDParent : 42076BBB
		/// @DnDArgument : "const" ""Zelinka""
		case "Zelinka":	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6F5420CD
			/// @DnDParent : 2E756A15
			/// @DnDArgument : "xpos" "o_cursor.x"
			/// @DnDArgument : "objectid" "o_bullet_storm"
			/// @DnDSaveInfo : "objectid" "o_bullet_storm"
			instance_create_layer(o_cursor.x, 0, "Instances", o_bullet_storm);

			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7DDAD27C
			/// @DnDParent : 2E756A15
			/// @DnDArgument : "soundid" "sfx_lightning"
			/// @DnDArgument : "gain" "2"
			/// @DnDArgument : "pitch" ".7"
			/// @DnDSaveInfo : "soundid" "sfx_lightning"
			audio_play_sound(sfx_lightning, 0, 0, 2, undefined, .7);	break;

		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 609C369E
		/// @DnDParent : 42076BBB
		/// @DnDArgument : "const" ""Robot""
		case "Robot":	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 407F6372
			/// @DnDParent : 609C369E
			/// @DnDArgument : "var" "wheel"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "o_robot_special_wheel"
			/// @DnDSaveInfo : "objectid" "o_robot_special_wheel"
			var wheel = instance_create_layer(x, y, "Effects", o_robot_special_wheel);	break;}}