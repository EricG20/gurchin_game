/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 141F6CCC
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)$(13_10)show_debug_message(json_stringify(async_load[? "result"]))$(13_10)var result = json_decode(async_load[? "result"]);$(13_10)global.join_code = result[? "code"];"
/// @description Execute Code

show_debug_message(json_stringify(async_load[? "result"]))
var result = json_decode(async_load[? "result"]);
global.join_code = result[? "code"];