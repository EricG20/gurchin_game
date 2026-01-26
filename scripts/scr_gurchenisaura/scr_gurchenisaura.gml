/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4F97EAD5
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_gurchenisaura"
function scr_gurchenisaura() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E2033B6
	/// @DnDParent : 4F97EAD5
	/// @DnDArgument : "expr" "c_red"
	/// @DnDArgument : "var" "display_color"
	display_color = c_red;

	/// @DnDAction : YoYo Games.Particles.Effect
	/// @DnDVersion : 1
	/// @DnDHash : 2DCBBEAF
	/// @DnDParent : 4F97EAD5
	/// @DnDArgument : "x" "random_range(bbox_left, bbox_right)"
	/// @DnDArgument : "y" "random_range(bbox_bottom, bbox_top)"
	/// @DnDArgument : "type" "4"
	/// @DnDArgument : "color" "display_color"
	effect_create_below(4, random_range(bbox_left, bbox_right), random_range(bbox_bottom, bbox_top), 0, display_color & $ffffff);}