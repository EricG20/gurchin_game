/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 155F69F4
/// @DnDInput : 2
/// @DnDArgument : "expr" "facing*22*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-1.5*global.game_speed"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "length"
x += facing*22*global.game_speed;
length += -1.5*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1910F869
/// @DnDArgument : "var" "floor(length) mod 5"
if(floor(length) mod 5 == 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 1EC74447
	/// @DnDParent : 1910F869
	/// @DnDArgument : "target" "jit"
	/// @DnDArgument : "soundid" "sfx_whoosh"
	/// @DnDArgument : "gain" "1"
	/// @DnDArgument : "pitch" "1 + (length/40)"
	/// @DnDSaveInfo : "soundid" "sfx_whoosh"
	jit = audio_play_sound(sfx_whoosh, 0, 0, 1, undefined, 1 + (length/40));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 10228036
	/// @DnDParent : 1910F869
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "gozer"
	/// @DnDArgument : "objectid" "e_freedust"
	/// @DnDSaveInfo : "objectid" "e_freedust"
	gozer = instance_create_layer(x + 0, y + 0, "Instances", e_freedust);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 16EC0650
	/// @DnDInput : 2
	/// @DnDParent : 1910F869
	/// @DnDArgument : "expr" "facing*7"
	/// @DnDArgument : "expr_1" "floor(length)-1"
	/// @DnDArgument : "var" "gozer.dir_speed"
	/// @DnDArgument : "var_1" "length"
	gozer.dir_speed = facing*7;
	length = floor(length)-1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EEB4232
	/// @DnDParent : 1910F869
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "tozer"
	/// @DnDArgument : "objectid" "o_geyser"
	/// @DnDSaveInfo : "objectid" "o_geyser"
	tozer = instance_create_layer(x + 0, y + 0, "Instances", o_geyser);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 104F3E7F
	/// @DnDInput : 4
	/// @DnDParent : 1910F869
	/// @DnDArgument : "expr" "facing*7"
	/// @DnDArgument : "expr_1" "length/7"
	/// @DnDArgument : "expr_2" "true"
	/// @DnDArgument : "expr_3" "s_gurchenis_geyser"
	/// @DnDArgument : "var" "tozer.dir_speed"
	/// @DnDArgument : "var_1" "tozer.scaale"
	/// @DnDArgument : "var_2" "tozer.dont_hurt_pylon"
	/// @DnDArgument : "var_3" "tozer.sprite_index"
	tozer.dir_speed = facing*7;
	tozer.scaale = length/7;
	tozer.dont_hurt_pylon = true;
	tozer.sprite_index = s_gurchenis_geyser;}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 793CC88F
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "bob"
/// @DnDArgument : "object" "o_solid"
/// @DnDSaveInfo : "object" "o_solid"
var l793CC88F_0 = instance_place(x + 0, y + 0, [o_solid]);
bob = l793CC88F_0;if ((l793CC88F_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6EA049FA
	/// @DnDParent : 793CC88F
	/// @DnDArgument : "expr" "bob.bbox_top"
	/// @DnDArgument : "var" "y"
	y = bob.bbox_top;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35F9C5A7
/// @DnDArgument : "var" "length"
/// @DnDArgument : "op" "3"
if(length <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 27B3D741
	/// @DnDParent : 35F9C5A7
	instance_destroy();}