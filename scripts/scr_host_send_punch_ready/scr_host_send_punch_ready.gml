/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 30F1284A
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_host_send_punch_ready"
function scr_host_send_punch_ready() {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 6AC1A43D
	/// @DnDParent : 30F1284A
	/// @DnDArgument : "code" "/// scr_host_send_punch_ready()$(13_10)$(13_10)var headers = ds_map_create();$(13_10)headers[? "Content-Type"] = "application/json";$(13_10)$(13_10)var url = global.mm_url + "/punch/" + string(global.join_code);$(13_10)$(13_10)// Empty JSON body is fine$(13_10)http_request(url, "POST", headers, "{}");$(13_10)$(13_10)ds_map_destroy(headers);$(13_10)$(13_10)show_debug_message("HOST: Sent /punch ready");$(13_10)"
	/// scr_host_send_punch_ready()
	
	var headers = ds_map_create();
	headers[? "Content-Type"] = "application/json";
	
	var url = global.mm_url + "/punch/" + string(global.join_code);
	
	// Empty JSON body is fine
	http_request(url, "POST", headers, "{}");
	
	ds_map_destroy(headers);
	
	show_debug_message("HOST: Sent /punch ready");}