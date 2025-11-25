/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 30B8F6B2
/// @DnDArgument : "speed" "((hsp+vsp)/2)/7"
image_speed = ((hsp+vsp)/2)/7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 64D8388B
/// @DnDInput : 2
/// @DnDArgument : "expr" "hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x += hsp;
y += vsp;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 16B11E0B
/// @DnDArgument : "expr" "on_ground"
/// @DnDArgument : "not" "1"
if(!(on_ground))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 62412280
	/// @DnDParent : 16B11E0B
	/// @DnDArgument : "expr" ".8"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += .8;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 47CB1B64
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E46F361
/// @DnDArgument : "expr" "on_ground"
if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CDBDF58
	/// @DnDInput : 2
	/// @DnDParent : 4E46F361
	/// @DnDArgument : "expr" "-vsp*.4"
	/// @DnDArgument : "expr_1" "hsp*.5"
	/// @DnDArgument : "var" "vsp"
	/// @DnDArgument : "var_1" "hsp"
	vsp = -vsp*.4;
	hsp = hsp*.5;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 35A0F8C5
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "timer"
timer += -1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A2A35DF
/// @DnDArgument : "var" "timer"
/// @DnDArgument : "op" "3"
if(timer <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25DBE295
	/// @DnDParent : 5A2A35DF
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "18"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosionthathurts"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_explosionthathurts"
	instance_create_layer(x + 0, y + 18, "Effects", e_explosionthathurts);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 26DED9BD
	/// @DnDParent : 5A2A35DF
	instance_destroy();
}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 4C9A48C3
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "o_player"
var l4C9A48C3_0 = instance_place(x + 0, y + 0, [o_player]);
if ((l4C9A48C3_0 > 0))
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1A7F14E4
	/// @DnDParent : 4C9A48C3
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "18"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosionthathurts"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_explosionthathurts"
	instance_create_layer(x + 0, y + 18, "Effects", e_explosionthathurts);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1B10C4BD
	/// @DnDParent : 4C9A48C3
	instance_destroy();
}