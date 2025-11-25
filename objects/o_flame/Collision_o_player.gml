/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0CCAC772
/// @DnDArgument : "var" "other.state"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "ps.HIT"
if(!(other.state == ps.HIT))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 150DF319
	/// @DnDInput : 3
	/// @DnDParent : 0CCAC772
	/// @DnDArgument : "expr" "ps.HIT"
	/// @DnDArgument : "expr_1" "hspeed*.7"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "var_1" "other.knockback_speed"
	/// @DnDArgument : "var_2" "other.hp"
	other.state = ps.HIT;
	other.knockback_speed = hspeed*.7;
	other.hp += -1;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4DC0901A
	/// @DnDParent : 0CCAC772
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosion"
	/// @DnDArgument : "layer" ""Effects""
	instance_create_layer(x + 0, y + 0, "Effects", e_explosion);
}