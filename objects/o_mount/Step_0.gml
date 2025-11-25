/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2ABDFD6D
/// @DnDArgument : "expr" "active"
/// @DnDArgument : "not" "1"
if(!(active))
{
	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5AB43310
	/// @DnDParent : 2ABDFD6D
	/// @DnDArgument : "script" "controlz"
	/// @DnDSaveInfo : "script" "controlz"
	script_execute(controlz);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 25CB2F01
	/// @DnDParent : 2ABDFD6D
	/// @DnDArgument : "script" "check_ground"
	/// @DnDSaveInfo : "script" "check_ground"
	script_execute(check_ground);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3845C973
	/// @DnDParent : 2ABDFD6D
	/// @DnDArgument : "script" "movement_stuff"
	/// @DnDSaveInfo : "script" "movement_stuff"
	script_execute(movement_stuff);
}