/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F6B4872
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (socket_exists("client_socket")) {$(13_10)    network_destroy(client_socket);$(13_10)}$(13_10)$(13_10)connecting = false;$(13_10)join_code = "";"
/// @description Execute Code
if (socket_exists("client_socket")) {
    network_destroy(client_socket);
}
if (variable_global_exists("udp_socket") && global.udp_socket >= 0) {
    network_destroy(global.udp_socket);
    global.udp_socket = -1;
}

connecting = false;
join_code = "";

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 18EC6CCA
/// @DnDInput : 2
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "expr_1" "true"
/// @DnDArgument : "var" "o_game.local_player.is_host"
/// @DnDArgument : "var_1" "o_game.hosting"
o_game.local_player.is_host = true;
o_game.hosting = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5E977372
/// @DnDArgument : "expr" "ps.IDLE"
/// @DnDArgument : "var" "o_game.local_player.state"
o_game.local_player.state = ps.IDLE;