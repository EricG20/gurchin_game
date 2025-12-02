/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 251CB6D9
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1C7CABE2
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EAFEB12
/// @DnDArgument : "expr" ".1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "incr"
incr += .1*global.game_speed;

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 0876B57E
/// @DnDArgument : "x" "random_range(-10,10)*flubbington*.5"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "random_range(-4,20)*flubbington*.5"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "7"
/// @DnDArgument : "where" "1"
/// @DnDArgument : "color" "$FFFFFFFF"
effect_create_above(7, x + random_range(-10,10)*flubbington*.5, y + random_range(-4,20)*flubbington*.5, 0, $FFFFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5A37DAA6
/// @DnDArgument : "var" "incr"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "500"
if(incr > 500){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0ED0E5DC
	/// @DnDParent : 5A37DAA6
	instance_destroy();}