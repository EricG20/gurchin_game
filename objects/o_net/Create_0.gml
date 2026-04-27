/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 04303CC7
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Relay info$(13_10)relay_ip  = "127.0.0.1";   // replace with Fly.io later$(13_10)relay_tcp = 40000;$(13_10)relay_udp = 50000;$(13_10)$(13_10)// Assigned by matchmaker$(13_10)lobby_id = global.lobby_id;$(13_10)slot     = global.slot;        // 1 = host, 2–4 = clients$(13_10)$(13_10)// RAW TCP socket$(13_10)tcp_sock = network_create_socket(network_socket_tcp);$(13_10)network_connect_raw(tcp_sock, relay_ip, relay_tcp);$(13_10)$(13_10)// RAW UDP socket$(13_10)udp_sock = network_create_socket(network_socket_udp);$(13_10)$(13_10)// A buffer reused for sending$(13_10)send_buff = buffer_create(1024, buffer_grow, 1);$(13_10)"
/// @description Execute Code
// Relay info
relay_ip  = "127.0.0.1";   // replace with Fly.io later
relay_tcp = 40000;
relay_udp = 50000;

// Assigned by matchmaker
lobby_id = global.lobby_id;
slot     = global.slot;        // 1 = host, 2–4 = clients

// RAW TCP socket
tcp_sock = network_create_socket(network_socket_tcp);
network_connect_raw(tcp_sock, relay_ip, relay_tcp);

// RAW UDP socket
udp_sock = network_create_socket(network_socket_udp);

// A buffer reused for sending
send_buff = buffer_create(1024, buffer_grow, 1);