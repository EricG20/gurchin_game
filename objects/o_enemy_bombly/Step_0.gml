/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1AE74791
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 461B54D8
/// @DnDArgument : "script" "hmm_player_or_pylon"
/// @DnDArgument : "arg" "100"
/// @DnDSaveInfo : "script" "hmm_player_or_pylon"
script_execute(hmm_player_or_pylon, 100);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4C6F2E4A
/// @DnDArgument : "var" "distance_to_object(target)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "25"
if(distance_to_object(target) < 25){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 30975FE1
	/// @DnDParent : 4C6F2E4A
	/// @DnDArgument : "soundid" "sfx_bombly_scream"
	/// @DnDArgument : "gain" ".3"
	/// @DnDSaveInfo : "soundid" "sfx_bombly_scream"
	audio_play_sound(sfx_bombly_scream, 0, 0, .3, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 304DDDA6
	/// @DnDParent : 4C6F2E4A
	/// @DnDArgument : "expr" "es.CHARGE"
	/// @DnDArgument : "var" "state"
	state = es.CHARGE;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 19E8EF50
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 493C8123
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6E865C25
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2A5A8999
/// @DnDInput : 3
/// @DnDArgument : "expr" "on_ground"
/// @DnDArgument : "expr_1" "state != es.KNOCKBACK"
/// @DnDArgument : "expr_2" "state != es.CHARGE"
if(on_ground && state != es.KNOCKBACK && state != es.CHARGE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36BC9442
	/// @DnDInput : 2
	/// @DnDParent : 2A5A8999
	/// @DnDArgument : "expr" "facing*(8+variance)*(.1 * global.game_speed)"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "clamp(hsp, -(8+variance), 8+variance)"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "hsp"
	hsp += facing*(8+variance)*(.1 * global.game_speed);
	hsp = clamp(hsp, -(8+variance), 8+variance);}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 325A8AF8
/// @DnDDisabled : 1
/// @DnDArgument : "x" "facing"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solid"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "object" "o_solid"
/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6F0C6F4F
/// @DnDDisabled : 1
/// @DnDParent : 325A8AF8
/// @DnDArgument : "expr" "-facing"
/// @DnDArgument : "var" "facing"

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5EF4D29D
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "es.CHARGE"
if(state == es.CHARGE){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 200AE9D7
	/// @DnDInput : 2
	/// @DnDParent : 5EF4D29D
	/// @DnDArgument : "expr" "hsp*.3"
	/// @DnDArgument : "expr_1" "global.game_speed"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "cooldown"
	hsp = hsp*.3;
	cooldown += global.game_speed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 21C26207
	/// @DnDParent : 5EF4D29D
	/// @DnDArgument : "expr" ".1*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "flashAlpha"
	flashAlpha += .1*global.game_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68F7A393
	/// @DnDParent : 5EF4D29D
	/// @DnDArgument : "var" "cooldown"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "55"
	if(cooldown > 55){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 135F4F16
		/// @DnDInput : 2
		/// @DnDParent : 68F7A393
		/// @DnDArgument : "expr" "lerp(image_xscale, 1.4, .1*global.game_speed)"
		/// @DnDArgument : "expr_1" "lerp(image_yscale, 1.4, .1*global.game_speed)"
		/// @DnDArgument : "var" "image_xscale"
		/// @DnDArgument : "var_1" "image_yscale"
		image_xscale = lerp(image_xscale, 1.4, .1*global.game_speed);
		image_yscale = lerp(image_yscale, 1.4, .1*global.game_speed);}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C102F43
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "70"
if(cooldown > 70){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 50812F98
	/// @DnDParent : 1C102F43
	/// @DnDArgument : "soundid" "sfx_explode4"
	/// @DnDArgument : "gain" "1.3"
	/// @DnDSaveInfo : "soundid" "sfx_explode4"
	audio_play_sound(sfx_explode4, 0, 0, 1.3, undefined, 1.0);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 50DF599E
	/// @DnDParent : 1C102F43
	/// @DnDArgument : "script" "scr_makeexplosion"
	/// @DnDSaveInfo : "script" "scr_makeexplosion"
	script_execute(scr_makeexplosion);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 233DEF20
	/// @DnDParent : 1C102F43
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "rewards_points"
	rewards_points = false;

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 45D2F248
	/// @DnDParent : 1C102F43
	/// @DnDArgument : "x1" "-180"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "5"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "180"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-80"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "target" "dude"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "o_player"
	/// @DnDArgument : "shape" "2"
	/// @DnDSaveInfo : "obj" "o_player"
	var l45D2F248_0 = collision_ellipse(x + -180, y + 5, x + 180, y + -80, [o_player], true, 1);
	var dude = l45D2F248_0;if((l45D2F248_0)){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2EE7B934
		/// @DnDInput : 2
		/// @DnDParent : 45D2F248
		/// @DnDArgument : "script" "scr_damage_player"
		/// @DnDArgument : "arg" "3"
		/// @DnDArgument : "arg_1" "dude"
		/// @DnDSaveInfo : "script" "scr_damage_player"
		script_execute(scr_damage_player, 3, dude);}

	/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
	/// @DnDVersion : 1.1
	/// @DnDHash : 78CD1C78
	/// @DnDParent : 1C102F43
	/// @DnDArgument : "x1" "-180"
	/// @DnDArgument : "x1_relative" "1"
	/// @DnDArgument : "y1" "5"
	/// @DnDArgument : "y1_relative" "1"
	/// @DnDArgument : "x2" "180"
	/// @DnDArgument : "x2_relative" "1"
	/// @DnDArgument : "y2" "-80"
	/// @DnDArgument : "y2_relative" "1"
	/// @DnDArgument : "target" "pylorn"
	/// @DnDArgument : "target_temp" "1"
	/// @DnDArgument : "obj" "o_pylon"
	/// @DnDArgument : "shape" "2"
	/// @DnDSaveInfo : "obj" "o_pylon"
	var l78CD1C78_0 = collision_ellipse(x + -180, y + 5, x + 180, y + -80, [o_pylon], true, 1);
	var pylorn = l78CD1C78_0;if((l78CD1C78_0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39C3591F
		/// @DnDParent : 78CD1C78
		/// @DnDArgument : "expr" "-3"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "pylorn.hp"
		pylorn.hp += -3;}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 75A36E93
	/// @DnDParent : 1C102F43
	instance_destroy();}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 5BAE664B
/// @DnDArgument : "x" "facing*5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "-10"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_solid"
/// @DnDSaveInfo : "object" "o_solid"
var l5BAE664B_0 = instance_place(x + facing*5, y + -10, [o_solid]);if ((l5BAE664B_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E75421E
	/// @DnDParent : 5BAE664B
	/// @DnDArgument : "expr" "-facing"
	/// @DnDArgument : "var" "facing"
	facing = -facing;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 44B79C17
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 423831B4
	/// @DnDParent : 44B79C17
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1CB86729
/// @DnDArgument : "expr" "gurchenis_buff"
if(gurchenis_buff){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3FA3C51A
	/// @DnDParent : 1CB86729
	/// @DnDArgument : "script" "scr_gurchenisaura"
	/// @DnDSaveInfo : "script" "scr_gurchenisaura"
	script_execute(scr_gurchenisaura);}