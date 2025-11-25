/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3BB49EAC
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3C04A27F
	/// @DnDInput : 4
	/// @DnDParent : 3BB49EAC
	/// @DnDArgument : "expr" "ps.HIT"
	/// @DnDArgument : "expr_1" "hspeed*.2"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "expr_3" "-8"
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "var_1" "other.knockback_speed"
	/// @DnDArgument : "var_2" "other.hp"
	/// @DnDArgument : "var_3" "other.vsp"
	other.state = ps.HIT;
	other.knockback_speed = hspeed*.2;
	other.hp += -1;
	other.vsp = -8;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 650DB987
	/// @DnDParent : 3BB49EAC
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosion"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_explosion"
	instance_create_layer(x + 0, y + 0, "Effects", e_explosion);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 203D05BA
	/// @DnDParent : 3BB49EAC
	instance_destroy();}