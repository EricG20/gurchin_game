/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 09F5F355
/// @DnDArgument : "expr" "place_meeting(x+hsp, y, o_solid)"
if(place_meeting(x+hsp, y, o_solid)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 112CBC22
	/// @DnDParent : 09F5F355
	/// @DnDArgument : "expr" "-hsp * 0.5"
	/// @DnDArgument : "var" "hsp"
	hsp = -hsp * 0.5;}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 00A479F9
/// @DnDArgument : "expr" "place_meeting(x, y + vsp, o_solid)"
if(place_meeting(x, y + vsp, o_solid)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 77D5A90F
	/// @DnDParent : 00A479F9
	/// @DnDArgument : "expr" "-vsp * 0.4"
	/// @DnDArgument : "var" "vsp"
	vsp = -vsp * 0.4;}