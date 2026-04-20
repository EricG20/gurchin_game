/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 560C7386
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_emote_controls"
function scr_emote_controls() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1FE27573
	/// @DnDParent : 560C7386
	/// @DnDArgument : "expr" "communicate"
	if(communicate){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 094AF2B3
		/// @DnDParent : 1FE27573
		/// @DnDArgument : "obj" "o_emote_wheel"
		/// @DnDArgument : "not" "1"
		/// @DnDSaveInfo : "obj" "o_emote_wheel"
		var l094AF2B3_0 = false;l094AF2B3_0 = instance_exists(o_emote_wheel);if(!l094AF2B3_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 74E2178C
			/// @DnDParent : 094AF2B3
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "o_emote_wheel"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "o_emote_wheel"
			instance_create_layer(x + 0, y + 0, "Effects", o_emote_wheel);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 14A9CF8D
		/// @DnDParent : 1FE27573
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 537EB504
			/// @DnDInput : 2
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "expr" "o_emote_wheel.hover_index + 1"
			/// @DnDArgument : "expr_1" "irandom_range(1,ds_list_size(ds_map_find_value(vocabulary, speak_topic_index)) - 1)"
			/// @DnDArgument : "var" "speak_topic_index"
			/// @DnDArgument : "var_1" "speak_phrase_index"
			speak_topic_index = o_emote_wheel.hover_index + 1;
			speak_phrase_index = irandom_range(1,ds_list_size(ds_map_find_value(vocabulary, speak_topic_index)) - 1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5F12BD07
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "expr" """"
			/// @DnDArgument : "var" "this_expression"
			this_expression = "";
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 38314812
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "expr" "speak_topic_index"
			var l38314812_0 = speak_topic_index;switch(l38314812_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3C692B65
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "GOOD_JOB"
				case GOOD_JOB:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 53C1DEEC
					/// @DnDInput : 2
					/// @DnDParent : 3C692B65
					/// @DnDArgument : "expr" ""joy_eyes""
					/// @DnDArgument : "expr_1" ""joy_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "joy_eyes";
					mouth_key = "joy_mouth";	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 4F404EA5
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "YOU_SUCK"
				case YOU_SUCK:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 35D7C5C1
					/// @DnDInput : 2
					/// @DnDParent : 4F404EA5
					/// @DnDArgument : "expr" ""sad_eyes""
					/// @DnDArgument : "expr_1" ""sad_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "sad_eyes";
					mouth_key = "sad_mouth";	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 7B54F9FD
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "I_NEED_HELP"
				case I_NEED_HELP:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1C430138
					/// @DnDInput : 2
					/// @DnDParent : 7B54F9FD
					/// @DnDArgument : "expr" ""scared_eyes""
					/// @DnDArgument : "expr_1" ""scared_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "scared_eyes";
					mouth_key = "scared_mouth";	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 33022C6B
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "GLOAT"
				case GLOAT:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 13487182
					/// @DnDInput : 2
					/// @DnDParent : 33022C6B
					/// @DnDArgument : "expr" ""confident_eyes""
					/// @DnDArgument : "expr_1" ""confident_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "confident_eyes";
					mouth_key = "confident_mouth";	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 60DFB0EF
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "I_WANT_THAT"
				case I_WANT_THAT:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 15E14C5A
					/// @DnDInput : 2
					/// @DnDParent : 60DFB0EF
					/// @DnDArgument : "expr" ""ponder_eyes""
					/// @DnDArgument : "expr_1" ""ponder_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "ponder_eyes";
					mouth_key = "ponder_mouth";	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 2EF8316E
				/// @DnDParent : 38314812
				/// @DnDArgument : "const" "HI"
				case HI:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 05F3D7D4
					/// @DnDInput : 2
					/// @DnDParent : 2EF8316E
					/// @DnDArgument : "expr" ""neutral_eyes""
					/// @DnDArgument : "expr_1" ""neutral_mouth""
					/// @DnDArgument : "var" "this_expression"
					/// @DnDArgument : "var_1" "mouth_key"
					this_expression = "neutral_eyes";
					mouth_key = "neutral_mouth";	break;}
		
			/// @DnDAction : YoYo Games.Common.If_Undefined
			/// @DnDVersion : 1
			/// @DnDHash : 44D22C44
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "var" "ds_map_find_value(expressions, this_expression)"
			/// @DnDArgument : "not" "1"
			if(ds_map_find_value(expressions, this_expression) != undefined){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 686492F3
				/// @DnDParent : 44D22C44
				/// @DnDArgument : "expr" "ds_map_find_value(expressions, this_expression)"
				/// @DnDArgument : "var" "eyes_expression"
				eyes_expression = ds_map_find_value(expressions, this_expression);}
		
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5B8E4CA6
			/// @DnDApplyTo : o_emote_wheel
			/// @DnDParent : 14A9CF8D
			with(o_emote_wheel) instance_destroy();
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6664B864
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "soundid" "uinotif"
			/// @DnDArgument : "gain" ".7"
			/// @DnDArgument : "pitch" "1.5"
			/// @DnDSaveInfo : "soundid" "uinotif"
			audio_play_sound(uinotif, 0, 0, .7, undefined, 1.5);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30DF31F6
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "expr" "60*7"
			/// @DnDArgument : "var" "speak_timer"
			speak_timer = 60*7;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 08FECE98
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "expr" "ds_list_find_value(ds_map_find_value(vocabulary, speak_topic_index), speak_phrase_index)"
			/// @DnDArgument : "var" "dialogue_content"
			dialogue_content = ds_list_find_value(ds_map_find_value(vocabulary, speak_topic_index), speak_phrase_index);
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 4CC3F4FC
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "obj" "o_net_host"
			/// @DnDSaveInfo : "obj" "o_net_host"
			var l4CC3F4FC_0 = false;l4CC3F4FC_0 = instance_exists(o_net_host);if(l4CC3F4FC_0){	/// @DnDAction : YoYo Games.Loops.For_Loop
				/// @DnDVersion : 1
				/// @DnDHash : 54DCC835
				/// @DnDParent : 4CC3F4FC
				/// @DnDArgument : "init_temp" "1"
				/// @DnDArgument : "cond" "i < ds_list_size(o_net_host.socket_list)"
				for(var i = 0; i < ds_list_size(o_net_host.socket_list); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
					/// @DnDVersion : 1
					/// @DnDHash : 31B1D3A6
					/// @DnDParent : 54DCC835
					/// @DnDArgument : "function" "send_character_message_packet"
					/// @DnDArgument : "arg" "ds_list_find_value(o_net_host.socket_list, i)"
					send_character_message_packet(ds_list_find_value(o_net_host.socket_list, i));}}
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 3B0F4F83
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "obj" "o_net_client"
			/// @DnDSaveInfo : "obj" "o_net_client"
			var l3B0F4F83_0 = false;l3B0F4F83_0 = instance_exists(o_net_client);if(l3B0F4F83_0){	/// @DnDAction : YoYo Games.Common.Function_Call
				/// @DnDVersion : 1
				/// @DnDHash : 00C38537
				/// @DnDParent : 3B0F4F83
				/// @DnDArgument : "function" "send_character_message_packet"
				/// @DnDArgument : "arg" "socket"
				send_character_message_packet(socket);}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6B181CEC
			/// @DnDParent : 14A9CF8D
			/// @DnDArgument : "script" "msg_stop"
			/// @DnDSaveInfo : "script" "msg_stop"
			script_execute(msg_stop);}}}