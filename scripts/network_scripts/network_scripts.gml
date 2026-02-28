/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F7E9605
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "network_scripts"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E6B2A1
/// @DnDArgument : "code" "function send_spawn_packet(_socket, _player_id) {$(13_10)    var buff = buffer_create(8, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player$(13_10)    buffer_write(buff, buffer_u32, _player_id);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_player_appearance(_socket, _char, _suit, _hair) {$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance$(13_10)    buffer_write(buff, buffer_string, _char);$(13_10)    buffer_write(buff, buffer_u32, _suit);$(13_10)    buffer_write(buff, buffer_string, _hair);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_movement_packet(_socket, _x, _y) {$(13_10)	$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);$(13_10)    buffer_write(buff, buffer_f32, _x);$(13_10)    buffer_write(buff, buffer_f32, _y);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_input_packet(_socket, inputs){$(13_10)	var buff = buffer_create(256, buffer_grow, 1);$(13_10)$(13_10)	buffer_write(buff, buffer_u8, PACKET_INPUT);$(13_10)$(13_10)	var keys = global.input_keys;$(13_10)$(13_10)	for (var i = 0; i < array_length(keys); i++) {$(13_10)		var key = keys[i];$(13_10)		buffer_write(buff, buffer_u8, inputs[$ key]);$(13_10)	}$(13_10)$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function send_velocity_packet(_socket, _hsp, _vsp){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_VELOCITY);$(13_10)    buffer_write(buff, buffer_f32, _hsp);$(13_10)    buffer_write(buff, buffer_f32, _vsp);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_aim_packet(_socket, _aimx, _aimy){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_AIM);$(13_10)    buffer_write(buff, buffer_f32, _aimx);$(13_10)    buffer_write(buff, buffer_f32, _aimy);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}"
function send_spawn_packet(_socket, _player_id) {
    var buff = buffer_create(8, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player
    buffer_write(buff, buffer_u32, _player_id);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_player_appearance(_socket, _char, _suit, _hair) {
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance
    buffer_write(buff, buffer_string, _char);
    buffer_write(buff, buffer_u32, _suit);
    buffer_write(buff, buffer_string, _hair);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_movement_packet(_socket, _x, _y) {
	
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);
    buffer_write(buff, buffer_f32, _x);
    buffer_write(buff, buffer_f32, _y);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_input_packet(_socket, inputs){
	var buff = buffer_create(256, buffer_grow, 1);

	buffer_write(buff, buffer_u8, PACKET_INPUT);

	var keys = global.input_keys;

	for (var i = 0; i < array_length(keys); i++) {
		var key = keys[i];
		buffer_write(buff, buffer_u8, inputs[$ key]);
	}

	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff);

}

function send_velocity_packet(_socket, _hsp, _vsp){
		
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_VELOCITY);
    buffer_write(buff, buffer_f32, _hsp);
    buffer_write(buff, buffer_f32, _vsp);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_aim_packet(_socket, _aimx, _aimy){
		
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_AIM);
    buffer_write(buff, buffer_f32, _aimx);
    buffer_write(buff, buffer_f32, _aimy);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}