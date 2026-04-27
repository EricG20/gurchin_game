/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 423268B0
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "string_helpers"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 07CBD67F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)function wrap_text(_str, _limit) {$(13_10)    var result = "";$(13_10)    var text = _str;$(13_10)$(13_10)    while (string_length(text) > _limit) {$(13_10)$(13_10)        // Find last space before the limit$(13_10)        var pos = _limit;$(13_10)        while (pos > 0 && string_char_at(text, pos) != " ") {$(13_10)            pos--;$(13_10)        }$(13_10)$(13_10)        // If no space found, hard break$(13_10)        if (pos == 0) pos = _limit;$(13_10)$(13_10)        // Add the line to the result$(13_10)        result += string_copy(text, 1, pos) + "\n";$(13_10)$(13_10)        // Remove that part from the original text$(13_10)        text = string_delete(text, 1, pos);$(13_10)$(13_10)        // Trim leading spaces$(13_10)        while (string_length(text) > 0 && string_char_at(text, 1) == " ") {$(13_10)            text = string_delete(text, 1, 1);$(13_10)        }$(13_10)    }$(13_10)$(13_10)    // Add whatever remains$(13_10)    result += text;$(13_10)$(13_10)    return result;$(13_10)}$(13_10)$(13_10)$(13_10)function string_last_space(_str, _limit) {$(13_10)    for (var i = _limit; i > 0; i--) {$(13_10)        if (string_char_at(_str, i) == " ") return i;$(13_10)    }$(13_10)    return 0;$(13_10)}$(13_10)$(13_10)function format_time_to_clock(_total_seconds) {$(13_10)    var _hours = floor(_total_seconds div 3600);$(13_10)    var _minutes = floor((_total_seconds mod 3600) div 60);$(13_10)    var _seconds = floor(_total_seconds mod 60);$(13_10)$(13_10)    // Format with leading zeros$(13_10)    var _time_string = string_format(_hours, 2, 0) + ":" + $(13_10)                       string_format(_minutes, 2, 0) + ":" + $(13_10)                       string_format(_seconds, 2, 0);$(13_10)    $(13_10)    // Replace spaces created by string_format with zeros$(13_10)    return string_replace_all(_time_string, " ", "0");$(13_10)}$(13_10)"
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

function format_time_to_clock(_total_seconds) {
    var _hours = floor(_total_seconds div 3600);
    var _minutes = floor((_total_seconds mod 3600) div 60);
    var _seconds = floor(_total_seconds mod 60);

    // Format with leading zeros
    var _time_string = string_format(_hours, 2, 0) + ":" + 
                       string_format(_minutes, 2, 0) + ":" + 
                       string_format(_seconds, 2, 0);
    
    // Replace spaces created by string_format with zeros
    return string_replace_all(_time_string, " ", "0");
}