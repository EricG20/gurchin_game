/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E4C0E46
/// @DnDArgument : "code" "client_socket = network_create_socket(network_socket_tcp);$(13_10)network_connect(client_socket, "127.0.0.1", 6510);$(13_10)"
client_socket = network_create_socket(network_socket_tcp);
network_connect(client_socket, "127.0.0.1", 6510);