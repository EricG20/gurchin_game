/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7463FD96
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
if(speed > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D30A82B
	/// @DnDInput : 3
	/// @DnDParent : 7463FD96
	/// @DnDArgument : "expr" "hspeed/global.game_speed"
	/// @DnDArgument : "expr_1" "vspeed/global.game_speed"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "vsp"
	/// @DnDArgument : "var_2" "speed"
	hsp = hspeed/global.game_speed;
	vsp = vspeed/global.game_speed;
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62B8C2CF
	/// @DnDParent : 7463FD96
	/// @DnDArgument : "expr" "image_xscale"
	/// @DnDArgument : "var" "display_scale"
	display_scale = image_xscale;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 481ECA18
	/// @DnDInput : 2
	/// @DnDParent : 7463FD96
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "instvar" "15"
	/// @DnDArgument : "instvar_1" "16"
	image_xscale = 1;
	image_yscale = 1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64DED50F
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp*global.game_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp*global.game_speed;
y += vsp*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 63CE5ED8
/// @DnDArgument : "expr" "homing"
if(homing){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14D3BFB7
	/// @DnDParent : 63CE5ED8
	/// @DnDArgument : "expr" "instance_nearest(x,y,target_faction)"
	/// @DnDArgument : "var" "victim"
	victim = instance_nearest(x,y,target_faction);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 12EE6722
	/// @DnDParent : 63CE5ED8
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "s_ironbullet"
	if(sprite_index == s_ironbullet){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2FC735D6
		/// @DnDParent : 12EE6722
		/// @DnDArgument : "expr" "c_aqua"
		/// @DnDArgument : "var" "bullet_color"
		bullet_color = c_aqua;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 316BCB54
	/// @DnDParent : 63CE5ED8
	/// @DnDArgument : "var" "victim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(victim == noone)){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 72C5A2C3
		/// @DnDInput : 3
		/// @DnDParent : 316BCB54
		/// @DnDArgument : "script" "scr_homing"
		/// @DnDArgument : "arg" "victim"
		/// @DnDArgument : "arg_1" "magnet_strength"
		/// @DnDArgument : "arg_2" "magnet"
		/// @DnDSaveInfo : "script" "scr_homing"
		script_execute(scr_homing, victim, magnet_strength, magnet);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38C59799
		/// @DnDParent : 316BCB54
		/// @DnDArgument : "var" "distance_to_object(victim)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "400"
		if(distance_to_object(victim) < 400){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1120D242
			/// @DnDInput : 2
			/// @DnDParent : 38C59799
			/// @DnDArgument : "expr" "hsp*power(.9,global.game_speed)"
			/// @DnDArgument : "expr_1" "vsp*power(.9,global.game_speed)"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "vsp"
			hsp = hsp*power(.9,global.game_speed);
			vsp = vsp*power(.9,global.game_speed);}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67A8E118
/// @DnDArgument : "expr" "-1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "despawn_time"
despawn_time += -1*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3E1214D6
/// @DnDArgument : "var" "despawn_time"
/// @DnDArgument : "op" "3"
if(despawn_time <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2C1C9FD5
	/// @DnDParent : 3E1214D6
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7CB400FC
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp*fric"
/// @DnDArgument : "expr_1" "vsp*fric"
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "var_1" "vsp"
hsp = hsp*fric;
vsp = vsp*fric;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 13F37CFE
/// @DnDInput : 2
/// @DnDArgument : "expr" "x-hsp"
/// @DnDArgument : "expr_1" "y-vsp"
/// @DnDArgument : "var" "xprevious"
/// @DnDArgument : "var_1" "yprevious"
xprevious = x-hsp;
yprevious = y-vsp;