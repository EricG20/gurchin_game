/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3F1222DE
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31C1CE30
/// @DnDArgument : "expr" "increment"
if(increment){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64E830A5
	/// @DnDParent : 31C1CE30
	/// @DnDArgument : "expr" "vinnyvariable-1*global.game_speed"
	/// @DnDArgument : "var" "vinnyvariable"
	vinnyvariable = vinnyvariable-1*global.game_speed;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 028050AA
/// @DnDArgument : "var" "vinnyvariable"
/// @DnDArgument : "op" "3"
if(vinnyvariable <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DC09B5D
	/// @DnDInput : 4
	/// @DnDParent : 028050AA
	/// @DnDArgument : "expr" "state_set"
	/// @DnDArgument : "expr_1" "scor"
	/// @DnDArgument : "expr_2" "playx"
	/// @DnDArgument : "expr_3" "playy"
	/// @DnDArgument : "var" "o_game.state"
	/// @DnDArgument : "var_1" "o_game.lvlscor"
	/// @DnDArgument : "var_2" "o_game.sethisx"
	/// @DnDArgument : "var_3" "o_game.sethisy"
	o_game.state = state_set;
	o_game.lvlscor = scor;
	o_game.sethisx = playx;
	o_game.sethisy = playy;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A2A9739
	/// @DnDParent : 028050AA
	/// @DnDArgument : "expr" "key"
	/// @DnDArgument : "var" "o_game.selected_level"
	o_game.selected_level = key;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 36A16C45
	/// @DnDParent : 028050AA
	/// @DnDArgument : "room" "sel_room"
	room_goto(sel_room);}