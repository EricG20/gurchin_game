/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 4BB271E0
/// @DnDArgument : "value" "-1"
/// @DnDArgument : "var" "join_code"
global.join_code = -1;

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 7C6183E5
/// @DnDArgument : "var" "socket_list"
socket_list = ds_list_create();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4358704B
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)global.last_seq_from_host = -1;$(13_10)$(13_10)global.mm_url = "https://zpdf-mtchserver.fly.dev";$(13_10)$(13_10)// Ask for public IP/port$(13_10)var headers = ds_map_create();$(13_10)headers[? "Content-Type"] = "application/json";$(13_10)http_request(global.mm_url + "/stun", "GET", headers, "");$(13_10)ds_map_destroy(headers);$(13_10)$(13_10)server_port = 6510$(13_10)$(13_10)//server_socket = network_create_server(network_socket_tcp, 6510, 4);$(13_10)//network_set_timeout(server_socket, 10000, 10000);$(13_10)$(13_10)//var url = "http://localhost:3000/create";$(13_10)//var data = json_stringify({$(13_10)//    port: server_port,$(13_10)//    maxPlayers: 4$(13_10)//});$(13_10)$(13_10)//var headers = ds_map_create();$(13_10)//headers[? "Content-Type"] = "application/json";$(13_10)$(13_10)//http_request(url, "POST", headers, data);$(13_10)$(13_10)//ds_map_destroy(headers);"
/// @description Execute Code
global.last_seq_from_host = -1;

global.mm_url = "https://zpdf-mtchserver.fly.dev";

// Ask for public IP/port
var headers = ds_map_create();
headers[? "Content-Type"] = "application/json";
http_request(global.mm_url + "/stun", "GET", headers, "");
ds_map_destroy(headers);

server_port = 6510

//server_socket = network_create_server(network_socket_tcp, 6510, 4);
//network_set_timeout(server_socket, 10000, 10000);

//var url = "http://localhost:3000/create";
//var data = json_stringify({
//    port: server_port,
//    maxPlayers: 4
//});

//var headers = ds_map_create();
//headers[? "Content-Type"] = "application/json";

//http_request(url, "POST", headers, data);

//ds_map_destroy(headers);