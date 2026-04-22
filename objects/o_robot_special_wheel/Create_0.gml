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
/// @DnDArgument : "code" "// Pre-selected upgrade sequence$(13_10)var upgrade_tree = [$(13_10)    ["Fire Rate Up", "Reload Speed Up"],$(13_10)    ["Movement Speed Up", "Dash Recharge Up"]$(13_10)];$(13_10)$(13_10)if (o_game.local_player.robot_upgrade_level < array_length(upgrade_tree)) {$(13_10)    selected_options = upgrade_tree[o_game.local_player.robot_upgrade_level];$(13_10)} else {$(13_10)    // Fallback options once tree is exhausted$(13_10)    selected_options = ["Ammo Up", "Fire Rate Up"];$(13_10)}$(13_10)$(13_10)show_debug_message("Robot Special Options (Level " + string(o_game.local_player.robot_upgrade_level) + "): " + string(selected_options));"
// Pre-selected upgrade sequence
var upgrade_tree = [
    ["Off-hand Reload Up", "Switch Fire Rate Boost"],
    ["Movement Speed Up", "Dash Recharge Up"]
];

if (o_game.local_player.robot_upgrade_level < array_length(upgrade_tree)) {
    selected_options = upgrade_tree[o_game.local_player.robot_upgrade_level];
} else {
    // Fallback options once tree is exhausted
    selected_options = ["Ammo Up", "Fire Rate Up"];
}

show_debug_message("Robot Special Options (Level " + string(o_game.local_player.robot_upgrade_level) + "): " + string(selected_options));
