/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 16B3C93D
/// @DnDArgument : "var" "control_type"
/// @DnDArgument : "value" "cr.LOCAL"
if(control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3666D972
	/// @DnDParent : 16B3C93D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "my_cam"
	/// @DnDArgument : "objectid" "o_camera"
	/// @DnDSaveInfo : "objectid" "o_camera"
	my_cam = instance_create_layer(x + 0, y + 0, "Instances", o_camera);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 063F3B46
	/// @DnDParent : 16B3C93D
	/// @DnDArgument : "expr" "my_cam"
	/// @DnDArgument : "var" "belongings.cam"
	belongings.cam = my_cam;}