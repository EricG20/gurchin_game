show_debug_message("TCP SOCK = " + string(global.tcp_sock));
show_debug_message("ASYNC SOCK = " + string(async_load[? "id"]));

var type = async_load[? "type"];

if (type == network_type_connect) {
    var new_socket = async_load[? "socket"];
    ds_list_add(socket_list, new_socket);
    show_debug_message("You connected to the relay server lad");

    reserved_spot = scr_find_nearest_slot();
    global.players[reserved_spot] = reserved_spot;

    send_id_packet(new_socket, reserved_spot);
    send_player_appearance(
        new_socket,
        1,
        o_game.local_player.character_index,
        o_game.local_player.suit_color,
        o_game.local_player.haircut,
        o_game.local_player.player_id
    );

    with (o_game.local_player) {
        player_ready_status(new_socket);
    }
    with (o_routing_terminal) {
        set_mission(new_socket);
    }

    o_game.local_player.socket = new_socket;
}

if (type == network_type_data) {
	if (!(async_load[? "size"] > 0))exit;
	var raw = async_load[? "buffer"];
	var size = buffer_get_size(raw);

	// Make a clean buffer we control
	var buff = buffer_create(size, buffer_fixed, 1);
	buffer_copy(buff, 0, raw, 0, size);

	// Now buff is safe to parse
	buffer_seek(buff, buffer_seek_start, 0);


    while (buffer_tell(buff) + 2 <= size) {
        var packet_len = buffer_read(buff, buffer_u16);

        if (buffer_tell(buff) + packet_len > size) {
            break; // incomplete packet
        }

        var sender_slot = buffer_read(buff, buffer_u8);
        var packet_type = buffer_read(buff, buffer_u8);

        show_debug_message("HOST RECEIVED PACKET TYPE: " + string(packet_type));

        // ---- fake connect (1) ----
        if (packet_type == 1) {
            var new_socket = async_load[? "id"];
            ds_list_add(socket_list, new_socket);
            show_debug_message("A client connected!");

            reserved_spot = scr_find_nearest_slot();
            global.players[reserved_spot] = reserved_spot;

            send_id_packet(new_socket, reserved_spot);
            send_player_appearance(
                new_socket,
                1,
                o_game.local_player.character_index,
                o_game.local_player.suit_color,
                o_game.local_player.haircut,
                o_game.local_player.player_id
            );

            with (o_game.local_player) {
                player_ready_status(new_socket);
            }
            with (o_routing_terminal) {
                set_mission(new_socket);
            }

            o_game.local_player.socket = new_socket;
        }

        // ---- JOIN ACK ----
        if (packet_type == JOIN_ACK) {
            show_debug_message("TCP READY ACK RECEIVED");
            global.can_send_tcp = true;
        }

        // ---- 0: punch / ignore ----
        if (packet_type == 0) {
            if (async_load[? "id"] == global.udp_sock) {
                // ignore self
            }
        }

        // ---- 2: APPEARANCE FROM CLIENT ----
        if (packet_type == 2) {
            var char_index = buffer_read(buff, buffer_string);
            var suit_color = buffer_read(buff, buffer_u32);
            var hair       = buffer_read(buff, buffer_string);
            var p_id       = buffer_read(buff, buffer_u8);

            var p = instance_create_layer(950, 800, "Instances", o_player);
            p.control_type = cr.NET;
            p.socket       = async_load[? "id"];
            p.player_id    = reserved_spot;

            global.players[reserved_spot] = p.player_id;

            send_id_packet(p.socket, reserved_spot);

            for (var i = 0; i < ds_list_size(socket_list); i++) {
                player_list_check(ds_list_find_value(socket_list, i));
            }

            with (p) {
                scr_change_character(char_index, hair, suit_color);
            }
        }

        // ---- MOVEMENT ----
        if (packet_type == PACKET_MOVEMENT) {
            var px = buffer_read(buff, buffer_f32);
            var py = buffer_read(buff, buffer_f32);

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

        // ---- INPUT ----
        if (packet_type == PACKET_INPUT) {
            var sock       = async_load[? "id"];
            var p          = noone;
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

        // ---- VELOCITY ----
        if (packet_type == PACKET_VELOCITY) {
            var phsp = buffer_read(buff, buffer_f32);
            var pvsp = buffer_read(buff, buffer_f32);

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

        // ---- AIM ----
        if (packet_type == PACKET_AIM) {
            var paimx      = buffer_read(buff, buffer_f32);
            var paimy      = buffer_read(buff, buffer_f32);
            var pnav       = buffer_read(buff, buffer_f32);
            var _player_id = buffer_read(buff, buffer_u8);

            var sock = async_load[? "id"];
            show_debug_message("Aim packet from socket: " + string(sock));

            with (o_player) {
                show_debug_message("Player socket: " + string(socket));
                if (socket == sock && control_type == cr.NET) {
                    reticle.x = paimx;
                    reticle.y = paimy;
                    nav       = pnav;
                }
            }
        }

        // ---- BULLET ----
        if (packet_type == PACKET_BULLET) {
            var pbullet_num   = buffer_read(buff, buffer_u32);
            var phsp          = buffer_read(buff, buffer_f32);
            var pvsp          = buffer_read(buff, buffer_f32);
            var phoming       = buffer_read(buff, buffer_bool);
            var px            = buffer_read(buff, buffer_f32);
            var py            = buffer_read(buff, buffer_f32);
            var p_proj        = buffer_read(buff, buffer_u16);
            var p_proj_sprite = buffer_read(buff, buffer_u16);

            var sock = async_load[? "id"];
            show_debug_message("Bullet packet from socket: " + string(sock));

            var this_bullet = noone;

            with (p_proj) {
                if (sender.socket == sock &&
                    pbullet_num == bullet_number &&
                    sender.control_type == cr.NET) {
                    this_bullet = id;
                }
            }

            if (this_bullet == noone) {
                this_bullet = instance_create_layer(px, py, "Instances", p_proj);
                with (o_player) {
                    if (socket == sock && control_type == cr.NET) {
                        this_bullet.sender = id;
                        bullets_shot       = pbullet_num;
                    }
                }
            }

            with (this_bullet) {
                x      = px;
                y      = py;
                hsp    = phsp;
                vsp    = pvsp;
                homing = phoming;

                for (var i = 0; i < ds_list_size(other.socket_list); i++) {
                    if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]) {
                        send_bullet_packet(ds_list_find_value(other.socket_list, i), id);
                    }
                }
            }
        }

        // ---- AMMO ----
        if (packet_type == PACKET_AMMO) {
            var pammo = buffer_read(buff, buffer_f32);

            var sock = async_load[? "id"];
            show_debug_message("Aim packet from socket: " + string(sock));

            with (o_player) {
                show_debug_message("Player socket: " + string(socket));
                if (socket == sock && control_type == cr.NET) {
                    mygurn.ammo = pammo;
                }
            }
        }

        // ---- APPEARANCE REQUEST ----
        if (packet_type == PACKET_APPEARANCE_REQUEST) {
            var p_id = buffer_read(buff, buffer_u8);

            var sock = async_load[? "id"];
            show_debug_message("Appearance request packet from socket: " + string(sock));

            var dude = noone;
            with (o_player) {
                if (player_id == p_id) {
                    dude = id;
                }
            }

            if (dude != noone) {
                send_player_appearance(
                    sock,
                    1,
                    dude.character_index,
                    dude.suit_color,
                    dude.haircut,
                    dude.player_id
                );
                with (dude) {
                    player_ready_status(sock);
                }
            }
        }

        // ---- PLAYER READY ----
        if (packet_type == PACKET_PLAYER_READY) {
            var p_ready = buffer_read(buff, buffer_bool);
            var p_id    = buffer_read(buff, buffer_u8);

            with (o_player) {
                if (player_id == p_id && control_type == cr.NET) {
                    ready = p_ready;

                    for (var i = 0; i < ds_list_size(other.socket_list); i++) {
                        if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]) {
                            player_ready_status(ds_list_find_value(other.socket_list, i));
                        }
                    }
                }
            }
        }

        // ---- COMMUNICATION ----
        if (packet_type == PACKET_COMMUNICATION) {
            var p_dialogue   = buffer_read(buff, buffer_string);
            var p_mouth      = buffer_read(buff, buffer_string);
            var p_expression = buffer_read(buff, buffer_string);
            var p_id         = buffer_read(buff, buffer_u8);

            with (o_player) {
                if (player_id == p_id && control_type == cr.NET) {
                    scr_make_zorb_say(p_dialogue, p_expression, p_mouth);

                    for (var i = 0; i < ds_list_size(other.socket_list); i++) {
                        if (ds_list_find_value(other.socket_list, i) != async_load[? "id"]) {
                            send_character_message_packet(ds_list_find_value(other.socket_list, i));
                        }
                    }
                }
            }
        }

        // loop continues; we’ve consumed exactly packet_len bytes
    }
	buffer_delete(buff);
}

// DISCONNECT
if (type == network_type_disconnect) {
    ds_list_delete(socket_list, ds_list_find_index(socket_list, async_load[? "socket"]));

    var p_player = noone;

    with (o_player) {
        if (async_load[? "socket"] == socket && control_type == cr.NET) {
            p_player = id;
        }
    }

    if (instance_exists(p_player)) {
        for (var i = 0; i < ds_list_size(socket_list); i++) {
            delete_player(ds_list_find_value(socket_list, i), p_player.player_id);
        }
        scr_delete_player(p_player);
    }
}
