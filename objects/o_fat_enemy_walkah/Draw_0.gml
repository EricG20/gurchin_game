/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 45CFD8DD
/// @DnDDisabled : 1
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "xscale" "facing"
/// @DnDArgument : "yscale" "0"
/// @DnDArgument : "yscale_relative" "1"
/// @DnDArgument : "sprite" "sprite_index"
/// @DnDArgument : "frame" "image_index"
/// @DnDArgument : "col" "$FFFFFFFF"


/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 404286F7
/// @DnDArgument : "speed" "abs(hsp)/3"
image_speed = abs(hsp)/3;

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 52F254D4
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 08C7CD98
/// @DnDArgument : "expr" "state"
var l08C7CD98_0 = state;switch(l08C7CD98_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 43121A8F
	/// @DnDParent : 08C7CD98
	default:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 60741378
		/// @DnDParent : 43121A8F
		/// @DnDArgument : "value" "s_fat_walker"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_fat_walker;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1D96C462
	/// @DnDParent : 08C7CD98
	/// @DnDArgument : "const" "es.KNOCKBACK"
	case es.KNOCKBACK:	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 590A3573
		/// @DnDParent : 1D96C462
		/// @DnDArgument : "value" "s_fat_walker_knockback"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_fat_walker_knockback;	break;}