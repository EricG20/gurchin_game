/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 16AD4CCE
/// @DnDArgument : "var" "cutscene"
/// @DnDArgument : "not" "1"
if(cutscene != undefined)
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Set_Head
	/// @DnDVersion : 1
	/// @DnDHash : 7828BD5F
	/// @DnDParent : 16AD4CCE
	/// @DnDArgument : "sequenceelmid" "cutscene"
	/// @DnDArgument : "var" "48"
	layer_sequence_headpos(cutscene, 48);
}