/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0A51B2C0
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var keys = variable_struct_get_names(belongings);$(13_10)$(13_10)for (var i = 0; i < array_length(keys); i++) {$(13_10)    var key = keys[i];$(13_10)    var inst = belongings[$ key];$(13_10)$(13_10)    if (instance_exists(inst)) {$(13_10)        with (inst) instance_destroy();$(13_10)    }$(13_10)}$(13_10)"
/// @description Execute Code
var keys = variable_struct_get_names(belongings);

for (var i = 0; i < array_length(keys); i++) {
    var key = keys[i];
    var inst = belongings[$ key];

    if (instance_exists(inst)) {
        with (inst) instance_destroy();
    }
}