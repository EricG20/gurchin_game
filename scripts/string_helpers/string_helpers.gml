/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 423268B0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "string_helpers"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07CBD67F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function wrap_text(_str, _limit) {$(13_10)    var result = "";$(13_10)    var text = _str;$(13_10)$(13_10)    while (string_length(text) > _limit) {$(13_10)$(13_10)        // Find last space before the limit$(13_10)        var pos = _limit;$(13_10)        while (pos > 0 && string_char_at(text, pos) != " ") {$(13_10)            pos--;$(13_10)        }$(13_10)$(13_10)        // If no space found, hard break$(13_10)        if (pos == 0) pos = _limit;$(13_10)$(13_10)        // Add the line to the result$(13_10)        result += string_copy(text, 1, pos) + "\n";$(13_10)$(13_10)        // Remove that part from the original text$(13_10)        text = string_delete(text, 1, pos);$(13_10)$(13_10)        // Trim leading spaces$(13_10)        while (string_length(text) > 0 && string_char_at(text, 1) == " ") {$(13_10)            text = string_delete(text, 1, 1);$(13_10)        }$(13_10)    }$(13_10)$(13_10)    // Add whatever remains$(13_10)    result += text;$(13_10)$(13_10)    return result;$(13_10)}$(13_10)$(13_10)$(13_10)function string_last_space(_str, _limit) {$(13_10)    for (var i = _limit; i > 0; i--) {$(13_10)        if (string_char_at(_str, i) == " ") return i;$(13_10)    }$(13_10)    return 0;$(13_10)}$(13_10)"
/// @description Execute Code
function wrap_text(_str, _limit) {
    var result = "";
    var text = _str;

    while (string_length(text) > _limit) {

        // Find last space before the limit
        var pos = _limit;
        while (pos > 0 && string_char_at(text, pos) != " ") {
            pos--;
        }

        // If no space found, hard break
        if (pos == 0) pos = _limit;

        // Add the line to the result
        result += string_copy(text, 1, pos) + "\n";

        // Remove that part from the original text
        text = string_delete(text, 1, pos);

        // Trim leading spaces
        while (string_length(text) > 0 && string_char_at(text, 1) == " ") {
            text = string_delete(text, 1, 1);
        }
    }

    // Add whatever remains
    result += text;

    return result;
}


function string_last_space(_str, _limit) {
    for (var i = _limit; i > 0; i--) {
        if (string_char_at(_str, i) == " ") return i;
    }
    return 0;
}