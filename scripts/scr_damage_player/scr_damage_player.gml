/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 09DB2D49
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_damage_player"
/// @DnDArgument : "arg" "val"
/// @DnDArgument : "arg_1" "player=other"
function scr_damage_player(val, player=other) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71FD2398
	/// @DnDParent : 09DB2D49
	/// @DnDArgument : "var" "player.iframes"
	/// @DnDArgument : "op" "3"
	if(player.iframes <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 07059C25
		/// @DnDParent : 71FD2398
		/// @DnDArgument : "soundid" "sfx_hit"
		/// @DnDArgument : "gain" "1.5"
		/// @DnDArgument : "pitch" "random_range(.6,.8)"
		/// @DnDSaveInfo : "soundid" "sfx_hit"
		audio_play_sound(sfx_hit, 0, 0, 1.5, undefined, random_range(.6,.8));
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2DC83282
		/// @DnDParent : 71FD2398
		/// @DnDArgument : "soundid" "gurch_hurt"
		/// @DnDArgument : "pitch" "1.0+random_range(0,.2)"
		/// @DnDSaveInfo : "soundid" "gurch_hurt"
		audio_play_sound(gurch_hurt, 0, 0, 1.0, undefined, 1.0+random_range(0,.2));
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6A3D614B
		/// @DnDParent : 71FD2398
		/// @DnDArgument : "script" "scr_screenshake"
		/// @DnDSaveInfo : "script" "scr_screenshake"
		script_execute(scr_screenshake);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6AC9D0A5
		/// @DnDInput : 7
		/// @DnDParent : 71FD2398
		/// @DnDArgument : "expr" "ps.HIT"
		/// @DnDArgument : "expr_1" "-3*player.facing"
		/// @DnDArgument : "expr_2" "-val"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "expr_3" "-9"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "expr_5" "-200"
		/// @DnDArgument : "expr_relative_5" "1"
		/// @DnDArgument : "expr_6" "val"
		/// @DnDArgument : "expr_relative_6" "1"
		/// @DnDArgument : "var" "player.state"
		/// @DnDArgument : "var_1" "player.knockback_speed"
		/// @DnDArgument : "var_2" "player.hp"
		/// @DnDArgument : "var_3" "player.vsp"
		/// @DnDArgument : "var_4" "player.tick"
		/// @DnDArgument : "var_5" "o_game.combo_bar"
		/// @DnDArgument : "var_6" "o_game.player_lost_health"
		player.state = ps.HIT;
		player.knockback_speed = -3*player.facing;
		player.hp += -val;
		player.vsp = -9;
		player.tick = false;
		o_game.combo_bar += -200;
		o_game.player_lost_health += val;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0963CE20
		/// @DnDParent : 71FD2398
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_explosion"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_explosion"
		instance_create_layer(x + 0, y + 0, "Effects", e_explosion);}}