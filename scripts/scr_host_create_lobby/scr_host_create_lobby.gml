/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5348B21C
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_host_create_lobby"
function scr_host_create_lobby() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 3EE6FFC5
	/// @DnDParent : 5348B21C
	/// @DnDArgument : "code" "/// scr_host_create_lobby()$(13_10)var headers = ds_map_create();$(13_10)headers[? "Content-Type"] = "application/json";$(13_10)$(13_10)var payload = json_stringify({$(13_10)	publicIP: global.host_public_ip,$(13_10)	publicPort: global.udp_port,$(13_10)    localIP: global.host_local_ip,$(13_10)    localPort: global.udp_port,$(13_10)    maxPlayers: 4$(13_10)});$(13_10)$(13_10)show_debug_message("CALLING /create NOW");$(13_10)$(13_10)http_request(global.mm_url + "/create", "POST", headers, payload);$(13_10)ds_map_destroy(headers);$(13_10)"
	/// scr_host_create_lobby()
	var headers = ds_map_create();
	headers[? "Content-Type"] = "application/json";
	
	var payload = json_stringify({
		publicIP: global.host_public_ip,
		publicPort: global.udp_port,
	    localIP: global.host_local_ip,
	    localPort: global.udp_port,
	    maxPlayers: 4
	});
	
	show_debug_message("CALLING /create NOW");
	
	http_request(global.mm_url + "/create", "POST", headers, payload);
	ds_map_destroy(headers);}