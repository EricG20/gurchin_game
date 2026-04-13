/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B96C8F6
/// @DnDArgument : "code" "// Update from keyboard_string$(13_10)var raw = string_upper(keyboard_string);$(13_10)$(13_10)join_code = sanitize_join_code(raw);$(13_10)$(13_10)// Limit to 4 characters$(13_10)if (string_length(join_code) > 4) {$(13_10)    join_code = string_copy(join_code, 1, 4);$(13_10)    keyboard_string = join_code; // keep them in sync$(13_10)}$(13_10)$(13_10)// When player presses Enter, resolve the code$(13_10)if (keyboard_check_pressed(vk_enter)) {$(13_10)    var url = "http://localhost:3000/resolve/" + join_code;$(13_10)    http_get(url);$(13_10)    connecting = true;$(13_10)	o_game.local_player.state = ps.IDLE;$(13_10)}$(13_10)"
// Update from keyboard_string
var raw = string_upper(keyboard_string);

join_code = sanitize_join_code(raw);

// Limit to 4 characters
if (string_length(join_code) > 4) {
    join_code = string_copy(join_code, 1, 4);
    keyboard_string = join_code; // keep them in sync
}

// When player presses Enter, resolve the code
if (keyboard_check_pressed(vk_enter)) {
    var url = "http://localhost:3000/resolve/" + join_code;
    http_get(url);
    connecting = true;
	o_game.local_player.state = ps.IDLE;
}