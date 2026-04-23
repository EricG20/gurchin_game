/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EE7FDAD
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)// Create Event$(13_10)global.host_local_ip = "Searching...";$(13_10)var port = 6515; $(13_10)server_socket = network_create_server(network_socket_udp, port, 5);$(13_10)client_socket = network_create_socket(network_socket_udp);$(13_10)$(13_10)// Send a broadcast to the network$(13_10)var buffer = buffer_create(1, buffer_fixed, 1);$(13_10)buffer_write(buffer, buffer_u8, 1);$(13_10)network_send_broadcast(client_socket, port, buffer, buffer_get_size(buffer));$(13_10)buffer_delete(buffer);$(13_10)"
/// @description Execute Code
// Create Event
global.host_local_ip = "Searching...";
var port = 6515; 
server_socket = network_create_server(network_socket_udp, port, 5);
client_socket = network_create_socket(network_socket_udp);

// Send a broadcast to the network
var buffer = buffer_create(1, buffer_fixed, 1);
buffer_write(buffer, buffer_u8, 1);
network_send_broadcast(client_socket, port, buffer, buffer_get_size(buffer));
buffer_delete(buffer);