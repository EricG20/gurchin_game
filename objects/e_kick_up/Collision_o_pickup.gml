/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4C0642F5
/// @DnDInput : 2
/// @DnDArgument : "script" "scr_makeexplosion"
/// @DnDArgument : "arg" "other.x"
/// @DnDArgument : "arg_1" "other.y"
/// @DnDSaveInfo : "script" "scr_makeexplosion"
script_execute(scr_makeexplosion, other.x, other.y);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 6CA90715
/// @DnDApplyTo : other
with(other) instance_destroy();