/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 052F41AA
/// @DnDArgument : "code" "if (async_load[? "type"] == network_type_data) {$(13_10)    var buff = async_load[? "buffer"];$(13_10)    var a = buffer_read(buff, buffer_u8);$(13_10)    var b = buffer_read(buff, buffer_u8);$(13_10)    var c = buffer_read(buff, buffer_u8);$(13_10)    var d = buffer_read(buff, buffer_u8);$(13_10)$(13_10)    show_debug_message("RECV RAW: " + string(a) + ", " + string(b) + ", " + string(c) + ", " + string(d));$(13_10)}$(13_10)"
if (async_load[? "type"] == network_type_data) {
    var buff = async_load[? "buffer"];
    var a = buffer_read(buff, buffer_u8);
    var b = buffer_read(buff, buffer_u8);
    var c = buffer_read(buff, buffer_u8);
    var d = buffer_read(buff, buffer_u8);

    show_debug_message("RECV RAW: " + string(a) + ", " + string(b) + ", " + string(c) + ", " + string(d));
}