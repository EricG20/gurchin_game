/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76A29ED6
/// @DnDArgument : "var" "anim"
/// @DnDArgument : "value" "stance.SHOT"
if(anim == stance.SHOT)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 323B1D9B
	/// @DnDInput : 2
	/// @DnDParent : 76A29ED6
	/// @DnDArgument : "expr" "stance.GUARDING"
	/// @DnDArgument : "expr_1" "360"
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "var_1" "numbah"
	anim = stance.GUARDING;
	numbah = 360;
}