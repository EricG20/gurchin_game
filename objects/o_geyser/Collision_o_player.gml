/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 6003C790
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40CC8CAE
	/// @DnDInput : 2
	/// @DnDParent : 6003C790
	/// @DnDArgument : "expr" "ps.HIT"
	/// @DnDArgument : "expr_1" "-2"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "var_1" "other.hp"
	other.state = ps.HIT;
	other.hp += -2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3CEEC402
	/// @DnDParent : 6003C790
	/// @DnDArgument : "expr" "dir_speed"
	/// @DnDArgument : "var" "other.knockback_speed"
	other.knockback_speed = dir_speed;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4F7ABD51
	/// @DnDParent : 6003C790
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosion"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_explosion"
	instance_create_layer(x + 0, y + 0, "Effects", e_explosion);}