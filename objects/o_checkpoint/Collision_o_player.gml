/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1014F19B
/// @DnDArgument : "expr" "true"
/// @DnDArgument : "var" "activated"
activated = true;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 04458D7C
/// @DnDArgument : "expr" "target_x"
/// @DnDArgument : "var" "o_game.respawn_x"
o_game.respawn_x = target_x;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 79BBE94F
/// @DnDArgument : "expr" "target_y"
/// @DnDArgument : "var" "o_game.respawn_y"
o_game.respawn_y = target_y;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21AA98C0
/// @DnDArgument : "var" "target_hp"
/// @DnDArgument : "op" "1"
if(target_hp < 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 07381BD5
	/// @DnDParent : 21AA98C0
	/// @DnDArgument : "expr" "o_player.hp"
	/// @DnDArgument : "var" "o_game.respawn_health"
	o_game.respawn_health = o_player.hp;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 633109B2
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 410E659D
	/// @DnDParent : 633109B2
	/// @DnDArgument : "expr" "target_hp"
	/// @DnDArgument : "var" "o_game.respawn_health"
	o_game.respawn_health = target_hp;}