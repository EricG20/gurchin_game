/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 09B1B0B3
/// @DnDInput : 3
/// @DnDArgument : "value" "alpher"
/// @DnDArgument : "value_1" "(1+alpher*.7)"
/// @DnDArgument : "value_2" "(1+alpher/2)"
/// @DnDArgument : "instvar" "13"
/// @DnDArgument : "instvar_1" "15"
/// @DnDArgument : "instvar_2" "16"
image_alpha = alpher;
image_xscale = (1+alpher*.7);
image_yscale = (1+alpher/2);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FD76C98
/// @DnDArgument : "expr" ".2*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += .2*global.game_speed;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 07C75E91
/// @DnDArgument : "expr" "gun_index.object_index"
var l07C75E91_0 = gun_index.object_index;switch(l07C75E91_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 19C1F5DC
	/// @DnDParent : 07C75E91
	/// @DnDArgument : "const" "o_gilbert_gun"
	case o_gilbert_gun:	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3190E45D
		/// @DnDParent : 19C1F5DC
		/// @DnDArgument : "x" "gun_index.x + gun_index.glorb_x"
		/// @DnDArgument : "y" "gun_index.y + gun_index.glorb_y"
		direction = point_direction(x, y, gun_index.x + gun_index.glorb_x, gun_index.y + gun_index.glorb_y);	break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 076F599F
	/// @DnDParent : 07C75E91
	default:	/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 45592DD5
		/// @DnDParent : 076F599F
		/// @DnDArgument : "x" "gun_index.x"
		/// @DnDArgument : "y" "gun_index.y"
		direction = point_direction(x, y, gun_index.x, gun_index.y);	break;}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 106B802F
/// @DnDInput : 2
/// @DnDArgument : "value" ".5"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "value_1" "point_direction(x,y,gun_index.x,gun_index.y)"
/// @DnDArgument : "instvar" "3"
/// @DnDArgument : "instvar_1" "12"
speed += .5;
image_angle = point_direction(x,y,gun_index.x,gun_index.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79AF52D8
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1.4"
if(alpher > 1.4){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24BACA17
	/// @DnDParent : 79AF52D8
	instance_destroy();}