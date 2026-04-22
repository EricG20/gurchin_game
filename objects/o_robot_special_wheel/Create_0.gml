/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 42728D1B
/// @DnDInput : 2
/// @DnDArgument : "expr" "o_game.local_player.reticle.x"
/// @DnDArgument : "expr_1" "o_game.local_player.reticle.y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = o_game.local_player.reticle.x;
y = o_game.local_player.reticle.y;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 12345678
/// @DnDArgument : "code" "// Ability pool$(13_10)var ability_pool = [$(13_10)    "Shield",$(13_10)    "Overdrive",$(13_10)    "Teleport",$(13_10)    "Repair",$(13_10)    "Nuke",$(13_10)    "Invisibility"$(13_10)];$(13_10)$(13_10)// Shuffle and pick 2$(13_10)var shuffled = array_shuffle(ability_pool);$(13_10)selected_options = [shuffled[0], shuffled[1]];$(13_10)$(13_10)show_debug_message("Robot Special Options: " + string(selected_options));"
// Ability pool
var ability_pool = [
    "Shield",
    "Overdrive",
    "Teleport",
    "Repair",
    "Nuke",
    "Invisibility"
];

// Shuffle and pick 2
var shuffled = array_shuffle(ability_pool);
selected_options = [shuffled[0], shuffled[1]];

show_debug_message("Robot Special Options: " + string(selected_options));
