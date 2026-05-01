/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5E4C0E46
/// @DnDArgument : "code" "// Create this once in o_net_host / o_net_client Create event:$(13_10)accum = buffer_create(1024, buffer_grow, 1);$(13_10)buffer_seek(accum, buffer_seek_start, 0);$(13_10)$(13_10)global.last_seq_from_host = -1;$(13_10)global.mm_url = "https://zpdf-mtchserver.fly.dev";$(13_10)$(13_10)client_socket = network_create_socket(network_socket_tcp);$(13_10)keyboard_string = "";$(13_10)join_code = "";$(13_10)connecting = false;$(13_10)"
// Create this once in o_net_host / o_net_client Create event:
accum = buffer_create(1024, buffer_grow, 1);
buffer_seek(accum, buffer_seek_start, 0);

global.last_seq_from_host = -1;
global.mm_url = "https://zpdf-mtchserver.fly.dev";

client_socket = network_create_socket(network_socket_tcp);
keyboard_string = "";
join_code = "";
connecting = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0C8B182C
/// @DnDInput : 3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "expr_1" "false"
/// @DnDArgument : "expr_2" "ps.THINK"
/// @DnDArgument : "var" "o_game.local_player.is_host"
/// @DnDArgument : "var_1" "o_game.hosting"
/// @DnDArgument : "var_2" "o_game.local_player.state"
o_game.local_player.is_host = false;
o_game.hosting = false;
o_game.local_player.state = ps.THINK;