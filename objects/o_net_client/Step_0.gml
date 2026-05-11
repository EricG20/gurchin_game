/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B96C8F6
/// @DnDArgument : "code" "display_alpha = lerp(display_alpha,1,.3*global.game_speed);$(13_10)$(13_10)$(13_10)$(13_10)switch (find_state)$(13_10){$(13_10)	case enter.CHOOSING:$(13_10)	$(13_10)		if (o_cursor.y >= 540) chosen_mode = 1;$(13_10)		else chosen_mode = 0;$(13_10)		$(13_10)		if(InputPressed(INPUT_VERB.SHOOT)){$(13_10)			if (chosen_mode == 0)find_state = enter.CODE;$(13_10)			else find_state = enter.IP_ADDRESS$(13_10)			keyboard_string = "";$(13_10)		}$(13_10)	$(13_10)	break;$(13_10)	$(13_10)	case enter.CODE:$(13_10)		var raw = string_upper(keyboard_string);$(13_10)$(13_10)		raw = sanitize_join_code(raw);$(13_10)$(13_10)		// Limit to 4 characters$(13_10)		if (string_length(raw) > 4) {$(13_10)		    raw = string_copy(raw, 1, 4);$(13_10)		}$(13_10)$(13_10)		join_code = raw;$(13_10)		keyboard_string = raw;$(13_10)$(13_10)		// When player presses Enter, resolve the code$(13_10)		if (keyboard_check_pressed(vk_enter)) {$(13_10)		    var url = "https://zpdf-mtchserver.fly.dev/resolve/" + join_code;$(13_10)		    http_get(url);$(13_10)		    connecting = true;$(13_10)			o_game.local_player.state = ps.IDLE;$(13_10)		}$(13_10)		break;$(13_10)	case enter.IP_ADDRESS:$(13_10)		var raw = keyboard_string;$(13_10)		$(13_10)		join_code = raw;$(13_10)		keyboard_string = raw;$(13_10)$(13_10)		// When player presses Enter, resolve the code$(13_10)		if (keyboard_check_pressed(vk_enter)) {$(13_10)		    network_connect(client_socket, join_code, 6510);$(13_10)			o_game.local_player.state = ps.IDLE;$(13_10)			find_state = enter.STANDBY;$(13_10)		}$(13_10)		$(13_10)		break;$(13_10)}"
display_alpha = lerp(display_alpha,1,.3*global.game_speed);



switch (find_state)
{
	case enter.CHOOSING:
	
		if (o_cursor.y >= 540) chosen_mode = 1;
		else chosen_mode = 0;
		
		if(InputPressed(INPUT_VERB.SHOOT)){
			if (chosen_mode == 0)find_state = enter.CODE;
			else find_state = enter.IP_ADDRESS
			keyboard_string = "";
		}
	
	break;
	
	case enter.CODE:
		var raw = string_upper(keyboard_string);

		raw = sanitize_join_code(raw);

		// Limit to 4 characters
		if (string_length(raw) > 4) {
		    raw = string_copy(raw, 1, 4);
		}

		join_code = raw;
		keyboard_string = raw;

		// When player presses Enter, resolve the code
		if (keyboard_check_pressed(vk_enter)) {
		    var url = "https://zpdf-mtchserver.fly.dev/resolve/" + join_code;
		    http_get(url);
		    connecting = true;
			o_game.local_player.state = ps.IDLE;
		}
		break;
	case enter.IP_ADDRESS:
		var raw = keyboard_string;
		
		join_code = raw;
		keyboard_string = raw;

		// When player presses Enter, resolve the code
		if (keyboard_check_pressed(vk_enter)) {
		    network_connect(client_socket, join_code, 6510);
			o_game.local_player.state = ps.IDLE;
			find_state = enter.STANDBY;
		}
		
		break;
}