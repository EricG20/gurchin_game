/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52F254D4
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5C22F70C
/// @DnDArgument : "expr" "state"
var l5C22F70C_0 = state;switch(l5C22F70C_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 2BB188D3
	/// @DnDParent : 5C22F70C
	default:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 51285AD9
		/// @DnDParent : 2BB188D3
		/// @DnDArgument : "value" "s_bombly_run"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_bombly_run;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 63DACA4B
	/// @DnDParent : 5C22F70C
	/// @DnDArgument : "const" "es.KNOCKBACK"
	case es.KNOCKBACK:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3F602558
		/// @DnDParent : 63DACA4B
		/// @DnDArgument : "value" "s_bombly_knockback"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_bombly_knockback;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0B55CB34
	/// @DnDParent : 5C22F70C
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 54B358F6
		/// @DnDParent : 0B55CB34
		/// @DnDArgument : "value" "s_bombly_yell"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_bombly_yell;	break;}