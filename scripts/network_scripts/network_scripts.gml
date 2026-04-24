/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 6F7E9605
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "network_scripts"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 49E6B2A1
/// @DnDArgument : "code" "function send_spawn_packet(_socket, _player_id) {$(13_10)    var buff = buffer_create(8, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player$(13_10)    buffer_write(buff, buffer_u32, _player_id);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_player_appearance(_socket, _char, _suit, _hair, _id) {$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance$(13_10)    buffer_write(buff, buffer_string, _char);$(13_10)    buffer_write(buff, buffer_u32, _suit);$(13_10)    buffer_write(buff, buffer_string, _hair);$(13_10)	buffer_write(buff, buffer_u8, _id);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_movement_packet(_socket, _x, _y) {$(13_10)	$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);$(13_10)    buffer_write(buff, buffer_f32, _x);$(13_10)    buffer_write(buff, buffer_f32, _y);$(13_10)	buffer_write(buff, buffer_u8, player_id);$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_input_packet(_socket, inputs){$(13_10)	var buff = buffer_create(256, buffer_grow, 1);$(13_10)$(13_10)	buffer_write(buff, buffer_u8, PACKET_INPUT);$(13_10)	buffer_write(buff, buffer_u8, player_id)$(13_10)$(13_10)	var keys = global.input_keys;$(13_10)$(13_10)	for (var i = 0; i < array_length(keys); i++) {$(13_10)		var key = keys[i];$(13_10)		buffer_write(buff, buffer_u8, inputs[$ key]);$(13_10)	}$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function send_velocity_packet(_socket, _hsp, _vsp){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_VELOCITY);$(13_10)    buffer_write(buff, buffer_f32, _hsp);$(13_10)    buffer_write(buff, buffer_f32, _vsp);$(13_10)	buffer_write(buff, buffer_u8, player_id)$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_aim_packet(_socket, _aimx, _aimy, _nav){$(13_10)		$(13_10)    var buff = buffer_create(16, buffer_grow, 1);$(13_10)$(13_10)    buffer_write(buff, buffer_u8, PACKET_AIM);$(13_10)    buffer_write(buff, buffer_f32, _aimx);$(13_10)    buffer_write(buff, buffer_f32, _aimy);$(13_10)	buffer_write(buff, buffer_f32, _nav);$(13_10)	buffer_write(buff, buffer_u8, player_id)$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_bullet_packet(_socket, _projectile){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_BULLET);$(13_10)    buffer_write(buff, buffer_u32, _projectile.bullet_number);$(13_10)    buffer_write(buff, buffer_f32, _projectile.hsp);$(13_10)	buffer_write(buff, buffer_f32, _projectile.vsp);$(13_10)	buffer_write(buff, buffer_bool, _projectile.homing); $(13_10)	buffer_write(buff, buffer_f32, _projectile.x);$(13_10)	buffer_write(buff, buffer_f32, _projectile.y);$(13_10)	buffer_write(buff, buffer_u16, _projectile.object_index);$(13_10)	buffer_write(buff, buffer_u16, _projectile.sprite_index);$(13_10)	buffer_write(buff, buffer_u8, _projectile.sender.player_id)$(13_10)$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function fix_ammo_count(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_AMMO);$(13_10)	buffer_write(buff, buffer_f32, mygurn.ammo);$(13_10)	buffer_write(buff, buffer_u8, player_id)$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function they_pressed_the_swap_button(_socket){$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_SWAP);$(13_10)	buffer_write(buff, buffer_u8, player_id)$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_enemyspawn_packet(_socket, _enemy){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_ENEMYSPAWN);$(13_10)	buffer_write(buff, buffer_f32, _enemy.x);$(13_10)	buffer_write(buff, buffer_f32, _enemy.y);$(13_10)	buffer_write(buff, buffer_u16, _enemy.object_index);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hp);$(13_10)	buffer_write(buff, buffer_u32, _enemy.enemy_num);$(13_10)	buffer_write(buff, buffer_u8, _enemy.state);$(13_10)	buffer_write(buff, buffer_f32, _enemy.cooldown);$(13_10)	buffer_write(buff, buffer_s8, _enemy.facing);$(13_10)	buffer_write(buff, buffer_f32, _enemy.variance);$(13_10)	$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_enemyfix_packet(_socket, _enemy){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_ENEMY_CORRECTION);$(13_10)	buffer_write(buff, buffer_f32, _enemy.x);$(13_10)	buffer_write(buff, buffer_f32, _enemy.y);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hsp);$(13_10)	buffer_write(buff, buffer_f32, _enemy.vsp);$(13_10)	buffer_write(buff, buffer_u16, _enemy.object_index);$(13_10)	buffer_write(buff, buffer_f32, _enemy.hp);$(13_10)	buffer_write(buff, buffer_u32, _enemy.enemy_num);$(13_10)	buffer_write(buff, buffer_u8, _enemy.state);$(13_10)	buffer_write(buff, buffer_f32, _enemy.cooldown);$(13_10)	buffer_write(buff, buffer_s8, _enemy.facing);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_game_packet(_socket){$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_GAME_LOGIC);$(13_10)	buffer_write(buff, buffer_f32, pylon_incr);$(13_10)	buffer_write(buff, buffer_u32, pylon_enemies);$(13_10)	buffer_write(buff, buffer_u32, pylon_enemy_count);$(13_10)	buffer_write(buff, buffer_bool, in_wave);$(13_10)	buffer_write(buff, buffer_f32, combo_bar);$(13_10)	buffer_write(buff, buffer_u32, combo_num);$(13_10)	buffer_write(buff, buffer_f32, flub);$(13_10)	buffer_write(buff, buffer_f64, scor);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_flub_packet(_socket, _flub){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_FLUB);$(13_10)	buffer_write(buff, buffer_f32, _flub.flubbington);$(13_10)	buffer_write(buff, buffer_f32, _flub.hsp);$(13_10)	buffer_write(buff, buffer_f32, _flub.vsp);$(13_10)	buffer_write(buff, buffer_bool, _flub.will_combine);$(13_10)	buffer_write(buff, buffer_f32, _flub.x);$(13_10)	buffer_write(buff, buffer_f32, _flub.y);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_pickup_packet(_socket, _pickup){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_WEAPON_DROP);$(13_10)	buffer_write(buff, buffer_u16, _pickup.weapon_index);$(13_10)	buffer_write(buff, buffer_f32, _pickup.x);$(13_10)	buffer_write(buff, buffer_f32, _pickup.y);$(13_10)	$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_buff_packet(_socket){$(13_10)	$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1)$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_BUFF);$(13_10)	buffer_write(buff, buffer_string, buff_to_be);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)	$(13_10)}$(13_10)$(13_10)function send_id_packet(_socket, _id){$(13_10)$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_ID);$(13_10)	buffer_write(buff, buffer_u8, _id);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function request_appearence_packet(_socket, _id){$(13_10)$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_APPEARANCE_REQUEST);$(13_10)	buffer_write(buff, buffer_u8, _id); //id of character to request$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function player_list_check(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_PLAYER_LIST);$(13_10)	for (var i = 0; i < 5; i++){$(13_10)		buffer_write(buff, buffer_s8, global.players[i]);		$(13_10)	}  $(13_10)	//buffer_write(buff, buffer_u8, _id); //id of character to request$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function player_ready_status(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_PLAYER_READY);$(13_10)	buffer_write(buff, buffer_bool, ready);$(13_10)	buffer_write(buff, buffer_u8, player_id);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function set_mission(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_SET_MISSION);$(13_10)	buffer_write(buff, buffer_s8, selected_mission);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff); //im eric :DDD$(13_10)$(13_10)}$(13_10)$(13_10)function send_character_message_packet(_socket){$(13_10)	$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_COMMUNICATION);$(13_10)	buffer_write(buff, buffer_string, dialogue_content);$(13_10)	buffer_write(buff, buffer_string, mouth_key);$(13_10)	buffer_write(buff, buffer_string, this_expression);$(13_10)	buffer_write(buff, buffer_u8, player_id);$(13_10)	$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function delete_player(_socket, _id){$(13_10)$(13_10)	var buff = buffer_create(16, buffer_grow, 1);$(13_10)	$(13_10)	buffer_write(buff, buffer_u8, PACKET_DELETE_PLAYER);$(13_10)	buffer_write(buff, buffer_u8, _id);$(13_10)	$(13_10)	network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function socket_exists(_socket){$(13_10)	$(13_10)if (variable_instance_exists(id, _socket)) return true;$(13_10)return false;$(13_10)}$(13_10)$(13_10)function sanitize_join_code(str) {$(13_10)    var allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";$(13_10)    var out = "";$(13_10)    $(13_10)    var len = string_length(str);$(13_10)    for (var i = 1; i <= len; i++) {$(13_10)        var ch = string_char_at(str, i);$(13_10)        if (string_pos(ch, allowed) > 0) {$(13_10)            out += ch;$(13_10)        }$(13_10)    }$(13_10)    $(13_10)    return out;$(13_10)}$(13_10)$(13_10)function scr_client_begin_nat_punch(){$(13_10)	var headers = ds_map_create();$(13_10)	http_request(global.mm_url + "/stun", "GET", headers, "");$(13_10)	ds_map_destroy(headers);$(13_10)$(13_10)}$(13_10)$(13_10)function scr_client_request_punch(){$(13_10)	var headers = ds_map_create();$(13_10)	headers[? "Content-Type"] = "application/json";$(13_10)	http_request(global.mm_url + "/punch/" + join_code, "POST", headers, "{}");$(13_10)	ds_map_destroy(headers);$(13_10)$(13_10)}$(13_10)$(13_10)function scr_client_start_punch(){$(13_10)	if (!variable_global_exists("udp_socket")) {$(13_10)    global.udp_socket = network_create_socket(network_socket_udp);$(13_10)	}$(13_10)$(13_10)	var buff = buffer_create(8, buffer_grow, 1);$(13_10)	buffer_write(buff, buffer_u8, 0);$(13_10)$(13_10)	for (var i = 0; i < 10; i++) {$(13_10)	    network_send_udp(global.udp_socket, global.target_ip, UDP_SERVER_PORT, buff, buffer_tell(buff));$(13_10)	}$(13_10)$(13_10)	buffer_delete(buff);$(13_10)$(13_10)	// Now attempt real connection$(13_10)	show_debug_message("ATTEMPTING TO CONNECT TO: " + string(global.target_ip) + ":" + string(TCP_SERVER_PORT));$(13_10)	network_connect(client_socket, global.target_ip, TCP_SERVER_PORT);$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)function scr_client_start_punch_broadcast(){$(13_10)	if (!variable_global_exists("udp_socket")) {$(13_10)    global.udp_socket = network_create_socket_ext(network_socket_udp, UDP_SERVER_PORT);$(13_10)	}$(13_10)$(13_10)	var buff = buffer_create(8, buffer_grow, 1);$(13_10)	buffer_write(buff, buffer_u8, 0);$(13_10)$(13_10)	for (var i = 0; i < 10; i++) {$(13_10)	    network_send_broadcast(global.udp_socket, UDP_SERVER_PORT, buff, buffer_tell(buff));$(13_10)	}$(13_10)$(13_10)	buffer_delete(buff);$(13_10)$(13_10)	// Now attempt real connection$(13_10)	//show_debug_message("ATTEMPTING TO CONNECT TO: " + string(global.target_ip) + ":" + string(TCP_SERVER_PORT));$(13_10)	//network_connect(client_socket, global.target_ip, TCP_SERVER_PORT);$(13_10)$(13_10)$(13_10)}$(13_10)$(13_10)function scr_host_start_punch(){$(13_10)	/// scr_host_start_punch()$(13_10)$(13_10)	// Create UDP socket if needed$(13_10)	if (!variable_global_exists("udp_socket")) {$(13_10)	    global.udp_socket = network_create_socket(network_socket_udp);$(13_10)		$(13_10)	}$(13_10)$(13_10)	// Create a tiny buffer to send$(13_10)	var buff = buffer_create(8, buffer_grow, 1);$(13_10)	buffer_write(buff, buffer_u8, 0);$(13_10)$(13_10)	// Send a burst of packets to client public endpoint$(13_10)	for (var i = 0; i < 10; i++) {$(13_10)	    network_send_udp(global.udp_socket,$(13_10)	        global.client_public_ip,$(13_10)	        global.client_public_port,$(13_10)	        buff,$(13_10)	        buffer_tell(buff)$(13_10)	    );$(13_10)	}$(13_10)$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)function scr_host_shit_in_their_mouth(){$(13_10)	/// look im frustrated ok! I deserve to name it this$(13_10)$(13_10)	// Create UDP socket if needed$(13_10)	//if (!variable_global_exists("udp_socket")) {$(13_10)	//    global.udp_socket = network_create_socket(network_socket_udp);$(13_10)		$(13_10)	//}$(13_10)$(13_10)	// Create a tiny buffer to send$(13_10)	var buff = buffer_create(8, buffer_grow, 1);$(13_10)	buffer_write(buff, buffer_u8, 0);$(13_10)$(13_10)	// Send a burst of packets to client public endpoint$(13_10)	for (var i = 0; i < 2; i++) {$(13_10)	    var fart_boy = network_send_udp(global.invader_socket,$(13_10)	        global.invader_ip,$(13_10)	        global.invader_port,$(13_10)	        buff,$(13_10)	        buffer_tell(buff)$(13_10)	    );$(13_10)		$(13_10)		if (fart_boy < 0){$(13_10)			audio_play_sound(dry_fart, 0, false);		$(13_10)		}$(13_10)	}$(13_10)$(13_10)	buffer_delete(buff);$(13_10)$(13_10)}$(13_10)$(13_10)//UDP stuff (crossing fingers)$(13_10)function send_request_udp_info(_socket) {$(13_10)    var buff = buffer_create(8, buffer_grow, 1);$(13_10)    buffer_write(buff, buffer_u8, PACKET_REQUEST_UDP_INFO);$(13_10)    network_send_packet(_socket, buff, buffer_tell(buff));$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function register_player(player_id) {$(13_10)    global.players[player_id] = {$(13_10)        udp_ip: "",$(13_10)        udp_port: UDP_SERVER_PORT,$(13_10)        last_seq: -1,$(13_10)        connected: true$(13_10)    };$(13_10)}$(13_10)$(13_10)function register_player_udp(player_id, ip, port) {$(13_10)    var p = global.players[player_id];$(13_10)    p.udp_ip = ip;$(13_10)    p.udp_port = 40010;$(13_10)}$(13_10)$(13_10)$(13_10)function udp_write_header(buff, packet_type) {$(13_10)    buffer_write(buff, buffer_u8, packet_type);$(13_10)    buffer_write(buff, buffer_u16, global.udp_seq);$(13_10)    buffer_write(buff, buffer_u8, player_id);$(13_10)$(13_10)    global.udp_seq = (global.udp_seq + 1) mod 65536;$(13_10)}$(13_10)$(13_10)function udp_send_to_player(_player_id, _buff) {$(13_10)$(13_10)    var p = global.players[_player_id];$(13_10)    if (p == undefined || !p.connected) return;$(13_10)$(13_10)    network_send_udp($(13_10)        global.udp_socket,$(13_10)        p.udp_ip,$(13_10)        UDP_SERVER_PORT,$(13_10)        _buff,$(13_10)        buffer_tell(_buff)$(13_10)    );$(13_10)}$(13_10)$(13_10)function udp_broadcast_except(_sender_id, _buff) {$(13_10)$(13_10)    for (var i = 0; i < array_length(global.players); i++) {$(13_10)        if (i != _sender_id) {$(13_10)            var p = global.players[i];$(13_10)            if (p != undefined && p.connected) {$(13_10)                network_send_udp($(13_10)                    global.udp_socket,$(13_10)                    p.udp_ip,$(13_10)                    UDP_SERVER_PORT,$(13_10)                    _buff,$(13_10)                    buffer_tell(_buff)$(13_10)                );$(13_10)            }$(13_10)        }$(13_10)    }$(13_10)}$(13_10)$(13_10)$(13_10)function send_movement_packet_udp(_player_id, _x, _y) {$(13_10)$(13_10)    var buff = buffer_create(32, buffer_grow, 1);$(13_10)$(13_10)    udp_write_header(buff, PACKET_MOVEMENT_UDP);$(13_10)$(13_10)    buffer_write(buff, buffer_f32, _x);$(13_10)    buffer_write(buff, buffer_f32, _y);$(13_10)$(13_10)    udp_send_to_player(_player_id, buff);$(13_10)$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_input_packet_udp(_player_id, inputs) {$(13_10)$(13_10)    var buff = buffer_create(64, buffer_grow, 1);$(13_10)$(13_10)    udp_write_header(buff, PACKET_INPUT_UDP);$(13_10)$(13_10)    var keys = global.input_keys;$(13_10)$(13_10)    for (var i = 0; i < array_length(keys); i++) {$(13_10)        buffer_write(buff, buffer_u8, inputs[$ keys[i]]);$(13_10)    }$(13_10)$(13_10)    udp_send_to_player(_player_id, buff);$(13_10)$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_velocity_packet_udp(_player_id, _hsp, _vsp) {$(13_10)$(13_10)    var buff = buffer_create(32, buffer_grow, 1);$(13_10)$(13_10)    udp_write_header(buff, PACKET_VELOCITY_UDP);$(13_10)$(13_10)    buffer_write(buff, buffer_f32, _hsp);$(13_10)    buffer_write(buff, buffer_f32, _vsp);$(13_10)$(13_10)    udp_send_to_player(_player_id, buff);$(13_10)$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)$(13_10)function send_aim_packet_udp(_player_id, _aimx, _aimy, _nav) {$(13_10)$(13_10)    var buff = buffer_create(32, buffer_grow, 1);$(13_10)$(13_10)    udp_write_header(buff, PACKET_AIM_UDP);$(13_10)$(13_10)    buffer_write(buff, buffer_f32, _aimx);$(13_10)    buffer_write(buff, buffer_f32, _aimy);$(13_10)    buffer_write(buff, buffer_f32, _nav);$(13_10)$(13_10)    udp_send_to_player(_player_id, buff);$(13_10)$(13_10)    buffer_delete(buff);$(13_10)}$(13_10)"
function send_spawn_packet(_socket, _player_id) {
    var buff = buffer_create(8, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 1); // packet type: 1 = spawn player
    buffer_write(buff, buffer_u32, _player_id);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_player_appearance(_socket, _char, _suit, _hair, _id) {
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, 2);      // packet type: 2 = appearance
    buffer_write(buff, buffer_string, _char);
    buffer_write(buff, buffer_u32, _suit);
    buffer_write(buff, buffer_string, _hair);
	buffer_write(buff, buffer_u8, _id);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_movement_packet(_socket, _x, _y) {
	
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_MOVEMENT);
    buffer_write(buff, buffer_f32, _x);
    buffer_write(buff, buffer_f32, _y);
	buffer_write(buff, buffer_u8, player_id);

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_input_packet(_socket, inputs){
	var buff = buffer_create(256, buffer_grow, 1);

	buffer_write(buff, buffer_u8, PACKET_INPUT);
	buffer_write(buff, buffer_u8, player_id)

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
	buffer_write(buff, buffer_u8, player_id)

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_aim_packet(_socket, _aimx, _aimy, _nav){
		
    var buff = buffer_create(16, buffer_grow, 1);

    buffer_write(buff, buffer_u8, PACKET_AIM);
    buffer_write(buff, buffer_f32, _aimx);
    buffer_write(buff, buffer_f32, _aimy);
	buffer_write(buff, buffer_f32, _nav);
	buffer_write(buff, buffer_u8, player_id)

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_bullet_packet(_socket, _projectile){
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_BULLET);
    buffer_write(buff, buffer_u32, _projectile.bullet_number);
    buffer_write(buff, buffer_f32, _projectile.hsp);
	buffer_write(buff, buffer_f32, _projectile.vsp);
	buffer_write(buff, buffer_bool, _projectile.homing); 
	buffer_write(buff, buffer_f32, _projectile.x);
	buffer_write(buff, buffer_f32, _projectile.y);
	buffer_write(buff, buffer_u16, _projectile.object_index);
	buffer_write(buff, buffer_u16, _projectile.sprite_index);
	buffer_write(buff, buffer_u8, _projectile.sender.player_id)

    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function fix_ammo_count(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_AMMO);
	buffer_write(buff, buffer_f32, mygurn.ammo);
	buffer_write(buff, buffer_u8, player_id)
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function they_pressed_the_swap_button(_socket){
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_SWAP);
	buffer_write(buff, buffer_u8, player_id)
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_enemyspawn_packet(_socket, _enemy){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_ENEMYSPAWN);
	buffer_write(buff, buffer_f32, _enemy.x);
	buffer_write(buff, buffer_f32, _enemy.y);
	buffer_write(buff, buffer_u16, _enemy.object_index);
	buffer_write(buff, buffer_f32, _enemy.hp);
	buffer_write(buff, buffer_u32, _enemy.enemy_num);
	buffer_write(buff, buffer_u8, _enemy.state);
	buffer_write(buff, buffer_f32, _enemy.cooldown);
	buffer_write(buff, buffer_s8, _enemy.facing);
	buffer_write(buff, buffer_f32, _enemy.variance);
	
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_enemyfix_packet(_socket, _enemy){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_ENEMY_CORRECTION);
	buffer_write(buff, buffer_f32, _enemy.x);
	buffer_write(buff, buffer_f32, _enemy.y);
	buffer_write(buff, buffer_f32, _enemy.hsp);
	buffer_write(buff, buffer_f32, _enemy.vsp);
	buffer_write(buff, buffer_u16, _enemy.object_index);
	buffer_write(buff, buffer_f32, _enemy.hp);
	buffer_write(buff, buffer_u32, _enemy.enemy_num);
	buffer_write(buff, buffer_u8, _enemy.state);
	buffer_write(buff, buffer_f32, _enemy.cooldown);
	buffer_write(buff, buffer_s8, _enemy.facing);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_game_packet(_socket){
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_GAME_LOGIC);
	buffer_write(buff, buffer_f32, pylon_incr);
	buffer_write(buff, buffer_u32, pylon_enemies);
	buffer_write(buff, buffer_u32, pylon_enemy_count);
	buffer_write(buff, buffer_bool, in_wave);
	buffer_write(buff, buffer_f32, combo_bar);
	buffer_write(buff, buffer_u32, combo_num);
	buffer_write(buff, buffer_f32, flub);
	buffer_write(buff, buffer_f64, scor);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function send_flub_packet(_socket, _flub){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_FLUB);
	buffer_write(buff, buffer_f32, _flub.flubbington);
	buffer_write(buff, buffer_f32, _flub.hsp);
	buffer_write(buff, buffer_f32, _flub.vsp);
	buffer_write(buff, buffer_bool, _flub.will_combine);
	buffer_write(buff, buffer_f32, _flub.x);
	buffer_write(buff, buffer_f32, _flub.y);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_pickup_packet(_socket, _pickup){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_WEAPON_DROP);
	buffer_write(buff, buffer_u16, _pickup.weapon_index);
	buffer_write(buff, buffer_f32, _pickup.x);
	buffer_write(buff, buffer_f32, _pickup.y);
	
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_buff_packet(_socket){
	
	
	var buff = buffer_create(16, buffer_grow, 1)
	
	buffer_write(buff, buffer_u8, PACKET_BUFF);
	buffer_write(buff, buffer_string, buff_to_be);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
	
}

function send_id_packet(_socket, _id){

	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_ID);
	buffer_write(buff, buffer_u8, _id);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);

}

function request_appearence_packet(_socket, _id){

	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_APPEARANCE_REQUEST);
	buffer_write(buff, buffer_u8, _id); //id of character to request
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);

}

function player_list_check(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_PLAYER_LIST);
	for (var i = 0; i < 5; i++){
		buffer_write(buff, buffer_s8, global.players[i]);		
	}  
	//buffer_write(buff, buffer_u8, _id); //id of character to request
	
	network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function player_ready_status(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_PLAYER_READY);
	buffer_write(buff, buffer_bool, ready);
	buffer_write(buff, buffer_u8, player_id);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff);

}

function set_mission(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_SET_MISSION);
	buffer_write(buff, buffer_s8, selected_mission);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff); //im eric :DDD

}

function send_character_message_packet(_socket){
	
	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_COMMUNICATION);
	buffer_write(buff, buffer_string, dialogue_content);
	buffer_write(buff, buffer_string, mouth_key);
	buffer_write(buff, buffer_string, this_expression);
	buffer_write(buff, buffer_u8, player_id);
	
	
	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff);

}

function delete_player(_socket, _id){

	var buff = buffer_create(16, buffer_grow, 1);
	
	buffer_write(buff, buffer_u8, PACKET_DELETE_PLAYER);
	buffer_write(buff, buffer_u8, _id);
	
	network_send_packet(_socket, buff, buffer_tell(buff));
	buffer_delete(buff);

}

function socket_exists(_socket){
	
if (variable_instance_exists(id, _socket)) return true;
return false;
}

function sanitize_join_code(str) {
    var allowed = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789";
    var out = "";
    
    var len = string_length(str);
    for (var i = 1; i <= len; i++) {
        var ch = string_char_at(str, i);
        if (string_pos(ch, allowed) > 0) {
            out += ch;
        }
    }
    
    return out;
}

function scr_client_begin_nat_punch(){
	var headers = ds_map_create();
	http_request(global.mm_url + "/stun", "GET", headers, "");
	ds_map_destroy(headers);

}

function scr_client_request_punch(){
	var headers = ds_map_create();
	headers[? "Content-Type"] = "application/json";
	http_request(global.mm_url + "/punch/" + join_code, "POST", headers, "{}");
	ds_map_destroy(headers);

}

function scr_client_start_punch(){
	var buff = buffer_create(8, buffer_grow, 1);
	buffer_write(buff, buffer_u8, 0);

	for (var i = 0; i < 10; i++) {
	    network_send_udp(client_socket, global.target_ip, global.target_port, buff, buffer_tell(buff));
	}

	buffer_delete(buff);

	// Now attempt real connection
	show_debug_message("ATTEMPTING TO CONNECT TO: " + string(global.target_ip) + ":" + string(global.target_port));
	network_connect(client_socket, global.target_ip, global.target_port);


}

function scr_client_start_punch_broadcast(){
	if (!variable_global_exists("udp_socket")) {
    global.udp_socket = network_create_socket_ext(network_socket_udp, UDP_SERVER_PORT);
	}

	var buff = buffer_create(8, buffer_grow, 1);
	buffer_write(buff, buffer_u8, 0);

	for (var i = 0; i < 10; i++) {
	    network_send_broadcast(global.udp_socket, UDP_SERVER_PORT, buff, buffer_tell(buff));
	}

	buffer_delete(buff);

	// Now attempt real connection
	//show_debug_message("ATTEMPTING TO CONNECT TO: " + string(global.target_ip) + ":" + string(TCP_SERVER_PORT));
	//network_connect(client_socket, global.target_ip, TCP_SERVER_PORT);


}

function scr_host_start_punch(){
	/// scr_host_start_punch()

	// Create UDP socket if needed
	if (!variable_global_exists("udp_socket")) {
	    global.udp_socket = network_create_socket(network_socket_udp);
		
	}

	// Create a tiny buffer to send
	var buff = buffer_create(8, buffer_grow, 1);
	buffer_write(buff, buffer_u8, 0);

	// Send a burst of packets to client public endpoint
	for (var i = 0; i < 10; i++) {
	    network_send_udp(global.udp_socket,
	        global.client_public_ip,
	        global.client_public_port,
	        buff,
	        buffer_tell(buff)
	    );
	}

	buffer_delete(buff);

}

function scr_host_shit_in_their_mouth(){
	/// look im frustrated ok! I deserve to name it this

	// Create UDP socket if needed
	//if (!variable_global_exists("udp_socket")) {
	//    global.udp_socket = network_create_socket(network_socket_udp);
		
	//}

	// Create a tiny buffer to send
	var buff = buffer_create(8, buffer_grow, 1);
	buffer_write(buff, buffer_u8, 0);

	// Send a burst of packets to client public endpoint
	for (var i = 0; i < 2; i++) {
	    var fart_boy = network_send_udp(o_net_host.server_socket,
	        global.invader_ip,
	        global.invader_port,
	        buff,
	        buffer_tell(buff)
	    );
		
		if (fart_boy < 0){
			audio_play_sound(dry_fart, 0, false);		
		}
	}

	buffer_delete(buff);

}

//UDP stuff (crossing fingers)
function send_request_udp_info(_socket) {
    var buff = buffer_create(8, buffer_grow, 1);
    buffer_write(buff, buffer_u8, PACKET_REQUEST_UDP_INFO);
    network_send_packet(_socket, buff, buffer_tell(buff));
    buffer_delete(buff);
}

function register_player(player_id) {
    global.players[player_id] = {
        udp_ip: "",
        udp_port: UDP_SERVER_PORT,
        last_seq: -1,
        connected: true
    };
}

function register_player_udp(player_id, ip, port) {
    var p = global.players[player_id];
    p.udp_ip = ip;
    p.udp_port = 40010;
}


function udp_write_header(buff, packet_type) {
    buffer_write(buff, buffer_u8, packet_type);
    buffer_write(buff, buffer_u16, global.udp_seq);
    buffer_write(buff, buffer_u8, player_id);

    global.udp_seq = (global.udp_seq + 1) mod 65536;
}

function udp_send_to_player(_player_id, _buff) {

    var p = global.players[_player_id];
    if (p == undefined || !p.connected) return;

    network_send_udp(
        global.udp_socket,
        p.udp_ip,
        UDP_SERVER_PORT,
        _buff,
        buffer_tell(_buff)
    );
}

function udp_broadcast_except(_sender_id, _buff) {

    for (var i = 0; i < array_length(global.players); i++) {
        if (i != _sender_id) {
            var p = global.players[i];
            if (p != undefined && p.connected) {
                network_send_udp(
                    global.udp_socket,
                    p.udp_ip,
                    UDP_SERVER_PORT,
                    _buff,
                    buffer_tell(_buff)
                );
            }
        }
    }
}


function send_movement_packet_udp(_player_id, _x, _y) {

    var buff = buffer_create(32, buffer_grow, 1);

    udp_write_header(buff, PACKET_MOVEMENT_UDP);

    buffer_write(buff, buffer_f32, _x);
    buffer_write(buff, buffer_f32, _y);

    udp_send_to_player(_player_id, buff);

    buffer_delete(buff);
}

function send_input_packet_udp(_player_id, inputs) {

    var buff = buffer_create(64, buffer_grow, 1);

    udp_write_header(buff, PACKET_INPUT_UDP);

    var keys = global.input_keys;

    for (var i = 0; i < array_length(keys); i++) {
        buffer_write(buff, buffer_u8, inputs[$ keys[i]]);
    }

    udp_send_to_player(_player_id, buff);

    buffer_delete(buff);
}

function send_velocity_packet_udp(_player_id, _hsp, _vsp) {

    var buff = buffer_create(32, buffer_grow, 1);

    udp_write_header(buff, PACKET_VELOCITY_UDP);

    buffer_write(buff, buffer_f32, _hsp);
    buffer_write(buff, buffer_f32, _vsp);

    udp_send_to_player(_player_id, buff);

    buffer_delete(buff);
}

function send_aim_packet_udp(_player_id, _aimx, _aimy, _nav) {

    var buff = buffer_create(32, buffer_grow, 1);

    udp_write_header(buff, PACKET_AIM_UDP);

    buffer_write(buff, buffer_f32, _aimx);
    buffer_write(buff, buffer_f32, _aimy);
    buffer_write(buff, buffer_f32, _nav);

    udp_send_to_player(_player_id, buff);

    buffer_delete(buff);
}