/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0C48F0DF
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 436A4905
/// @DnDInput : 2
/// @DnDArgument : "value" "hp"
/// @DnDArgument : "value_1" "rotaint"
/// @DnDArgument : "value_relative_1" "1"
/// @DnDArgument : "instvar" "13"
/// @DnDArgument : "instvar_1" "12"
image_alpha = hp;
image_angle += rotaint;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 54D098A9
/// @DnDArgument : "expr" "on_ground"
if(on_ground)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08C66315
	/// @DnDParent : 54D098A9
	/// @DnDArgument : "expr" "-3"
	/// @DnDArgument : "var" "vsp"
	vsp = -3;
}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 7A134BD1
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 259EA137
/// @DnDInput : 2
/// @DnDArgument : "expr" "-.1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "hsp*1.2"
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "var_1" "hsp"
hp += -.1;
hsp = hsp*1.2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 17CD1882
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 64D1DA1C
	/// @DnDParent : 17CD1882
	instance_destroy();
}