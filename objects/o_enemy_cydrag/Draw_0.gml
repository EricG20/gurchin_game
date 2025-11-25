/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 43F09EE8
/// @DnDArgument : "init" "i = 1"
for(i = 1; i < 10; i += 1) {
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 70A5AAFD
	/// @DnDParent : 43F09EE8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "45*i"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "object" "o_solid"
	var l70A5AAFD_0 = instance_place(x + 0, y + 45*i, o_solid);
	if (!(l70A5AAFD_0 > 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 20EDDF8B
		/// @DnDParent : 70A5AAFD
		/// @DnDArgument : "x" "sin(waggle*i)*2"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "i*45"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "s_cydrag_stem"
		/// @DnDSaveInfo : "sprite" "s_cydrag_stem"
		draw_sprite_ext(s_cydrag_stem, 0, x + sin(waggle*i)*2, y + i*45, facing, 1, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3B1EE407
	/// @DnDParent : 43F09EE8
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "45*i"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "o_solid"
	/// @DnDSaveInfo : "object" "o_solid"
	var l3B1EE407_0 = instance_place(x + 0, y + 45*i, o_solid);
	if ((l3B1EE407_0 > 0))
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 53F3FBBC
		/// @DnDParent : 3B1EE407
		/// @DnDArgument : "x" "sin(waggle*i)*2"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "i*45"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "facing"
		/// @DnDArgument : "sprite" "s_cydrag_stem"
		/// @DnDSaveInfo : "sprite" "s_cydrag_stem"
		draw_sprite_ext(s_cydrag_stem, 0, x + sin(waggle*i)*2, y + i*45, facing, 1, 0, $FFFFFF & $ffffff, 1);
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 0C97FE01
		/// @DnDParent : 3B1EE407
		break;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4ED6303F
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1F33CBA1
/// @DnDArgument : "expr" "state"
var l1F33CBA1_0 = state;
switch(l1F33CBA1_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 10C06EAB
	/// @DnDParent : 1F33CBA1
	/// @DnDArgument : "const" "es.IDLE"
	case es.IDLE:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 6B53CAAC
		/// @DnDParent : 10C06EAB
		/// @DnDArgument : "value" "s_cydrag_idle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_cydrag_idle;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4B9F35DE
	/// @DnDParent : 1F33CBA1
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 7A808ACC
		/// @DnDParent : 4B9F35DE
		/// @DnDArgument : "value" "s_cydrag_charge"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_cydrag_charge;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6A67D445
	/// @DnDParent : 1F33CBA1
	/// @DnDArgument : "const" "es.ATTACK"
	case es.ATTACK:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 565D8424
		/// @DnDParent : 6A67D445
		/// @DnDArgument : "value" "s_cydrag_flame"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_cydrag_flame;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 06523B75
	/// @DnDParent : 1F33CBA1
	/// @DnDArgument : "const" "es.DEATH"
	case es.DEATH:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 74CAB0DD
		/// @DnDParent : 06523B75
		/// @DnDArgument : "value" "s_cydrag_death"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_cydrag_death;
		break;
}