/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C24F622
/// @DnDArgument : "code" "var type = async_load[? "type"];$(13_10)$(13_10)if (type == network_type_connect) {$(13_10)	var new_socket = async_load[? "socket"];$(13_10)	ds_list_add(socket_list,new_socket);$(13_10)    show_debug_message("A client connected!");$(13_10)	reserved_spot = scr_find_nearest_slot();$(13_10)	global.players[reserved_spot] = {$(13_10)        udp_ip: "",$(13_10)        udp_port: 0,$(13_10)        last_seq: -1,$(13_10)        connected: true$(13_10)    };$(13_10)	// Create a player for this client$(13_10)    //var p = instance_create_layer(950, 800, "Instances", o_player);$(13_10)	send_id_packet(new_socket, reserved_spot);$(13_10)	send_player_appearance(new_socket, o_game.local_player.character_index, o_game.local_player.suit_color, o_game.local_player.haircut, o_game.local_player.player_id);$(13_10)	with (o_game.local_player){$(13_10)		player_ready_status(new_socket);$(13_10)	}$(13_10)	with (o_routing_terminal){$(13_10)	set_mission(new_socket);$(13_10)	}$(13_10)	o_game.local_player.socket = new_socket;$(13_10)	$(13_10)    //p.socket = new_socket;$(13_10)$(13_10)    // Tell the client to spawn their copy$(13_10)    //send_spawn_packet(new_socket, p.id);$(13_10)}$(13_10)$(13_10)if (type == network_type_data) {$(13_10)    var buff = async_load[? "buffer"];$(13_10)    var packet_type  = buffer_read(buff, buffer_u8);$(13_10)    //show_debug_message("Received: " + string(msg));$(13_10)	show_debug_message("HOST RECEIVED PACKET TYPE: " + string(packet_type));$(13_10)$(13_10)	$(13_10)	if (packet_type == 2) {$(13_10)    var char_index = buffer_read(buff, buffer_string);$(13_10)    var suit_color = buffer_read(buff, buffer_u32);$(13_10)    var hair       = buffer_read(buff, buffer_string);$(13_10)	var p_id	   = buffer_read(buff, buffer_u8);$(13_10)$(13_10)    // Spawn the client’s player on the host$(13_10)    var p = instance_create_layer(950, 800, "Instances", o_player);$(13_10)	p.control_type = cr.NET;$(13_10)	p.socket = async_load[? "id"];;$(13_10)	//index++;$(13_10)	p.player_id = reserved_spot;$(13_10)	global.players[reserved_spot] = p.player_id;$(13_10)	send_id_packet(p.socket, reserved_spot);$(13_10)	//player_list_check(p.socket);$(13_10)	for (var i = 0; i < ds_list_size(socket_list); i++;){$(13_10)		player_list_check(ds_list_find_value(socket_list, i));$(13_10)	}$(13_10)	with (p){$(13_10)			scr_change_character(char_index, hair, suit_color);$(13_10)		}$(13_10)		$(13_10)	}$(13_10)	if (packet_type == PACKET_MOVEMENT) {$(13_10)    var px = buffer_read(buff, buffer_f32);$(13_10)    var py = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Movement packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            x = px;$(13_10)            y = py;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	$(13_10)	if (packet_type == PACKET_INPUT) {$(13_10)$(13_10)    var sock = async_load[? "id"]; // the client who sent it$(13_10)$(13_10)    // Find the correct remote player$(13_10)    var p = noone;$(13_10)	var _player_id = buffer_read(buff, buffer_u8);$(13_10)    with (o_player) {$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            p = id;$(13_10)        }$(13_10)    }$(13_10)	show_debug_message(string(p));$(13_10)    if (p != noone) {$(13_10)$(13_10)        var keys = global.input_keys;$(13_10)$(13_10)        for (var i = 0; i < array_length(keys); i++) {$(13_10)            var key = keys[i];$(13_10)			var val = buffer_read(buff, buffer_u8);$(13_10)            p.inputs[$ key] = val;$(13_10)			$(13_10)			show_debug_message(key + " = " + string(val));$(13_10)        }$(13_10)		show_debug_message("-----------------------------------------------");$(13_10)    }$(13_10)}$(13_10)if (packet_type == PACKET_VELOCITY) {$(13_10)    var phsp = buffer_read(buff, buffer_f32);$(13_10)    var pvsp = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Velocity packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            hsp = phsp;$(13_10)            vsp = pvsp;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_AIM) {$(13_10)    var paimx = buffer_read(buff, buffer_f32);$(13_10)    var paimy = buffer_read(buff, buffer_f32);$(13_10)	var pnav = buffer_read(buff, buffer_f32);$(13_10)	var _player_id = buffer_read(buff, buffer_u8);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Aim packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            reticle.x = paimx;$(13_10)            reticle.y = paimy;$(13_10)			nav = pnav;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_BULLET) {$(13_10)    var pbullet_num = buffer_read(buff, buffer_u32);$(13_10)    var phsp = buffer_read(buff, buffer_f32);$(13_10)	var pvsp = buffer_read(buff, buffer_f32);$(13_10)	var phoming = buffer_read(buff, buffer_bool);$(13_10)	var px = buffer_read(buff, buffer_f32);$(13_10)	var py = buffer_read(buff, buffer_f32);$(13_10)	var p_proj = buffer_read(buff, buffer_u16);$(13_10)	var p_proj_sprite = buffer_read(buff, buffer_u16);$(13_10)$(13_10)    // Find the remote bullet associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Bullet packet from socket: " + string(sock));$(13_10)	$(13_10)	var this_bullet = noone;$(13_10)	with (p_proj){$(13_10)	if (sender.socket == sock && pbullet_num == bullet_number && sender.control_type == cr.NET){$(13_10)		this_bullet = id;$(13_10)	}}$(13_10)	if (this_bullet == noone){$(13_10)	this_bullet = instance_create_layer(px, py, "Instances", p_proj);$(13_10)	with (o_player) {$(13_10)		//show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            this_bullet.sender = id;$(13_10)			bullets_shot = pbullet_num;$(13_10)        }$(13_10)	}$(13_10)	}$(13_10)    with (this_bullet) {$(13_10)            x = px;$(13_10)            y = py;$(13_10)			hsp = phsp;$(13_10)			vsp = pvsp;$(13_10)			homing = phoming;$(13_10)			for (var i = 0; i < ds_list_size(other.socket_list); i++;){$(13_10)					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){$(13_10)						send_bullet_packet(ds_list_find_value(other.socket_list, i), id);$(13_10)					}$(13_10)				}$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_AMMO) {$(13_10)    var pammo = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Aim packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            mygurn.ammo = pammo;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_APPEARANCE_REQUEST) {$(13_10)    var p_id = buffer_read(buff, buffer_u8);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Appearance request packet from socket: " + string(sock));$(13_10)	var dude = noone;$(13_10)	with(o_player){$(13_10)		if (player_id == p_id){$(13_10)			dude = id;$(13_10)		}$(13_10)	}$(13_10)	if (dude != noone){$(13_10)		send_player_appearance(sock, dude.character_index, dude.suit_color, dude.haircut, dude.player_id); $(13_10)		with (dude){$(13_10)			player_ready_status(sock);$(13_10)		}$(13_10)	}$(13_10)$(13_10)    }$(13_10)	if (packet_type == PACKET_PLAYER_READY){$(13_10)	$(13_10)		var p_ready = buffer_read(buff, buffer_bool);$(13_10)		var p_id = buffer_read(buff, buffer_u8);$(13_10)		$(13_10)		with (o_player){$(13_10)			if (player_id == p_id && control_type == cr.NET) {$(13_10)				ready = p_ready;$(13_10)				for (var i = 0; i < ds_list_size(other.socket_list); i++;){$(13_10)					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){$(13_10)						player_ready_status(ds_list_find_value(other.socket_list, i));$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	$(13_10)	}$(13_10)	if (packet_type == PACKET_COMMUNICATION){$(13_10)	$(13_10)		var p_dialogue = buffer_read(buff, buffer_string);$(13_10)		var p_mouth = buffer_read(buff, buffer_string);$(13_10)		var p_expression = buffer_read(buff, buffer_string);$(13_10)		var p_id = buffer_read(buff, buffer_u8);$(13_10)		$(13_10)		with (o_player){$(13_10)			if (player_id == p_id && control_type == cr.NET) {$(13_10)				scr_make_zorb_say(p_dialogue, p_expression, p_mouth);$(13_10)				for (var i = 0; i < ds_list_size(other.socket_list); i++;){$(13_10)					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){$(13_10)						send_character_message_packet(ds_list_find_value(other.socket_list, i));$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)		}$(13_10)	$(13_10)	}$(13_10)}$(13_10)//if (async_load[? "type"] == network_type_data) {$(13_10)$(13_10)//    var buff = async_load[? "buffer"];$(13_10)$(13_10)//    // --- Read header ---$(13_10)//   // var packet_type = buffer_read(buff, buffer_u8);$(13_10)//    //var seq         = buffer_read(buff, buffer_u16);$(13_10)//    //var sender_id   = buffer_read(buff, buffer_u8);$(13_10)$(13_10)//    // --- Validate sender ---$(13_10)//    var p = global.players[sender_id];$(13_10)//    if (p == undefined || !p.connected) exit;$(13_10)$(13_10)//    // --- Drop out-of-order packets ---$(13_10)//    if (seq <= p.last_seq) exit;$(13_10)//    p.last_seq = seq;$(13_10)$(13_10)//    // --- Parse packet body ---$(13_10)//    switch (packet_type) {$(13_10)$(13_10)//        case PACKET_MOVEMENT_UDP:$(13_10)//            var px = buffer_read(buff, buffer_f32);$(13_10)//            var py = buffer_read(buff, buffer_f32);$(13_10)$(13_10)//            with (o_player) {$(13_10)//                if (player_id == sender_id && control_type == cr.NET) {$(13_10)//                    x = px;$(13_10)//                    y = py;$(13_10)//                }$(13_10)//            }$(13_10)//        break;$(13_10)$(13_10)//        case PACKET_INPUT_UDP:$(13_10)//            var keys = global.input_keys;$(13_10)$(13_10)//            with (o_player) {$(13_10)//                if (player_id == sender_id && control_type == cr.NET) {$(13_10)//                    for (var i = 0; i < array_length(keys); i++) {$(13_10)//                        inputs[$ keys[i]] = buffer_read(buff, buffer_u8);$(13_10)//                    }$(13_10)//                }$(13_10)//            }$(13_10)//        break;$(13_10)$(13_10)//        case PACKET_VELOCITY_UDP:$(13_10)//            var phsp = buffer_read(buff, buffer_f32);$(13_10)//            var pvsp = buffer_read(buff, buffer_f32);$(13_10)$(13_10)//            with (o_player) {$(13_10)//                if (player_id == sender_id && control_type == cr.NET) {$(13_10)//                    hsp = phsp;$(13_10)//                    vsp = pvsp;$(13_10)//                }$(13_10)//            }$(13_10)//        break;$(13_10)$(13_10)//        case PACKET_AIM_UDP:$(13_10)//            var paimx = buffer_read(buff, buffer_f32);$(13_10)//            var paimy = buffer_read(buff, buffer_f32);$(13_10)//            var pnav  = buffer_read(buff, buffer_f32);$(13_10)$(13_10)//            with (o_player) {$(13_10)//                if (player_id == sender_id && control_type == cr.NET) {$(13_10)//                    reticle.x = paimx;$(13_10)//                    reticle.y = paimy;$(13_10)//                    nav = pnav;$(13_10)//                }$(13_10)//            }$(13_10)//        break;$(13_10)//    }$(13_10)$(13_10)//    // --- Forward packet to all other players ---$(13_10)//    udp_broadcast_except(sender_id, buff);$(13_10)//}$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)$(13_10)if (type == network_type_disconnect){$(13_10)	ds_list_delete(socket_list, ds_list_find_index(socket_list, async_load[? "socket"]));$(13_10)	var p_player;$(13_10)	$(13_10)	with(o_player){$(13_10)		if(async_load[? "socket"] == socket && control_type == cr.NET) p_player = id;$(13_10)	}$(13_10)	for (var i = 0; i < ds_list_size(socket_list); i++){$(13_10)		delete_player(ds_list_find_value(socket_list, i), p_player.player_id);$(13_10)	}$(13_10)	scr_delete_player(p_player);$(13_10)}$(13_10)"
var type = async_load[? "type"];

if (type == network_type_connect) {
	var new_socket = async_load[? "socket"];
	ds_list_add(socket_list,new_socket);
    show_debug_message("A client connected!");
	reserved_spot = scr_find_nearest_slot();
	global.players[reserved_spot] = {
        udp_ip: "",
        udp_port: 0,
        last_seq: -1,
        connected: true
    };
	// Create a player for this client
    //var p = instance_create_layer(950, 800, "Instances", o_player);
	send_id_packet(new_socket, reserved_spot);
	send_player_appearance(new_socket, o_game.local_player.character_index, o_game.local_player.suit_color, o_game.local_player.haircut, o_game.local_player.player_id);
	with (o_game.local_player){
		player_ready_status(new_socket);
	}
	with (o_routing_terminal){
	set_mission(new_socket);
	}
	o_game.local_player.socket = new_socket;
	
    //p.socket = new_socket;

    // Tell the client to spawn their copy
    //send_spawn_packet(new_socket, p.id);
}

if (type == network_type_data) {
    var buff = async_load[? "buffer"];
    var packet_type  = buffer_read(buff, buffer_u8);
    //show_debug_message("Received: " + string(msg));
	show_debug_message("HOST RECEIVED PACKET TYPE: " + string(packet_type));

	
	if (packet_type == 2) {
    var char_index = buffer_read(buff, buffer_string);
    var suit_color = buffer_read(buff, buffer_u32);
    var hair       = buffer_read(buff, buffer_string);
	var p_id	   = buffer_read(buff, buffer_u8);

    // Spawn the client’s player on the host
    var p = instance_create_layer(950, 800, "Instances", o_player);
	p.control_type = cr.NET;
	p.socket = async_load[? "id"];;
	//index++;
	p.player_id = reserved_spot;
	global.players[reserved_spot] = p.player_id;
	send_id_packet(p.socket, reserved_spot);
	//player_list_check(p.socket);
	for (var i = 0; i < ds_list_size(socket_list); i++;){
		player_list_check(ds_list_find_value(socket_list, i));
	}
	with (p){
			scr_change_character(char_index, hair, suit_color);
		}
		
	}
	if (packet_type == PACKET_MOVEMENT) {
    var px = buffer_read(buff, buffer_f32);
    var py = buffer_read(buff, buffer_f32);

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Movement packet from socket: " + string(sock));

    with (o_player) {
		show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            x = px;
            y = py;
        }
    }
	}
	
	if (packet_type == PACKET_INPUT) {

    var sock = async_load[? "id"]; // the client who sent it

    // Find the correct remote player
    var p = noone;
	var _player_id = buffer_read(buff, buffer_u8);
    with (o_player) {
        if (socket == sock && control_type == cr.NET) {
            p = id;
        }
    }
	show_debug_message(string(p));
    if (p != noone) {

        var keys = global.input_keys;

        for (var i = 0; i < array_length(keys); i++) {
            var key = keys[i];
			var val = buffer_read(buff, buffer_u8);
            p.inputs[$ key] = val;
			
			show_debug_message(key + " = " + string(val));
        }
		show_debug_message("-----------------------------------------------");
    }
}
if (packet_type == PACKET_VELOCITY) {
    var phsp = buffer_read(buff, buffer_f32);
    var pvsp = buffer_read(buff, buffer_f32);

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Velocity packet from socket: " + string(sock));

    with (o_player) {
		show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            hsp = phsp;
            vsp = pvsp;
        }
    }
	}
	if (packet_type == PACKET_AIM) {
    var paimx = buffer_read(buff, buffer_f32);
    var paimy = buffer_read(buff, buffer_f32);
	var pnav = buffer_read(buff, buffer_f32);
	var _player_id = buffer_read(buff, buffer_u8);

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Aim packet from socket: " + string(sock));

    with (o_player) {
		show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            reticle.x = paimx;
            reticle.y = paimy;
			nav = pnav;
        }
    }
	}
	if (packet_type == PACKET_BULLET) {
    var pbullet_num = buffer_read(buff, buffer_u32);
    var phsp = buffer_read(buff, buffer_f32);
	var pvsp = buffer_read(buff, buffer_f32);
	var phoming = buffer_read(buff, buffer_bool);
	var px = buffer_read(buff, buffer_f32);
	var py = buffer_read(buff, buffer_f32);
	var p_proj = buffer_read(buff, buffer_u16);
	var p_proj_sprite = buffer_read(buff, buffer_u16);

    // Find the remote bullet associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Bullet packet from socket: " + string(sock));
	
	var this_bullet = noone;
	with (p_proj){
	if (sender.socket == sock && pbullet_num == bullet_number && sender.control_type == cr.NET){
		this_bullet = id;
	}}
	if (this_bullet == noone){
	this_bullet = instance_create_layer(px, py, "Instances", p_proj);
	with (o_player) {
		//show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            this_bullet.sender = id;
			bullets_shot = pbullet_num;
        }
	}
	}
    with (this_bullet) {
            x = px;
            y = py;
			hsp = phsp;
			vsp = pvsp;
			homing = phoming;
			for (var i = 0; i < ds_list_size(other.socket_list); i++;){
					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){
						send_bullet_packet(ds_list_find_value(other.socket_list, i), id);
					}
				}
    }
	}
	if (packet_type == PACKET_AMMO) {
    var pammo = buffer_read(buff, buffer_f32);

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Aim packet from socket: " + string(sock));

    with (o_player) {
		show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            mygurn.ammo = pammo;
        }
    }
	}
	if (packet_type == PACKET_APPEARANCE_REQUEST) {
    var p_id = buffer_read(buff, buffer_u8);

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Appearance request packet from socket: " + string(sock));
	var dude = noone;
	with(o_player){
		if (player_id == p_id){
			dude = id;
		}
	}
	if (dude != noone){
		send_player_appearance(sock, dude.character_index, dude.suit_color, dude.haircut, dude.player_id); 
		with (dude){
			player_ready_status(sock);
		}
	}

    }
	if (packet_type == PACKET_PLAYER_READY){
	
		var p_ready = buffer_read(buff, buffer_bool);
		var p_id = buffer_read(buff, buffer_u8);
		
		with (o_player){
			if (player_id == p_id && control_type == cr.NET) {
				ready = p_ready;
				for (var i = 0; i < ds_list_size(other.socket_list); i++;){
					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){
						player_ready_status(ds_list_find_value(other.socket_list, i));
					}
				}
			}
		}
	
	}
	if (packet_type == PACKET_COMMUNICATION){
	
		var p_dialogue = buffer_read(buff, buffer_string);
		var p_mouth = buffer_read(buff, buffer_string);
		var p_expression = buffer_read(buff, buffer_string);
		var p_id = buffer_read(buff, buffer_u8);
		
		with (o_player){
			if (player_id == p_id && control_type == cr.NET) {
				scr_make_zorb_say(p_dialogue, p_expression, p_mouth);
				for (var i = 0; i < ds_list_size(other.socket_list); i++;){
					if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]){
						send_character_message_packet(ds_list_find_value(other.socket_list, i));
					}
				}
			}
		}
	
	}
}
//if (async_load[? "type"] == network_type_data) {

//    var buff = async_load[? "buffer"];

//    // --- Read header ---
//   // var packet_type = buffer_read(buff, buffer_u8);
//    //var seq         = buffer_read(buff, buffer_u16);
//    //var sender_id   = buffer_read(buff, buffer_u8);

//    // --- Validate sender ---
//    var p = global.players[sender_id];
//    if (p == undefined || !p.connected) exit;

//    // --- Drop out-of-order packets ---
//    if (seq <= p.last_seq) exit;
//    p.last_seq = seq;

//    // --- Parse packet body ---
//    switch (packet_type) {

//        case PACKET_MOVEMENT_UDP:
//            var px = buffer_read(buff, buffer_f32);
//            var py = buffer_read(buff, buffer_f32);

//            with (o_player) {
//                if (player_id == sender_id && control_type == cr.NET) {
//                    x = px;
//                    y = py;
//                }
//            }
//        break;

//        case PACKET_INPUT_UDP:
//            var keys = global.input_keys;

//            with (o_player) {
//                if (player_id == sender_id && control_type == cr.NET) {
//                    for (var i = 0; i < array_length(keys); i++) {
//                        inputs[$ keys[i]] = buffer_read(buff, buffer_u8);
//                    }
//                }
//            }
//        break;

//        case PACKET_VELOCITY_UDP:
//            var phsp = buffer_read(buff, buffer_f32);
//            var pvsp = buffer_read(buff, buffer_f32);

//            with (o_player) {
//                if (player_id == sender_id && control_type == cr.NET) {
//                    hsp = phsp;
//                    vsp = pvsp;
//                }
//            }
//        break;

//        case PACKET_AIM_UDP:
//            var paimx = buffer_read(buff, buffer_f32);
//            var paimy = buffer_read(buff, buffer_f32);
//            var pnav  = buffer_read(buff, buffer_f32);

//            with (o_player) {
//                if (player_id == sender_id && control_type == cr.NET) {
//                    reticle.x = paimx;
//                    reticle.y = paimy;
//                    nav = pnav;
//                }
//            }
//        break;
//    }

//    // --- Forward packet to all other players ---
//    udp_broadcast_except(sender_id, buff);
//}





if (type == network_type_disconnect){
	ds_list_delete(socket_list, ds_list_find_index(socket_list, async_load[? "socket"]));
	var p_player;
	
	with(o_player){
		if(async_load[? "socket"] == socket && control_type == cr.NET) p_player = id;
	}
	for (var i = 0; i < ds_list_size(socket_list); i++){
		delete_player(ds_list_find_value(socket_list, i), p_player.player_id);
	}
	scr_delete_player(p_player);
}