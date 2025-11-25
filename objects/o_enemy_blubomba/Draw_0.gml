/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E33430A
/// @DnDArgument : "var" "hsp"
/// @DnDArgument : "not" "1"
if(!(hsp == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 115CD8CA
	/// @DnDParent : 7E33430A
	/// @DnDArgument : "expr" "s_blugunna_body_move"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = s_blugunna_body_move;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0B87CB3C
else
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 58B68FD0
	/// @DnDParent : 0B87CB3C
	/// @DnDArgument : "expr" "s_blugunna_body_idle"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = s_blugunna_body_idle;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3371C2F1
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);