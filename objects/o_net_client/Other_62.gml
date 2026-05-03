/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 01077E44
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (connecting) {$(13_10)    var result = json_decode(async_load[? "result"]);$(13_10)$(13_10)    if (!result[? "ok"]) {$(13_10)        show_message("Invalid code!");$(13_10)        connecting = false;$(13_10)		join_code = "";$(13_10)        return;$(13_10)    }$(13_10)$(13_10)    var hostIp = result[? "hostPublicIp"];$(13_10)    var port   = result[? "hostPublicPort"];$(13_10)$(13_10)    network_connect(client_socket, hostIp, port);$(13_10)}$(13_10)"
/// @description Execute Code
if (connecting) {
    var result = json_decode(async_load[? "result"]);

    if (!result[? "ok"]) {
        show_message("Invalid code!");
        connecting = false;
		join_code = "";
        return;
    }

    var hostIp = result[? "hostPublicIp"];
    var port   = result[? "hostPublicPort"];

    network_connect(client_socket, hostIp, port);
}