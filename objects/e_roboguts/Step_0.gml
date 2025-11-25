/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 43A81694
/// @DnDInput : 3
/// @DnDArgument : "expr" "spin"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" ".2"
/// @DnDArgument : "expr_relative_1" "1"
/// @DnDArgument : "expr_2" ".02"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "var_1" "vspeed"
/// @DnDArgument : "var_2" "doop"
image_angle += spin;
vspeed += .2;
doop += .02;

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 0A0908E3
/// @DnDInput : 3
/// @DnDArgument : "value" "1-doop/2"
/// @DnDArgument : "value_1" "1.3-doop"
/// @DnDArgument : "value_2" "1.3-doop"
/// @DnDArgument : "instvar" "13"
/// @DnDArgument : "instvar_1" "15"
/// @DnDArgument : "instvar_2" "16"
image_alpha = 1-doop/2;
image_xscale = 1.3-doop;
image_yscale = 1.3-doop;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0C47DD61
/// @DnDArgument : "var" "current_time mod 3"
if(current_time mod 3 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 099CED79
	/// @DnDParent : 0C47DD61
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "shit"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "e_smoke"
	/// @DnDSaveInfo : "objectid" "e_smoke"
	var shit = instance_create_layer(x + 0, y + 0, "Instances", e_smoke);

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 572A2402
	/// @DnDParent : 0C47DD61
	/// @DnDArgument : "var" "dir"
	/// @DnDArgument : "value" "point_direction(x,y,shit.x,shit.y)"
	var dir = point_direction(x,y,shit.x,shit.y);

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 51C6BF25
	/// @DnDApplyTo : shit
	/// @DnDParent : 0C47DD61
	with(shit) {
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 61EECAFB
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "script" "gradient_int"
		/// @DnDSaveInfo : "script" "gradient_int"
		script_execute(gradient_int);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 38E4E3C4
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "var" "colurr"
		/// @DnDArgument : "script" "gradient_create"
		/// @DnDSaveInfo : "script" "gradient_create"
		colurr = script_execute(gradient_create);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4837CCED
		/// @DnDInput : 2
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "expr" "colurr"
		/// @DnDArgument : "expr_1" "random_range(-.5,-.01)"
		/// @DnDArgument : "var" "shit.ower"
		/// @DnDArgument : "var_1" "shit.zoop"
		shit.ower = colurr;
		shit.zoop = random_range(-.5,-.01);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 01DDB387
		/// @DnDInput : 3
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "script" "gradient_set_color"
		/// @DnDArgument : "arg" "colurr"
		/// @DnDArgument : "arg_1" "c_white"
		/// @DnDArgument : "arg_2" "0"
		/// @DnDSaveInfo : "script" "gradient_set_color"
		script_execute(gradient_set_color, colurr, c_white, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 64567E4D
		/// @DnDInput : 3
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "script" "gradient_set_color"
		/// @DnDArgument : "arg" "colurr"
		/// @DnDArgument : "arg_1" "c_orange"
		/// @DnDArgument : "arg_2" "0.2"
		/// @DnDSaveInfo : "script" "gradient_set_color"
		script_execute(gradient_set_color, colurr, c_orange, 0.2);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 47D71517
		/// @DnDInput : 3
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "script" "gradient_set_color"
		/// @DnDArgument : "arg" "colurr"
		/// @DnDArgument : "arg_1" "c_red"
		/// @DnDArgument : "arg_2" "0.5"
		/// @DnDSaveInfo : "script" "gradient_set_color"
		script_execute(gradient_set_color, colurr, c_red, 0.5);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 4A5FDC2C
		/// @DnDInput : 3
		/// @DnDParent : 51C6BF25
		/// @DnDArgument : "script" "gradient_set_color"
		/// @DnDArgument : "arg" "colurr"
		/// @DnDArgument : "arg_1" "c_black"
		/// @DnDArgument : "arg_2" "1"
		/// @DnDSaveInfo : "script" "gradient_set_color"
		script_execute(gradient_set_color, colurr, c_black, 1);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39C83AA7
	/// @DnDParent : 0C47DD61
	/// @DnDArgument : "var" "doop"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1"
	if(doop >= 1){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6D18B399
		/// @DnDParent : 39C83AA7
		instance_destroy();}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4CF937B1
	/// @DnDDisabled : 1
	/// @DnDParent : 0C47DD61
	/// @DnDArgument : "expr" "doop-.1"
	/// @DnDArgument : "var" "shit.mov"}