/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1137D5CC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var buff = buffer_create(1, buffer_grow, 1);$(13_10)buffer_write(buff, buffer_u8, 42);$(13_10)network_send_packet(server_socket, buff, 1);$(13_10)buffer_delete(buff);$(13_10)"
/// @description Execute Code
var buff = buffer_create(1, buffer_grow, 1);
buffer_write(buff, buffer_u8, 42);
network_send_packet(server_socket, buff, 1);
buffer_delete(buff);