/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27539379
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "count"
count += 1;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1C5676CC
/// @DnDArgument : "var" "count"
/// @DnDArgument : "value" "7"
if(count == 7)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 052B1C27
	/// @DnDParent : 1C5676CC
	/// @DnDArgument : "var" "count"
	count = 0;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 25589632
	/// @DnDParent : 1C5676CC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "hoob"
	/// @DnDArgument : "objectid" "e_hoop"
	/// @DnDArgument : "layer" ""Effects""
	hoob = instance_create_layer(x + 0, y + 0, "Effects", e_hoop);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 30EC6F15
	/// @DnDParent : 1C5676CC
	/// @DnDArgument : "expr" "image_angle"
	/// @DnDArgument : "var" "hoob.image_angle"
	hoob.image_angle = image_angle;
}