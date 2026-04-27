/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01077E44
/// @DnDArgument : "code" "/// Async - HTTP$(13_10)$(13_10)$(13_10)var url    = async_load[? "url"];$(13_10)var status = async_load[? "status"];$(13_10)$(13_10)show_debug_message("CLIENT HTTP EVENT: " + string(url));$(13_10)// GameMaker success = 0, NOT 200$(13_10)if (status != 0) exit;$(13_10)$(13_10)$(13_10)// -----------------------------$(13_10)// 1. Handle /resolve/<code>$(13_10)// -----------------------------$(13_10)if (string_pos("/resolve/", url) > 0) {$(13_10)$(13_10)    var result = json_parse(async_load[? "result"]);$(13_10)$(13_10)    if (!result.ok) {$(13_10)        show_message("Invalid code!");$(13_10)        connecting = false;$(13_10)        join_code = "";$(13_10)        return;$(13_10)    }$(13_10)$(13_10)    // Code is valid → begin NAT punch sequence$(13_10)    //scr_client_begin_nat_punch();$(13_10)	$(13_10)	// === CONNECT HOST TO RELAY ===$(13_10)$(13_10)	// Relay info from matchmaker$(13_10)	global.relay_ip  = "127.0.0.1";$(13_10)	global.relay_tcp = 40000;$(13_10)	global.relay_udp = 50000;$(13_10)$(13_10)	// Create RAW TCP socket$(13_10)	global.tcp_sock = network_create_socket(network_socket_tcp);$(13_10)	network_connect_raw(global.tcp_sock, global.relay_ip, global.relay_tcp);$(13_10)$(13_10)	// Create RAW UDP socket$(13_10)	global.udp_sock = network_create_socket(network_socket_udp);$(13_10)$(13_10)	// Build JOIN REQUEST packet$(13_10)	var code = join_code;$(13_10)	var code_len = string_length(code);$(13_10)$(13_10)	var buff = buffer_create(64, buffer_grow, 1);$(13_10)	buffer_write(buff, buffer_u8, 0x01);          // JOIN REQUEST$(13_10)	buffer_write(buff, buffer_u8, code_len);      // length of room code$(13_10)	buffer_write(buff, buffer_text, code);      // room code$(13_10)	buffer_write(buff, buffer_u8, 1);             // host player_id (or your actual ID)$(13_10)$(13_10)	// Send JOIN REQUEST over TCP$(13_10)	network_send_raw(global.tcp_sock, buff, buffer_tell(buff));$(13_10)$(13_10)	// Also register UDP endpoint$(13_10)	network_send_udp_raw(global.udp_sock, global.relay_ip, global.relay_udp, buff, buffer_tell(buff));$(13_10)$(13_10)	buffer_delete(buff);$(13_10)$(13_10)    return;$(13_10)}$(13_10)$(13_10)$(13_10)// -----------------------------$(13_10)// 2. Handle /stun$(13_10)// -----------------------------$(13_10)if (string_pos("/stun", url) > 0) {$(13_10)$(13_10)    var result = json_parse(async_load[? "result"]);$(13_10)$(13_10)    global.client_public_ip   = result.publicIP;$(13_10)    global.client_public_port = result.publicPort;$(13_10)$(13_10)    // Now request punch info$(13_10)    scr_client_request_punch();$(13_10)    return;$(13_10)	$(13_10)	show_debug_message("CLIENT STUN HANDLER ENTERED");$(13_10)$(13_10)}$(13_10)$(13_10)$(13_10)// -----------------------------$(13_10)// 3. Handle /punch/<code>$(13_10)// -----------------------------$(13_10)if (string_pos("/punch/", url) > 0) {$(13_10)	show_debug_message("RAW PUNCH RESPONSE: " + async_load[? "result"]);$(13_10)$(13_10)    var result = json_parse(async_load[? "result"]);$(13_10)$(13_10)    if (!result.ok) {$(13_10)        show_message("Punch failed!");$(13_10)        connecting = false;$(13_10)        return;$(13_10)    }$(13_10)	var host_pub = result.hostPublicIP;$(13_10)	var client_pub = result.clientPublicIP;$(13_10)$(13_10)	var same_network = (host_pub == client_pub);$(13_10)	show_debug_message("host_pub=" + string(host_pub) + " client_pub=" + string(client_pub));$(13_10)$(13_10)	$(13_10)	if (same_network) {$(13_10)	    global.target_ip = result.hostLocalIP;$(13_10)	    global.target_port = result.hostLocalPort;$(13_10)	    show_debug_message("Using LOCAL IP for connection");$(13_10)		//scr_client_start_punch_broadcast();$(13_10)	} else {$(13_10)	    global.target_ip = result.hostPublicIP;$(13_10)	    global.target_port = result.hostPublicPort;$(13_10)	    show_debug_message("Using PUBLIC IP for connection");$(13_10)		// Start hole punching$(13_10)		$(13_10)	}$(13_10)$(13_10)    //global.host_public_ip   = result.hostPublicIP;$(13_10)    //global.host_public_port = result.hostPublicPort;$(13_10)	show_debug_message("CLIENT PUNCH HANDLER ENTERED");$(13_10)	show_debug_message("CLIENT RECEIVED HOST IP: " + string(global.target_ip));$(13_10)	scr_client_start_punch();$(13_10)$(13_10)    $(13_10)    return;$(13_10)}$(13_10)"
/// Async - HTTP


var url    = async_load[? "url"];
var status = async_load[? "status"];

show_debug_message("CLIENT HTTP EVENT: " + string(url));
// GameMaker success = 0, NOT 200
if (status != 0) exit;


// -----------------------------
// 1. Handle /resolve/<code>
// -----------------------------
if (string_pos("/resolve/", url) > 0) {

    var result = json_parse(async_load[? "result"]);

    if (!result.ok) {
        show_message("Invalid code!");
        connecting = false;
        join_code = "";
        return;
    }

    // Code is valid → begin NAT punch sequence
    //scr_client_begin_nat_punch();
	
	// === CONNECT HOST TO RELAY ===

	// Relay info from matchmaker
	global.relay_ip  = "127.0.0.1";
	global.relay_tcp = 40000;
	global.relay_udp = 50000;

	// Create RAW TCP socket
	global.tcp_sock = network_create_socket(network_socket_tcp);
	network_connect_raw(global.tcp_sock, global.relay_ip, global.relay_tcp);

	// Create RAW UDP socket
	global.udp_sock = network_create_socket(network_socket_udp);

	// Build JOIN REQUEST packet
	var code = join_code;
	var code_len = string_length(code);

	var buff = buffer_create(64, buffer_grow, 1);
	buffer_write(buff, buffer_u8, 0x01);          // JOIN REQUEST
	buffer_write(buff, buffer_u8, code_len);      // length of room code
	buffer_write(buff, buffer_text, code);      // room code
	buffer_write(buff, buffer_u8, 1);             // host player_id (or your actual ID)

	// Send JOIN REQUEST over TCP
	network_send_raw(global.tcp_sock, buff, buffer_tell(buff));

	// Also register UDP endpoint
	network_send_udp_raw(global.udp_sock, global.relay_ip, global.relay_udp, buff, buffer_tell(buff));

	buffer_delete(buff);

    return;
}


// -----------------------------
// 2. Handle /stun
// -----------------------------
if (string_pos("/stun", url) > 0) {

    var result = json_parse(async_load[? "result"]);

    global.client_public_ip   = result.publicIP;
    global.client_public_port = result.publicPort;

    // Now request punch info
    scr_client_request_punch();
    return;
	
	show_debug_message("CLIENT STUN HANDLER ENTERED");

}


// -----------------------------
// 3. Handle /punch/<code>
// -----------------------------
if (string_pos("/punch/", url) > 0) {
	show_debug_message("RAW PUNCH RESPONSE: " + async_load[? "result"]);

    var result = json_parse(async_load[? "result"]);

    if (!result.ok) {
        show_message("Punch failed!");
        connecting = false;
        return;
    }
	var host_pub = result.hostPublicIP;
	var client_pub = result.clientPublicIP;

	var same_network = (host_pub == client_pub);
	show_debug_message("host_pub=" + string(host_pub) + " client_pub=" + string(client_pub));

	
	if (same_network) {
	    global.target_ip = result.hostLocalIP;
	    global.target_port = result.hostLocalPort;
	    show_debug_message("Using LOCAL IP for connection");
		//scr_client_start_punch_broadcast();
	} else {
	    global.target_ip = result.hostPublicIP;
	    global.target_port = result.hostPublicPort;
	    show_debug_message("Using PUBLIC IP for connection");
		// Start hole punching
		
	}

    //global.host_public_ip   = result.hostPublicIP;
    //global.host_public_port = result.hostPublicPort;
	show_debug_message("CLIENT PUNCH HANDLER ENTERED");
	show_debug_message("CLIENT RECEIVED HOST IP: " + string(global.target_ip));
	scr_client_start_punch();

    
    return;
}