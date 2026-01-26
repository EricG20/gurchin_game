/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 650991A5
event_inherited();

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 564ECE60
/// @DnDArgument : "value" "c_red"
/// @DnDArgument : "instvar" "14"
image_blend = c_red;

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 16320A14
/// @DnDArgument : "times" "irandom_range(3,10)"
repeat(irandom_range(3,10)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 6B9A0611
	/// @DnDParent : 16320A14
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "bruh"
	/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
	bruh = instance_create_layer(x + 0, y + 0, "Effects", e_enemy_walkah_shit);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B0AE044
	/// @DnDParent : 16320A14
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "bruh.color_I_want"
	bruh.color_I_want = c_red;}