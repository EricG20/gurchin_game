/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4FFB0FDA
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 4
/// @DnDArgument : "funcName" "scr_makeexplosion"
/// @DnDArgument : "arg" "x_offset=x"
/// @DnDArgument : "arg_1" "y_offset=y"
/// @DnDArgument : "arg_2" "include_bottom=true"
/// @DnDArgument : "arg_3" "scale=1"
function scr_makeexplosion(x_offset=x, y_offset=y, include_bottom=true, scale=1) {	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2660D99B
	/// @DnDInput : 2
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "script" "scr_screenshake"
	/// @DnDArgument : "arg" "10*scale"
	/// @DnDArgument : "arg_1" "10*scale"
	/// @DnDSaveInfo : "script" "scr_screenshake"
	script_execute(scr_screenshake, 10*scale, 10*scale);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4FB63EF9
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "times" "35*scale"
	repeat(35*scale){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1790EA3A
		/// @DnDParent : 4FB63EF9
		/// @DnDArgument : "xpos" "x_offset+irandom_range(-10*scale,10*scale)"
		/// @DnDArgument : "ypos" "y_offset+irandom_range(-10*scale,10*scale)"
		/// @DnDArgument : "var" "shit"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_smoke"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_smoke"
		var shit = instance_create_layer(x_offset+irandom_range(-10*scale,10*scale), y_offset+irandom_range(-10*scale,10*scale), "Effects", e_smoke);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7546C28B
		/// @DnDParent : 4FB63EF9
		/// @DnDArgument : "expr" "clamp(scale,1,1.5)"
		/// @DnDArgument : "var" "shit.scale"
		shit.scale = clamp(scale,1,1.5);
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4610C213
		/// @DnDParent : 4FB63EF9
		/// @DnDArgument : "var" "dir"
		/// @DnDArgument : "value" "point_direction(x_offset,y_offset,shit.x,shit.y)"
		var dir = point_direction(x_offset,y_offset,shit.x,shit.y);
	
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
			/// @DnDArgument : "value" "random_range(0,10*scale)*2"
			/// @DnDArgument : "value_1" "dir"
			/// @DnDArgument : "instvar" "3"
			/// @DnDArgument : "instvar_1" "2"
			speed = random_range(0,10*scale)*2;
			direction = dir;
		}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 25878027
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "expr" "include_bottom"
	if(include_bottom){	/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 3CE4C085
		/// @DnDParent : 25878027
		/// @DnDArgument : "times" "15*scale"
		repeat(15*scale){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 038A84D3
			/// @DnDParent : 3CE4C085
			/// @DnDArgument : "xpos" "x_offset+irandom_range(-20*scale,20*scale)"
			/// @DnDArgument : "ypos" "y_offset"
			/// @DnDArgument : "var" "shit"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "e_smoke"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_smoke"
			var shit = instance_create_layer(x_offset+irandom_range(-20*scale,20*scale), y_offset, "Effects", e_smoke);
		
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
				/// @DnDArgument : "value" "random_range(-25,25)*2*scale"
				/// @DnDArgument : "instvar" "4"
				hspeed = random_range(-25,25)*2*scale;
			}}}

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2D6420D4
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "xpos" "x_offset"
	/// @DnDArgument : "ypos" "y_offset+-5"
	/// @DnDArgument : "var" "lol"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "e_whiteflash"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_whiteflash"
	var lol = instance_create_layer(x_offset, y_offset+-5, "Effects", e_whiteflash);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 78BD3D07
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "times" "irandom_range(1,3)"
	repeat(irandom_range(1,3)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 40A9AEC6
		/// @DnDParent : 78BD3D07
		/// @DnDArgument : "xpos" "x_offset"
		/// @DnDArgument : "ypos" "y_offset-10"
		/// @DnDArgument : "objectid" "e_roboguts"
		/// @DnDSaveInfo : "objectid" "e_roboguts"
		instance_create_layer(x_offset, y_offset-10, "Instances", e_roboguts);}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 4A891643
	/// @DnDInput : 2
	/// @DnDApplyTo : lol
	/// @DnDParent : 4FFB0FDA
	/// @DnDArgument : "value" "2*scale"
	/// @DnDArgument : "value_1" "2*scale"
	/// @DnDArgument : "instvar" "15"
	/// @DnDArgument : "instvar_1" "16"
	with(lol) {
	image_xscale = 2*scale;
	image_yscale = 2*scale;
	}}