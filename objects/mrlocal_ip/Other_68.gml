/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 665BF67C
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var type = async_load[? "type"];$(13_10)if (type == network_type_data) {$(13_10)    global.host_local_ip = string(async_load[? "ip"]); // This is your local IP$(13_10)$(13_10)    // Clean up once found$(13_10)    network_destroy(server_socket);$(13_10)    network_destroy(client_socket);$(13_10)}"
/// @description Execute Code
var type = async_load[? "type"];
if (type == network_type_data) {
    global.host_local_ip = string(async_load[? "ip"]); // This is your local IP

    // Clean up once found
    network_destroy(server_socket);
    network_destroy(client_socket);
}