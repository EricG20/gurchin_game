/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B7C6B44
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 269997F6
	/// @DnDInput : 3
	/// @DnDParent : 5B7C6B44
	/// @DnDArgument : "expr" "ps.HIT"
	/// @DnDArgument : "expr_1" "-(other.facing)*5"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "var_1" "other.knockback_speed"
	/// @DnDArgument : "var_2" "other.hp"
	other.state = ps.HIT;
	other.knockback_speed = -(other.facing)*5;
	other.hp += -1;
}