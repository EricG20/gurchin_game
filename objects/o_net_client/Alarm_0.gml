/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0DBBEF43
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var payload = buffer_create(1, buffer_grow, 1); $(13_10)	// no payload for fake connect$(13_10)	//audio_play_sound(uinotif, 0, false);$(13_10)	send_framed_packet(global.tcp_sock, global.lobby_id, 1, payload);$(13_10)	$(13_10)	buffer_delete(payload);$(13_10)	//alarm[0] = 140;"
/// @description Execute Code
var payload = buffer_create(1, buffer_grow, 1); 
	// no payload for fake connect
	//audio_play_sound(uinotif, 0, false);
	send_framed_packet(global.tcp_sock, global.lobby_id, 1, payload);
	
	buffer_delete(payload);
	//alarm[0] = 140;