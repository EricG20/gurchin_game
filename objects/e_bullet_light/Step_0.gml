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
/// @DnDArgument : "expr" ".1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "alpher"
alpher += .1;

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 45592DD5
/// @DnDArgument : "x" "o_gun.x"
/// @DnDArgument : "y" "o_gun.y"
direction = point_direction(x, y, o_gun.x, o_gun.y);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 106B802F
/// @DnDInput : 2
/// @DnDArgument : "value" ".5"
/// @DnDArgument : "value_relative" "1"
/// @DnDArgument : "value_1" "point_direction(x,y,o_gun.x,o_gun.y)"
/// @DnDArgument : "instvar" "3"
/// @DnDArgument : "instvar_1" "12"
speed += .5;
image_angle = point_direction(x,y,o_gun.x,o_gun.y);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 79AF52D8
/// @DnDArgument : "var" "alpher"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "1.4"
if(alpher > 1.4)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 24BACA17
	/// @DnDParent : 79AF52D8
	instance_destroy();
}