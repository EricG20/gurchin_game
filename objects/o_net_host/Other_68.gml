/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C24F622
/// @DnDArgument : "code" "var type = async_load[? "type"];$(13_10)$(13_10)if (type == network_type_connect) {$(13_10)	var new_socket = async_load[? "socket"];$(13_10)	ds_list_add(socket_list,new_socket);$(13_10)    show_debug_message("A client connected!");$(13_10)	// Create a player for this client$(13_10)    //var p = instance_create_layer(950, 800, "Instances", o_player);$(13_10)	send_player_appearance(new_socket, o_game.local_player.character_index, o_game.local_player.suit_color, o_game.local_player.haircut);$(13_10)	o_game.local_player.socket = new_socket;$(13_10)    //p.socket = new_socket;$(13_10)$(13_10)    // Tell the client to spawn their copy$(13_10)    //send_spawn_packet(new_socket, p.id);$(13_10)}$(13_10)$(13_10)if (type == network_type_data) {$(13_10)    var buff = async_load[? "buffer"];$(13_10)    var packet_type  = buffer_read(buff, buffer_u8);$(13_10)    //show_debug_message("Received: " + string(msg));$(13_10)	show_debug_message("HOST RECEIVED PACKET TYPE: " + string(packet_type));$(13_10)$(13_10)	$(13_10)	if (packet_type == 2) {$(13_10)    var char_index = buffer_read(buff, buffer_string);$(13_10)    var suit_color = buffer_read(buff, buffer_u32);$(13_10)    var hair       = buffer_read(buff, buffer_string);$(13_10)$(13_10)    // Spawn the client’s player on the host$(13_10)    var p = instance_create_layer(950, 800, "Instances", o_player);$(13_10)	p.control_type = cr.NET;$(13_10)	p.socket = ds_list_find_value(socket_list,index);$(13_10)	index++;$(13_10)	with (p){$(13_10)			scr_change_character(char_index, hair, suit_color);$(13_10)		}$(13_10)	}$(13_10)	if (packet_type == PACKET_MOVEMENT) {$(13_10)    var px = buffer_read(buff, buffer_f32);$(13_10)    var py = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Movement packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            x = px;$(13_10)            y = py;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	$(13_10)	if (packet_type == PACKET_INPUT) {$(13_10)$(13_10)    var sock = async_load[? "id"]; // the client who sent it$(13_10)$(13_10)    // Find the correct remote player$(13_10)    var p = noone;$(13_10)    with (o_player) {$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            p = id;$(13_10)        }$(13_10)    }$(13_10)	show_debug_message(string(p));$(13_10)    if (p != noone) {$(13_10)$(13_10)        var keys = global.input_keys;$(13_10)$(13_10)        for (var i = 0; i < array_length(keys); i++) {$(13_10)            var key = keys[i];$(13_10)			var val = buffer_read(buff, buffer_u8);$(13_10)            p.inputs[$ key] = val;$(13_10)			$(13_10)			show_debug_message(key + " = " + string(val));$(13_10)        }$(13_10)		show_debug_message("-----------------------------------------------");$(13_10)    }$(13_10)}$(13_10)if (packet_type == PACKET_VELOCITY) {$(13_10)    var phsp = buffer_read(buff, buffer_f32);$(13_10)    var pvsp = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Movement packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            hsp = phsp;$(13_10)            vsp = pvsp;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_AIM) {$(13_10)    var paimx = buffer_read(buff, buffer_f32);$(13_10)    var paimy = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Movement packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            reticle.x = paimx;$(13_10)            reticle.y = paimy;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)}$(13_10)$(13_10)"
var type = async_load[? "type"];

if (type == network_type_connect) {
	var new_socket = async_load[? "socket"];
	ds_list_add(socket_list,new_socket);
    show_debug_message("A client connected!");
	// Create a player for this client
    //var p = instance_create_layer(950, 800, "Instances", o_player);
	send_player_appearance(new_socket, o_game.local_player.character_index, o_game.local_player.suit_color, o_game.local_player.haircut);
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

    // Spawn the client’s player on the host
    var p = instance_create_layer(950, 800, "Instances", o_player);
	p.control_type = cr.NET;
	p.socket = ds_list_find_value(socket_list,index);
	index++;
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
	show_debug_message("Movement packet from socket: " + string(sock));

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

    // Find the remote player associated with this socket
    var sock = async_load[? "id"];
	show_debug_message("Movement packet from socket: " + string(sock));

    with (o_player) {
		show_debug_message("Player socket: " + string(socket));
        if (socket == sock && control_type == cr.NET) {
            reticle.x = paimx;
            reticle.y = paimy;
        }
    }
	}
}