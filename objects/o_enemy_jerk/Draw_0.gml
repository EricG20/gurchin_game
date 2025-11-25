/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 4192B804
/// @DnDArgument : "script" "flash_operate"
/// @DnDSaveInfo : "script" "flash_operate"
script_execute(flash_operate);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3109AB75
/// @DnDArgument : "expr" "state"
var l3109AB75_0 = state;
switch(l3109AB75_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 42D1897F
	/// @DnDParent : 3109AB75
	/// @DnDArgument : "const" "es.IDLE"
	case es.IDLE:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 314106B5
		/// @DnDParent : 42D1897F
		/// @DnDArgument : "value" "s_big_jerk_idle"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_big_jerk_idle;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 158959A3
	/// @DnDParent : 3109AB75
	/// @DnDArgument : "const" "es.WALK"
	case es.WALK:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 3E897CD3
		/// @DnDParent : 158959A3
		/// @DnDArgument : "value" "s_big_jerk_move"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_big_jerk_move;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 44DA4BA5
	/// @DnDParent : 3109AB75
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 0732D1B7
		/// @DnDParent : 44DA4BA5
		/// @DnDArgument : "value" "s_big_jerk_charge"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_big_jerk_charge;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 68CABA50
	/// @DnDParent : 3109AB75
	/// @DnDArgument : "const" "es.ATTACK"
	case es.ATTACK:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 518AC96F
		/// @DnDParent : 68CABA50
		/// @DnDArgument : "value" "s_big_jerk_attack"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_big_jerk_attack;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 30999097
	/// @DnDParent : 3109AB75
	/// @DnDArgument : "const" "es.DEATH"
	case es.DEATH:
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 74F2D7CD
		/// @DnDParent : 30999097
		/// @DnDArgument : "value" "s_big_jerk_die"
		/// @DnDArgument : "instvar" "10"
		sprite_index = s_big_jerk_die;
		break;
}