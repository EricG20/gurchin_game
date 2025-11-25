/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 33E42842
/// @DnDArgument : "var" "state"
/// @DnDArgument : "value" "es.ATTACK"
if(state == es.ATTACK){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66FB6C3F
	/// @DnDParent : 33E42842
	/// @DnDArgument : "var" "other.iframes"
	/// @DnDArgument : "op" "3"
	if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7C2D9537
		/// @DnDInput : 4
		/// @DnDParent : 66FB6C3F
		/// @DnDArgument : "expr" "ps.HIT"
		/// @DnDArgument : "expr_1" "hsp/1.4"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "expr_3" "-9"
		/// @DnDArgument : "var" "other.state"
		/// @DnDArgument : "var_1" "other.knockback_speed"
		/// @DnDArgument : "var_2" "other.hp"
		/// @DnDArgument : "var_3" "other.vsp"
		other.state = ps.HIT;
		other.knockback_speed = hsp/1.4;
		other.hp += -1;
		other.vsp = -9;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 31D30118
		/// @DnDParent : 66FB6C3F
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_explosion"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_explosion"
		instance_create_layer(x + 0, y + 0, "Effects", e_explosion);}}