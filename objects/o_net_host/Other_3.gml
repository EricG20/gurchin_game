/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E0F72EC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)var url = "http://localhost:3000/close";$(13_10)var data = json_stringify({$(13_10)    code: global.join_code$(13_10)});$(13_10)$(13_10)var headers = ds_map_create();$(13_10)headers[? "Content-Type"] = "application/json";$(13_10)$(13_10)http_request(url, "POST", headers, data);$(13_10)$(13_10)$(13_10)for (var i = 0; i < ds_list_size(socket_list); i++) {$(13_10)    var cs = socket_list[| i];$(13_10)    if (socket_exists(cs)) network_destroy(cs);$(13_10)}$(13_10)$(13_10)if (socket_exists("server_socket")) {$(13_10)    network_destroy(server_socket);$(13_10)}$(13_10)$(13_10)ds_list_destroy(socket_list);$(13_10)$(13_10)global.join_code = -1;"
/// @description Execute Code

var url = "http://localhost:3000/close";
var data = json_stringify({
    code: global.join_code
});

var headers = ds_map_create();
headers[? "Content-Type"] = "application/json";

http_request(url, "POST", headers, data);


for (var i = 0; i < ds_list_size(socket_list); i++) {
    var cs = socket_list[| i];
    if (socket_exists(cs)) network_destroy(cs);
}

if (socket_exists("server_socket")) {
    network_destroy(server_socket);
}

ds_list_destroy(socket_list);

global.join_code = -1;