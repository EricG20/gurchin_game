/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4FFB0FDA
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "scr_makeBIGexplosion"
function scr_makeBIGexplosion() {	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2660D99B
	/// @DnDInput : 2
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "script" "scr_screenshake"
	/// @DnDArgument : "arg" "40"
	/// @DnDArgument : "arg_1" "40"
	/// @DnDSaveInfo : "script" "scr_screenshake"
	script_execute(scr_screenshake, 40, 40);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4FB63EF9
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "times" "50"
	repeat(50){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1790EA3A
		/// @DnDParent : 4FB63EF9
		/// @DnDArgument : "xpos" "irandom_range(-20,20)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "irandom_range(-20,20)"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "shit"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_smoke"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_smoke"
		var shit = instance_create_layer(x + irandom_range(-20,20), y + irandom_range(-20,20), "Effects", e_smoke);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4610C213
		/// @DnDParent : 4FB63EF9
		/// @DnDArgument : "var" "dir"
		/// @DnDArgument : "value" "point_direction(x,y,shit.x,shit.y)"
		var dir = point_direction(x,y,shit.x,shit.y);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 0721A002
		/// @DnDApplyTo : shit
		/// @DnDParent : 4FB63EF9
		with(shit) {
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 623E85BC
			/// @DnDParent : 0721A002
			/// @DnDArgument : "script" "gradient_int"
			/// @DnDSaveInfo : "script" "gradient_int"
			script_execute(gradient_int);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 71806C8C
			/// @DnDParent : 0721A002
			/// @DnDArgument : "var" "colurr"
			/// @DnDArgument : "script" "gradient_create"
			/// @DnDSaveInfo : "script" "gradient_create"
			colurr = script_execute(gradient_create);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 73A0BEF1
			/// @DnDInput : 2
			/// @DnDParent : 0721A002
			/// @DnDArgument : "expr" "colurr"
			/// @DnDArgument : "expr_1" "random_range(-.5,-.01)"
			/// @DnDArgument : "var" "shit.ower"
			/// @DnDArgument : "var_1" "shit.zoop"
			shit.ower = colurr;
			shit.zoop = random_range(-.5,-.01);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1B19B4F8
			/// @DnDInput : 3
			/// @DnDParent : 0721A002
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_white"
			/// @DnDArgument : "arg_2" "0"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_white, 0);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2ADC84E6
			/// @DnDInput : 3
			/// @DnDParent : 0721A002
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_orange"
			/// @DnDArgument : "arg_2" "0.2"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_orange, 0.2);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1368D6D2
			/// @DnDInput : 3
			/// @DnDParent : 0721A002
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_red"
			/// @DnDArgument : "arg_2" "0.5"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_red, 0.5);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6734FDDC
			/// @DnDInput : 3
			/// @DnDParent : 0721A002
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_black"
			/// @DnDArgument : "arg_2" "1"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_black, 1);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3F481442
			/// @DnDInput : 2
			/// @DnDParent : 0721A002
			/// @DnDArgument : "value" "random_range(0,10)*2"
			/// @DnDArgument : "value_1" "dir"
			/// @DnDArgument : "instvar" "3"
			/// @DnDArgument : "instvar_1" "2"
			speed = random_range(0,10)*2;
			direction = dir;
		}}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 3CE4C085
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "times" "15"
	repeat(15){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 038A84D3
		/// @DnDParent : 3CE4C085
		/// @DnDArgument : "xpos" "irandom_range(-35,35)"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "shit"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_smoke"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_smoke"
		var shit = instance_create_layer(x + irandom_range(-35,35), y + 0, "Effects", e_smoke);
	
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 45DAA289
		/// @DnDApplyTo : shit
		/// @DnDParent : 3CE4C085
		with(shit) {
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3205FAF4
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "script" "gradient_int"
			/// @DnDSaveInfo : "script" "gradient_int"
			script_execute(gradient_int);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6110DFCC
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "var" "colurr"
			/// @DnDArgument : "script" "gradient_create"
			/// @DnDSaveInfo : "script" "gradient_create"
			colurr = script_execute(gradient_create);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2CFC8168
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "expr" "colurr"
			/// @DnDArgument : "var" "shit.ower"
			shit.ower = colurr;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 70A88647
			/// @DnDInput : 3
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_white"
			/// @DnDArgument : "arg_2" "0"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_white, 0);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0630E013
			/// @DnDInput : 3
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_orange"
			/// @DnDArgument : "arg_2" "0.05"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_orange, 0.05);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 371B80F9
			/// @DnDInput : 3
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_red"
			/// @DnDArgument : "arg_2" "0.2"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_red, 0.2);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 676A8CFC
			/// @DnDInput : 3
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "script" "gradient_set_color"
			/// @DnDArgument : "arg" "colurr"
			/// @DnDArgument : "arg_1" "c_black"
			/// @DnDArgument : "arg_2" "1"
			/// @DnDSaveInfo : "script" "gradient_set_color"
			script_execute(gradient_set_color, colurr, c_black, 1);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 72271367
			/// @DnDParent : 45DAA289
			/// @DnDArgument : "value" "random_range(-25,25)*2"
			/// @DnDArgument : "instvar" "4"
			hspeed = random_range(-25,25)*2;
		}}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D6420D4
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-5"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "lol"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "e_flash"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_flash"
	var lol = instance_create_layer(x + 0, y + -5, "Effects", e_flash);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 78BD3D07
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "times" "irandom_range(1,3)"
	repeat(irandom_range(1,3)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 40A9AEC6
		/// @DnDParent : 78BD3D07
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "-10"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_roboguts"
		/// @DnDSaveInfo : "objectid" "e_roboguts"
		instance_create_layer(x + 0, y + -10, "Instances", e_roboguts);}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4A891643
	/// @DnDInput : 2
	/// @DnDApplyTo : lol
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "value" "3"
	/// @DnDArgument : "value_1" "3"
	/// @DnDArgument : "instvar" "15"
	/// @DnDArgument : "instvar_1" "16"
	with(lol) {
	image_xscale = 3;
	image_yscale = 3;
	}}