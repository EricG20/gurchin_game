/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 726AF798
/// @DnDArgument : "var" "other.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.HIT"
if(!(other.state == ps.HIT))
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B4763D4
	/// @DnDParent : 726AF798
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "value" "claw.ATTACK"
	if(state == claw.ATTACK)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7204C7D3
		/// @DnDInput : 3
		/// @DnDParent : 1B4763D4
		/// @DnDArgument : "expr" "ps.HIT"
		/// @DnDArgument : "expr_1" "o_B_gunclaw.facing*4"
		/// @DnDArgument : "expr_2" "-1"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "other.state"
		/// @DnDArgument : "var_1" "other.knockback_speed"
		/// @DnDArgument : "var_2" "other.hp"
		other.state = ps.HIT;
		other.knockback_speed = o_B_gunclaw.facing*4;
		other.hp += -1;
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5BDFBFEE
		/// @DnDParent : 1B4763D4
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_explosion"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_explosion"
		instance_create_layer(x + 0, y + 0, "Effects", e_explosion);
	}
}