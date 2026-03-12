/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E4C0E46
/// @DnDArgument : "code" "client_socket = network_create_socket(network_socket_tcp);$(13_10)network_connect(client_socket, "127.0.0.1", 6510);$(13_10)"
client_socket = network_create_socket(network_socket_tcp);
network_connect(client_socket, "127.0.0.1", 6510);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C8B182C
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "o_game.local_player.is_host"
o_game.local_player.is_host = false;