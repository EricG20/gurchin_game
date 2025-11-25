/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 283F9A50
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_respawn"
function scr_respawn() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 131B98A0
	/// @DnDInput : 6
	/// @DnDParent : 283F9A50
	/// @DnDArgument : "expr" "o_game.respawn_x"
	/// @DnDArgument : "expr_1" "o_game.respawn_y"
	/// @DnDArgument : "expr_2" "o_game.respawn_health"
	/// @DnDArgument : "expr_3" "o_game.scor*.3"
	/// @DnDArgument : "expr_4" "ps.IDLE"
	/// @DnDArgument : "expr_5" "undefined"
	/// @DnDArgument : "var" "o_player.x"
	/// @DnDArgument : "var_1" "o_player.y"
	/// @DnDArgument : "var_2" "o_player.hp"
	/// @DnDArgument : "var_3" "o_game.scor"
	/// @DnDArgument : "var_4" "o_player.state"
	/// @DnDArgument : "var_5" "o_player.mygurn"
	o_player.x = o_game.respawn_x;
	o_player.y = o_game.respawn_y;
	o_player.hp = o_game.respawn_health;
	o_game.scor = o_game.scor*.3;
	o_player.state = ps.IDLE;
	o_player.mygurn = undefined;}