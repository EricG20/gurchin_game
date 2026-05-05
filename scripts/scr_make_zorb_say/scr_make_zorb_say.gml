/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 15BEF912
/// @DnDComment : message string is what you want them to say$(13_10)eye type is the expression they make with their eyes$(13_10)mouth type is ditto but with mouth$(13_10)valid types are as follows:$(13_10)joy | sad | scared | confident | ponder | neutral$(13_10)for eyes you must enter a string with a type followed by _eyes$(13_10)ex: "sad_eyes"$(13_10)for mouth its the same except with _mouth$(13_10)ex: "joy_mouth"$(13_10)combining mismatching types will result in more dynamic expressions or just some weird shit
/// @DnDInput : 4
/// @DnDArgument : "funcName" "scr_make_zorb_say"
/// @DnDArgument : "arg" "message_string"
/// @DnDArgument : "arg_1" "eye_type"
/// @DnDArgument : "arg_2" "mouth_type"
/// @DnDArgument : "arg_3" "duration=60*7"
function scr_make_zorb_say(message_string, eye_type, mouth_type, duration=60*7) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34CE85A4
	/// @DnDInput : 4
	/// @DnDParent : 15BEF912
	/// @DnDArgument : "expr" "ds_map_find_value(expressions, eye_type)"
	/// @DnDArgument : "expr_1" "mouth_type"
	/// @DnDArgument : "expr_2" "message_string"
	/// @DnDArgument : "expr_3" "duration"
	/// @DnDArgument : "var" "eyes_expression"
	/// @DnDArgument : "var_1" "mouth_key"
	/// @DnDArgument : "var_2" "dialogue_content"
	/// @DnDArgument : "var_3" "speak_timer"
	eyes_expression = ds_map_find_value(expressions, eye_type);
	mouth_key = mouth_type;
	dialogue_content = message_string;
	speak_timer = duration;

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 1C5FCC72
	/// @DnDParent : 15BEF912
	/// @DnDArgument : "obj" "o_net_host"
	/// @DnDSaveInfo : "obj" "o_net_host"
	var l1C5FCC72_0 = false;l1C5FCC72_0 = instance_exists(o_net_host);if(l1C5FCC72_0){	/// @DnDAction : YoYo Games.Loops.For_Loop
		/// @DnDVersion : 1
		/// @DnDHash : 500E07F9
		/// @DnDParent : 1C5FCC72
		/// @DnDArgument : "init_temp" "1"
		/// @DnDArgument : "cond" "i < ds_list_size(o_net_host.socket_list)"
		for(var i = 0; i < ds_list_size(o_net_host.socket_list); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 08064676
			/// @DnDParent : 500E07F9
			/// @DnDArgument : "function" "send_character_message_packet"
			/// @DnDArgument : "arg" "ds_list_find_value(o_net_host.socket_list, i)"
			send_character_message_packet(ds_list_find_value(o_net_host.socket_list, i));}}

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 08BE05AF
	/// @DnDParent : 15BEF912
	/// @DnDArgument : "obj" "o_net_client"
	/// @DnDSaveInfo : "obj" "o_net_client"
	var l08BE05AF_0 = false;l08BE05AF_0 = instance_exists(o_net_client);if(l08BE05AF_0){	/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 21034E46
		/// @DnDParent : 08BE05AF
		/// @DnDArgument : "function" "send_character_message_packet"
		/// @DnDArgument : "arg" "socket"
		send_character_message_packet(socket);}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 684D046C
	/// @DnDParent : 15BEF912
	/// @DnDArgument : "script" "msg_stop"
	/// @DnDSaveInfo : "script" "msg_stop"
	script_execute(msg_stop);}