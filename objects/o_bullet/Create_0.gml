/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1C9BC775
/// @DnDArgument : "steps" "3"
alarm_set(0, 3);

/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 0156F7DC
/// @DnDArgument : "var" "collided_with"
collided_with = ds_list_create();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14969B50
/// @DnDArgument : "expr" "c_white"
/// @DnDArgument : "var" "bullet_color"
bullet_color = c_white;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 631354AD
/// @DnDArgument : "var" "speed"
/// @DnDArgument : "op" "2"
if(speed > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5F44DC11
	/// @DnDInput : 3
	/// @DnDParent : 631354AD
	/// @DnDArgument : "expr" "hspeed/global.game_speed"
	/// @DnDArgument : "expr_1" "vspeed/global.game_speed"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "vsp"
	/// @DnDArgument : "var_2" "speed"
	hsp = hspeed/global.game_speed;
	vsp = vspeed/global.game_speed;
	speed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CF38D9E
	/// @DnDParent : 631354AD
	/// @DnDArgument : "expr" "image_xscale"
	/// @DnDArgument : "var" "display_scale"
	display_scale = image_xscale;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 67AE0DAA
	/// @DnDInput : 2
	/// @DnDParent : 631354AD
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_1" "1"
	/// @DnDArgument : "instvar" "15"
	/// @DnDArgument : "instvar_1" "16"
	image_xscale = 1;
	image_yscale = 1;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 732BDD08
/// @DnDInput : 2
/// @DnDArgument : "expr" "-hsp"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "-vsp"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "var" "xprevious"
/// @DnDArgument : "var_1" "yprevious"
xprevious += -hsp;
yprevious += -vsp;