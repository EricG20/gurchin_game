/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 7C6183E5
/// @DnDArgument : "var" "socket_list"
socket_list = ds_list_create();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4358704B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)server_socket = network_create_server(network_socket_tcp, 6510, 4);$(13_10)network_set_timeout(server_socket, 10000, 10000);"
/// @description Execute Code
server_socket = network_create_server(network_socket_tcp, 6510, 4);
network_set_timeout(server_socket, 10000, 10000);