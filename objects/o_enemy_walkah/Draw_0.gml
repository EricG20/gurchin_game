/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52F254D4
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 718F3F4F
/// @DnDArgument : "speed" "abs(hsp)/3"
image_speed = abs(hsp)/3;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 591CF211
/// @DnDArgument : "expr" "state"
var l591CF211_0 = state;switch(l591CF211_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 478EF501
	/// @DnDParent : 591CF211
	default:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5674BECF
		/// @DnDParent : 478EF501
		/// @DnDArgument : "value" "s_dumbass"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_dumbass;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6DB80D65
	/// @DnDParent : 591CF211
	/// @DnDArgument : "const" "es.KNOCKBACK"
	case es.KNOCKBACK:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 751014D9
		/// @DnDParent : 6DB80D65
		/// @DnDArgument : "value" "s_dumbass_knockback"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_dumbass_knockback;	break;}