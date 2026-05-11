/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2F28612E
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_stun_logic"
function scr_stun_logic() {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5BABE8E5
	/// @DnDParent : 2F28612E
	/// @DnDArgument : "expr" "( stun_amount > other.stun_tolerance && other.state != es.KNOCKBACK)"
	if(( stun_amount > other.stun_tolerance && other.state != es.KNOCKBACK)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CA412D8
		/// @DnDInput : 5
		/// @DnDParent : 5BABE8E5
		/// @DnDArgument : "expr" "es.KNOCKBACK"
		/// @DnDArgument : "expr_1" "stun_amount"
		/// @DnDArgument : "expr_2" "kb_hsp"
		/// @DnDArgument : "expr_3" "kb_vsp"
		/// @DnDArgument : "expr_4" "false"
		/// @DnDArgument : "var" "other.state"
		/// @DnDArgument : "var_1" "other.stun_timer"
		/// @DnDArgument : "var_2" "other.knockback_hsp"
		/// @DnDArgument : "var_3" "other.knockback_vsp"
		/// @DnDArgument : "var_4" "other.on_ground"
		other.state = es.KNOCKBACK;
		other.stun_timer = stun_amount;
		other.knockback_hsp = kb_hsp;
		other.knockback_vsp = kb_vsp;
		other.on_ground = false;}}