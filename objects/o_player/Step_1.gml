/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 366CFBA5
/// @DnDArgument : "obj" "mygurn"
/// @DnDArgument : "not" "1"
var l366CFBA5_0 = false;l366CFBA5_0 = instance_exists(mygurn);if(!l366CFBA5_0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 03F28E95
	/// @DnDParent : 366CFBA5
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "mygurn"
	/// @DnDArgument : "objectid" "o_emptyhanded"
	/// @DnDArgument : "layer" ""Instances_Front""
	/// @DnDSaveInfo : "objectid" "o_emptyhanded"
	mygurn = instance_create_layer(x + 0, y + 0, "Instances_Front", o_emptyhanded);}