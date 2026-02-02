/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 29266C42
/// @DnDArgument : "expr" "-global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "cooldown"
cooldown += -global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4B5E6378
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "3"
if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10408A13
	/// @DnDInput : 2
	/// @DnDParent : 4B5E6378
	/// @DnDArgument : "expr" "2"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "var_1" "bullets"
	cooldown = 2;
	bullets += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 240EA150
	/// @DnDParent : 4B5E6378
	/// @DnDArgument : "xpos" "random_range(-60,60)"
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "mybb"
	/// @DnDArgument : "objectid" "o_bullet"
	/// @DnDSaveInfo : "objectid" "o_bullet"
	mybb = instance_create_layer(x + random_range(-60,60), y + 0, "Instances", o_bullet);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3F84FB1F
	/// @DnDInput : 4
	/// @DnDParent : 4B5E6378
	/// @DnDArgument : "script" "scr_adjust_projectile_params"
	/// @DnDArgument : "arg" "mybb"
	/// @DnDArgument : "arg_1" "-90"
	/// @DnDArgument : "arg_2" "61+random_range(-3,3)"
	/// @DnDArgument : "arg_3" "s_ironbullet"
	/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
	script_execute(scr_adjust_projectile_params, mybb, -90, 61+random_range(-3,3), s_ironbullet);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1936BF00
/// @DnDArgument : "var" "bullets"
/// @DnDArgument : "op" "3"
if(bullets <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 20796F14
	/// @DnDParent : 1936BF00
	instance_destroy();}