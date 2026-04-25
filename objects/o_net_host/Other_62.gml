/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 141F6CCC
/// @DnDArgument : "code" "/// Async - HTTP (Host)$(13_10)show_debug_message("HTTP EVENT URL = " + string(async_load[? "url"]));$(13_10)$(13_10)var status  = async_load[? "status"];$(13_10)var req_url = async_load[? "url"];$(13_10)$(13_10)if (status < 0) {$(13_10)    show_debug_message("HTTP ERROR: " + string(status));$(13_10)    exit;$(13_10)}$(13_10)$(13_10)// ------------------------------------$(13_10)// 1. Handle /stun$(13_10)// ------------------------------------$(13_10)if (string_pos("/stun", req_url) > 0) {$(13_10)$(13_10)    var body = async_load[? "result"];$(13_10)    var data = json_parse(body);$(13_10)$(13_10)    global.host_public_ip   = data.publicIP;$(13_10)	global.host_public_port = data.publicPort;$(13_10)$(13_10)    //ds_map_destroy(data);$(13_10)$(13_10)    // Now create lobby$(13_10)    scr_host_create_lobby();$(13_10)$(13_10)    exit;$(13_10)}$(13_10)$(13_10)// ------------------------------------$(13_10)// 2. Handle /create$(13_10)// ------------------------------------$(13_10)if (string_pos("/create", req_url) > 0) {$(13_10)$(13_10)    var body = async_load[? "result"];$(13_10)    var data = json_parse(body);$(13_10)$(13_10)    global.join_code = data.code;$(13_10);$(13_10)$(13_10)    //ds_map_destroy(data);$(13_10)$(13_10)    // Now tell server we're ready to punch$(13_10)    scr_host_send_punch_ready();$(13_10)$(13_10)    exit;$(13_10)}$(13_10)$(13_10)// ------------------------------------$(13_10)// 3. Handle /punch/<code>$(13_10)// ------------------------------------$(13_10)if (string_pos("/punch/", req_url) > 0) {$(13_10)	show_debug_message("HOST RECEIVED /punch RESPONSE");$(13_10)$(13_10)    var body = async_load[? "result"];$(13_10)    var data = json_parse(body);$(13_10)$(13_10)    global.client_public_ip   = data.clientPublicIP$(13_10)    global.client_public_port = data.clientPublicPort$(13_10)$(13_10)    //ds_map_destroy(data);$(13_10)$(13_10)    // Start hole punching$(13_10)    scr_host_start_punch();$(13_10)$(13_10)    exit;$(13_10)}$(13_10)"
/// Async - HTTP (Host)
show_debug_message("HTTP EVENT URL = " + string(async_load[? "url"]));

var status  = async_load[? "status"];
var req_url = async_load[? "url"];

if (status < 0) {
    show_debug_message("HTTP ERROR: " + string(status));
    exit;
}

// ------------------------------------
// 1. Handle /stun
// ------------------------------------
if (string_pos("/stun", req_url) > 0) {

    var body = async_load[? "result"];
    var data = json_parse(body);

    global.host_public_ip   = data.publicIP;
	global.host_public_port = data.publicPort;
  
    if (string_count(":", global.host_public_ip) > 1) {
        show_debug_message("HOST: STUN gave IPv6 (" + global.host_public_ip + "), fetching IPv4 fallback...");
        var h = ds_map_create();
        http_request("https://api4.ipify.org/?format=text", "GET", h, "");
        ds_map_destroy(h);
    } else {
        scr_host_create_lobby();
    }
    exit;
}

if (string_pos("api4.ipify.org", req_url) > 0) {
    var ipv4 = string_replace_all(async_load[? "result"], "\n", "");
    ipv4 = string_replace_all(ipv4, "\r", "");
    show_debug_message("HOST: Got IPv4 fallback: " + ipv4);
    global.host_public_ip = ipv4;
    scr_host_create_lobby();
    exit;
}

// ------------------------------------
// 2. Handle /create
// ------------------------------------
if (string_pos("/create", req_url) > 0) {

    var body = async_load[? "result"];
    var data = json_parse(body);

    global.join_code = data.code;
;

    //ds_map_destroy(data);

    // Now tell server we're ready to punch
    scr_host_send_punch_ready();

    exit;
}

// ------------------------------------
// 3. Handle /punch/<code>
// ------------------------------------
if (string_pos("/punch/", req_url) > 0) {
	show_debug_message("HOST RECEIVED /punch RESPONSE");

    var body = async_load[? "result"];
    var data = json_parse(body);

    global.client_public_ip   = data.clientPublicIP
    global.client_public_port = data.clientPublicPort

    //ds_map_destroy(data);

    // Start hole punching
    scr_host_start_punch();

    exit;
}