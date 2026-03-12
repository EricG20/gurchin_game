/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 71BD5852
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var type = async_load[? "type"];$(13_10)$(13_10)if (type == network_type_connect) {$(13_10)    show_debug_message("Connected to host!");$(13_10)	//var my_character_index = o_game.local_player.character_index;$(13_10)	//var my_suit_color = o_game.local_player.suit_color;$(13_10)	//var my_hair = o_game.local_player.haircut;$(13_10)		$(13_10)	//send_player_appearance(socket, my_character_index, my_suit_color, my_hair);$(13_10)$(13_10)}$(13_10)$(13_10)if (type == network_type_data) {$(13_10)    var buff = async_load[? "buffer"];$(13_10)    var packet_type = buffer_read(buff, buffer_u8);$(13_10)	//show_debug_message("Client received: " + string(msg));$(13_10)$(13_10)    if (packet_type == 2) {$(13_10)        var char_index = buffer_read(buff, buffer_string);$(13_10)        var suit_color = buffer_read(buff, buffer_u32);$(13_10)        var hair       = buffer_read(buff, buffer_string);$(13_10)		$(13_10)		var my_character_index = o_game.local_player.character_index;$(13_10)		var my_suit_color = o_game.local_player.suit_color;$(13_10)		var my_hair = o_game.local_player.haircut;$(13_10)$(13_10)        // Spawn remote player$(13_10)        var p = instance_create_layer(950, 800, "Instances", o_player);$(13_10)        p.control_type = cr.NET;$(13_10)$(13_10)        // Apply appearance$(13_10)        //p.character_index = char_index;$(13_10)        //p.suit_color      = suit_color;$(13_10)        //p.hair            = hair;$(13_10)$(13_10)		with (p){$(13_10)			scr_change_character(char_index, hair, suit_color);$(13_10)		}$(13_10)		show_debug_message("CLIENT SENDING APPEARANCE");$(13_10)		send_player_appearance(client_socket, my_character_index, my_suit_color, my_hair);$(13_10)		o_game.local_player.socket = client_socket;$(13_10)    }$(13_10)	if (packet_type == PACKET_MOVEMENT) {$(13_10)    var px = buffer_read(buff, buffer_f32);$(13_10)    var py = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    with (o_player) {$(13_10)        if (control_type == cr.NET) {$(13_10)            x = px;$(13_10)            y = py;$(13_10)        }$(13_10)    }$(13_10)}//end of movement packet read$(13_10)	if (packet_type == PACKET_INPUT) {$(13_10)$(13_10)    var sock = async_load[? "id"]; // the client who sent it$(13_10)$(13_10)    // Find the correct remote player$(13_10)    var p = noone;$(13_10)    with (o_player) {$(13_10)        if (control_type == cr.NET) {$(13_10)            p = id;$(13_10)        }$(13_10)    }$(13_10)	show_debug_message(string(p));$(13_10)    if (p != noone) {$(13_10)$(13_10)        var keys = global.input_keys;$(13_10)$(13_10)        for (var i = 0; i < array_length(keys); i++) {$(13_10)            var key = keys[i];$(13_10)			var val = buffer_read(buff, buffer_u8);$(13_10)            p.inputs[$ key] = val;$(13_10)			$(13_10)			show_debug_message(key + " = " + string(val));$(13_10)        }$(13_10)		show_debug_message("-----------------------------------------------");$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_VELOCITY) {$(13_10)    var phsp = buffer_read(buff, buffer_f32);$(13_10)    var pvsp = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Velocity packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (control_type == cr.NET) {$(13_10)            hsp = phsp;$(13_10)            vsp = pvsp;$(13_10)        }$(13_10)    }$(13_10)	}$(13_10)	if (packet_type == PACKET_BULLET) {$(13_10)    var pbullet_num = buffer_read(buff, buffer_u32);$(13_10)    var phsp = buffer_read(buff, buffer_f32);$(13_10)	var pvsp = buffer_read(buff, buffer_f32);$(13_10)	var phoming = buffer_read(buff, buffer_bool);$(13_10)	var px = buffer_read(buff, buffer_f32);$(13_10)	var py = buffer_read(buff, buffer_f32);$(13_10)	var p_proj = buffer_read(buff, buffer_u16);$(13_10)$(13_10)    // Find the remote bullet associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Bullet packet from socket: " + string(sock));$(13_10)	$(13_10)	var this_bullet = noone;$(13_10)	with (p_proj){$(13_10)	if (sender.socket == sock && pbullet_num == bullet_number && sender.control_type == cr.NET){$(13_10)		this_bullet = id;$(13_10)	}}$(13_10)	if (this_bullet == noone){$(13_10)	this_bullet = instance_create_layer(px, py, "Instances", p_proj);$(13_10)	with (o_player) {$(13_10)		//show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            this_bullet.sender = id;$(13_10)			bullets_shot = pbullet_num;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)    with (this_bullet) {$(13_10)            x = px;$(13_10)            y = py;$(13_10)			hsp = phsp;$(13_10)			vsp = pvsp;$(13_10)			homing = phoming;$(13_10)		}$(13_10)	}$(13_10)	if (packet_type == PACKET_AMMO) {$(13_10)    var pammo = buffer_read(buff, buffer_f32);$(13_10)$(13_10)    // Find the remote player associated with this socket$(13_10)    var sock = async_load[? "id"];$(13_10)	show_debug_message("Aim packet from socket: " + string(sock));$(13_10)$(13_10)    with (o_player) {$(13_10)		show_debug_message("Player socket: " + string(socket));$(13_10)        if (socket == sock && control_type == cr.NET) {$(13_10)            mygurn.ammo = pammo;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	if (packet_type == PACKET_ENEMYSPAWN) {$(13_10)    var px = buffer_read(buff, buffer_f32);$(13_10)	var py = buffer_read(buff, buffer_f32);$(13_10)	var pobj = buffer_read(buff, buffer_u16);$(13_10)	var php = buffer_read(buff, buffer_f32);$(13_10)	var pnum = buffer_read(buff, buffer_u32);$(13_10)	var pstate = buffer_read(buff, buffer_u8);$(13_10)	var pcooldown = buffer_read(buff, buffer_f32);$(13_10)	var pfacing = buffer_read(buff, buffer_s8);$(13_10)$(13_10)    // This is a client exclusive packet, so there is no need to identify the packet sender.$(13_10)	var this_enemy = instance_create_layer(px, py, "Instances", pobj);$(13_10)    with (this_enemy) {$(13_10)        hp = php;$(13_10)		enemy_num = pnum;$(13_10)		state = pstate;$(13_10)		cooldown = pcooldown;$(13_10)		facing = pfacing;$(13_10)		}$(13_10)	}$(13_10)	$(13_10)	if (packet_type == PACKET_ENEMY_CORRECTION) {$(13_10)    var px = buffer_read(buff, buffer_f32);$(13_10)	var py = buffer_read(buff, buffer_f32);$(13_10)	var pobj = buffer_read(buff, buffer_u16);$(13_10)	var php = buffer_read(buff, buffer_f32);$(13_10)	var pnum = buffer_read(buff, buffer_u32);$(13_10)	var pstate = buffer_read(buff, buffer_u8);$(13_10)	var pcooldown = buffer_read(buff, buffer_f32);$(13_10)	var pfacing = buffer_read(buff, buffer_s8);$(13_10)$(13_10)    // This is a client exclusive packet, so there is no need to identify the packet sender.$(13_10)    with (pobj) {$(13_10)		if (enemy_num == pnum){$(13_10)		x = px;$(13_10)		y = py;$(13_10)        hp = php;$(13_10)		state = pstate;$(13_10)		cooldown = pcooldown;$(13_10)		facing = pfacing;$(13_10)			}$(13_10)		}$(13_10)	}$(13_10)	if (packet_type == PACKET_GAME_LOGIC) {$(13_10)    var p_pylon_incr = buffer_read(buff, buffer_f32);$(13_10)	var p_pylon_enemies = buffer_read(buff, buffer_u32);$(13_10)	var p_enemy_count = buffer_read(buff, buffer_u32);$(13_10)	var p_in_wave = buffer_read(buff, buffer_bool);$(13_10)	var p_combo_bar = buffer_read(buff, buffer_f32);$(13_10)	var p_combo_num = buffer_read(buff, buffer_u32);$(13_10)	var p_flub = buffer_read(buff, buffer_f32);$(13_10)	var p_scor = buffer_read(buff, buffer_f64);$(13_10)$(13_10)    // This is a client exclusive packet, so there is no need to identify the packet sender.$(13_10)    o_game.pylon_incr = p_pylon_incr;$(13_10)	o_game.pylon_enemies = p_pylon_enemies;$(13_10)	o_game.pylon_enemy_count = p_enemy_count;$(13_10)	o_game.in_wave = p_in_wave;$(13_10)	o_game.combo_bar = p_combo_bar;$(13_10)	o_game.combo_num = p_combo_num;$(13_10)	o_game.flub = p_flub;$(13_10)	o_game.scor = p_scor;$(13_10)	}$(13_10)	$(13_10)	if (packet_type == PACKET_FLUB) {$(13_10)		var p_flubbington = buffer_read(buff, buffer_f32);$(13_10)		var p_hsp = buffer_read(buff, buffer_f32);$(13_10)		var p_vsp = buffer_read(buff, buffer_f32);$(13_10)		var p_will_combine = buffer_read(buff, buffer_bool);$(13_10)		var p_x = buffer_read(buff, buffer_f32);$(13_10)		var p_y = buffer_read(buff, buffer_f32);$(13_10)		$(13_10)		var tourist_flub = instance_create_layer(p_x, p_y, "Instances_Front", o_flub);$(13_10)		tourist_flub.flubbington = p_flubbington;$(13_10)		tourist_flub.hsp = p_hsp;$(13_10)		tourist_flub.vsp = p_vsp;$(13_10)		tourist_flub.will_combine = p_will_combine;$(13_10)	}$(13_10)	$(13_10)	if (packet_type == PACKET_FLUB) {$(13_10)		var p_buff = buffer_read(buff, buffer_string);$(13_10)		$(13_10)		with(o_buff_gen){$(13_10)			buff_to_be = p_buff;$(13_10)			client_operate = true;$(13_10)		}$(13_10)		$(13_10)	}$(13_10)}$(13_10)"
/// @description Execute Code
var type = async_load[? "type"];

if (type == network_type_connect) {
    show_debug_message("Connected to host!");
	//var my_character_index = o_game.local_player.character_index;
	//var my_suit_color = o_game.local_player.suit_color;
	//var my_hair = o_game.local_player.haircut;
		
	//send_player_appearance(socket, my_character_index, my_suit_color, my_hair);

}

if (type == network_type_data) {
    var buff = async_load[? "buffer"];
    var packet_type = buffer_read(buff, buffer_u8);
	//show_debug_message("Client received: " + string(msg));

    if (packet_type == 2) {
        var char_index = buffer_read(buff, buffer_string);
        var suit_color = buffer_read(buff, buffer_u32);
        var hair       = buffer_read(buff, buffer_string);
		
		var my_character_index = o_game.local_player.character_index;
		var my_suit_color = o_game.local_player.suit_color;
		var my_hair = o_game.local_player.haircut;

        // Spawn remote player
        var p = instance_create_layer(950, 800, "Instances", o_player);
        p.control_type = cr.NET;

        // Apply appearance
        //p.character_index = char_index;
        //p.suit_color      = suit_color;
        //p.hair            = hair;

		with (p){
			scr_change_character(char_index, hair, suit_color);
		}
		show_debug_message("CLIENT SENDING APPEARANCE");
		send_player_appearance(client_socket, my_character_index, my_suit_color, my_hair);
		o_game.local_player.socket = client_socket;
    }
	if (packet_type == PACKET_MOVEMENT) {
    var px = buffer_read(buff, buffer_f32);
    var py = buffer_read(buff, buffer_f32);

    with (o_player) {
        if (control_type == cr.NET) {
            x = px;
            y = py;
        }
    }
}//end of movement packet read
	if (packet_type == PACKET_INPUT) {

    var sock = async_load[? "id"]; // the client who sent it

    // Find the correct remote player
    var p = noone;
    with (o_player) {
        if (control_type == cr.NET) {
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
        if (control_type == cr.NET) {
            hsp = phsp;
            vsp = pvsp;
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
	if (packet_type == PACKET_ENEMYSPAWN) {
    var px = buffer_read(buff, buffer_f32);
	var py = buffer_read(buff, buffer_f32);
	var pobj = buffer_read(buff, buffer_u16);
	var php = buffer_read(buff, buffer_f32);
	var pnum = buffer_read(buff, buffer_u32);
	var pstate = buffer_read(buff, buffer_u8);
	var pcooldown = buffer_read(buff, buffer_f32);
	var pfacing = buffer_read(buff, buffer_s8);

    // This is a client exclusive packet, so there is no need to identify the packet sender.
	var this_enemy = instance_create_layer(px, py, "Instances", pobj);
    with (this_enemy) {
        hp = php;
		enemy_num = pnum;
		state = pstate;
		cooldown = pcooldown;
		facing = pfacing;
		}
	}
	
	if (packet_type == PACKET_ENEMY_CORRECTION) {
    var px = buffer_read(buff, buffer_f32);
	var py = buffer_read(buff, buffer_f32);
	var pobj = buffer_read(buff, buffer_u16);
	var php = buffer_read(buff, buffer_f32);
	var pnum = buffer_read(buff, buffer_u32);
	var pstate = buffer_read(buff, buffer_u8);
	var pcooldown = buffer_read(buff, buffer_f32);
	var pfacing = buffer_read(buff, buffer_s8);

    // This is a client exclusive packet, so there is no need to identify the packet sender.
    with (pobj) {
		if (enemy_num == pnum){
		x = px;
		y = py;
        hp = php;
		state = pstate;
		cooldown = pcooldown;
		facing = pfacing;
			}
		}
	}
	if (packet_type == PACKET_GAME_LOGIC) {
    var p_pylon_incr = buffer_read(buff, buffer_f32);
	var p_pylon_enemies = buffer_read(buff, buffer_u32);
	var p_enemy_count = buffer_read(buff, buffer_u32);
	var p_in_wave = buffer_read(buff, buffer_bool);
	var p_combo_bar = buffer_read(buff, buffer_f32);
	var p_combo_num = buffer_read(buff, buffer_u32);
	var p_flub = buffer_read(buff, buffer_f32);
	var p_scor = buffer_read(buff, buffer_f64);

    // This is a client exclusive packet, so there is no need to identify the packet sender.
    o_game.pylon_incr = p_pylon_incr;
	o_game.pylon_enemies = p_pylon_enemies;
	o_game.pylon_enemy_count = p_enemy_count;
	o_game.in_wave = p_in_wave;
	o_game.combo_bar = p_combo_bar;
	o_game.combo_num = p_combo_num;
	o_game.flub = p_flub;
	o_game.scor = p_scor;
	}
	
	if (packet_type == PACKET_FLUB) {
		var p_flubbington = buffer_read(buff, buffer_f32);
		var p_hsp = buffer_read(buff, buffer_f32);
		var p_vsp = buffer_read(buff, buffer_f32);
		var p_will_combine = buffer_read(buff, buffer_bool);
		var p_x = buffer_read(buff, buffer_f32);
		var p_y = buffer_read(buff, buffer_f32);
		
		var tourist_flub = instance_create_layer(p_x, p_y, "Instances_Front", o_flub);
		tourist_flub.flubbington = p_flubbington;
		tourist_flub.hsp = p_hsp;
		tourist_flub.vsp = p_vsp;
		tourist_flub.will_combine = p_will_combine;
	}
	
	if (packet_type == PACKET_FLUB) {
		var p_buff = buffer_read(buff, buffer_string);
		
		with(o_buff_gen){
			buff_to_be = p_buff;
			client_operate = true;
		}
		
	}
}