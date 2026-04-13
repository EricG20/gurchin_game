/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 713F2183
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_delete_player"
/// @DnDArgument : "arg" "who=self"
function scr_delete_player(who=self) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4ED8F2BC
	/// @DnDParent : 713F2183
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "global.players[who.player_id]"
	global.players[who.player_id] = -1;

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6A0A459E
	/// @DnDApplyTo : who.mygurn
	/// @DnDParent : 713F2183
	with(who.mygurn) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5668F255
	/// @DnDApplyTo : who.reticle
	/// @DnDParent : 713F2183
	with(who.reticle) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 73F869D5
	/// @DnDApplyTo : who
	/// @DnDParent : 713F2183
	with(who) instance_destroy();}