/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 533A18CA
/// @DnDArgument : "code" "relay_ip  = "127.0.0.1";$(13_10)relay_tcp = 40000;$(13_10)relay_udp = 50000;$(13_10)$(13_10)lobby_id = 1;$(13_10)slot     = 2;$(13_10)target   = 1;$(13_10)$(13_10)// RAW TCP socket$(13_10)tcp_sock = network_create_socket(network_socket_tcp);$(13_10)network_connect_raw(tcp_sock, relay_ip, relay_tcp);$(13_10)$(13_10)// RAW UDP socket$(13_10)udp_sock = network_create_socket(network_socket_udp);$(13_10)$(13_10)// Build test packet$(13_10)var buff = buffer_create(16, buffer_grow, 1);$(13_10)buffer_seek(buff, buffer_seek_start, 0);$(13_10)$(13_10)buffer_write(buff, buffer_u8, lobby_id);$(13_10)buffer_write(buff, buffer_u8, slot);$(13_10)buffer_write(buff, buffer_u8, target);$(13_10)buffer_write(buff, buffer_u8, 99);$(13_10)$(13_10)// Send RAW TCP$(13_10)network_send_raw(tcp_sock, buff, buffer_tell(buff));$(13_10)$(13_10)// Send RAW UDP$(13_10)network_send_udp_raw(udp_sock, relay_ip, relay_udp, buff, buffer_tell(buff));$(13_10)$(13_10)buffer_delete(buff);$(13_10)"
relay_ip  = "127.0.0.1";
relay_tcp = 40000;
relay_udp = 50000;

lobby_id = 1;
slot     = 2;
target   = 1;

// RAW TCP socket
tcp_sock = network_create_socket(network_socket_tcp);
network_connect_raw(tcp_sock, relay_ip, relay_tcp);

// RAW UDP socket
udp_sock = network_create_socket(network_socket_udp);

// Build test packet
var buff = buffer_create(16, buffer_grow, 1);
buffer_seek(buff, buffer_seek_start, 0);

buffer_write(buff, buffer_u8, lobby_id);
buffer_write(buff, buffer_u8, slot);
buffer_write(buff, buffer_u8, target);
buffer_write(buff, buffer_u8, 99);

// Send RAW TCP
network_send_raw(tcp_sock, buff, buffer_tell(buff));

// Send RAW UDP
network_send_udp_raw(udp_sock, relay_ip, relay_udp, buff, buffer_tell(buff));

buffer_delete(buff);