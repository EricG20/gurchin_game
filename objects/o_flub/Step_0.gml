/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46CA62DA
/// @DnDArgument : "expr" "instance_nearest(x,y,o_player)"
/// @DnDArgument : "var" "joe"
joe = instance_nearest(x,y,o_player);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0DA55EA6
/// @DnDArgument : "var" "distance_to_object(joe)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "200+o_game.combo_num"
if(distance_to_object(joe) < 200+o_game.combo_num){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5263A784
	/// @DnDParent : 0DA55EA6
	/// @DnDArgument : "expr" "scr_approach(x,joe.x, speed_buildup*global.game_speed)"
	/// @DnDArgument : "var" "x"
	x = scr_approach(x,joe.x, speed_buildup*global.game_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 68F36708
	/// @DnDParent : 0DA55EA6
	/// @DnDArgument : "expr" "scr_approach(y,joe.y-30, speed_buildup*global.game_speed)"
	/// @DnDArgument : "var" "y"
	y = scr_approach(y,joe.y-30, speed_buildup*global.game_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2561D5F4
	/// @DnDParent : 0DA55EA6
	/// @DnDArgument : "expr" ".5"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "speed_buildup"
	speed_buildup += .5;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1573470C
else{	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 251CB6D9
	/// @DnDParent : 1573470C
	/// @DnDArgument : "script" "check_ground"
	/// @DnDSaveInfo : "script" "check_ground"
	script_execute(check_ground);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1C7CABE2
	/// @DnDParent : 1573470C
	/// @DnDArgument : "script" "movement_stuff"
	/// @DnDSaveInfo : "script" "movement_stuff"
	script_execute(movement_stuff);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5A37DAA6
	/// @DnDParent : 1573470C
	/// @DnDArgument : "var" "incr"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "500"
	if(incr > 500){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0ED0E5DC
		/// @DnDParent : 5A37DAA6
		instance_destroy();}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 55FBDCD6
	/// @DnDParent : 1573470C
	/// @DnDArgument : "expr" "will_combine"
	if(will_combine){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CC0FEC3
		/// @DnDInput : 2
		/// @DnDParent : 55FBDCD6
		/// @DnDArgument : "expr" "flubbington"
		/// @DnDArgument : "expr_1" "noone"
		/// @DnDArgument : "var" "target_flub"
		/// @DnDArgument : "var_1" "target"
		target_flub = flubbington;
		target = noone;
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 201607FC
		/// @DnDParent : 55FBDCD6
		/// @DnDArgument : "x1" "-100"
		/// @DnDArgument : "x1_relative" "1"
		/// @DnDArgument : "y1" "-100"
		/// @DnDArgument : "y1_relative" "1"
		/// @DnDArgument : "x2" "100"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "100"
		/// @DnDArgument : "y2_relative" "1"
		/// @DnDArgument : "target" "flub_fellows"
		/// @DnDArgument : "target_temp" "1"
		/// @DnDArgument : "obj" "o_flub"
		/// @DnDArgument : "shape" "1"
		/// @DnDArgument : "aslist" "1"
		/// @DnDSaveInfo : "obj" "o_flub"
		var l201607FC_0 = ds_list_create();
		var l201607FC_1 = collision_rectangle_list(x + -100, y + -100, x + 100, y + 100, [o_flub], true, 1, l201607FC_0, true);
		var flub_fellows = l201607FC_0;if((l201607FC_1 > 0)){	/// @DnDAction : YoYo Games.Data Structures.List_Count
			/// @DnDVersion : 1
			/// @DnDHash : 28CF1552
			/// @DnDParent : 201607FC
			/// @DnDArgument : "assignee" "flub_fellows_num"
			/// @DnDArgument : "var" "flub_fellows"
			flub_fellows_num = ds_list_size(flub_fellows);
		
			/// @DnDAction : YoYo Games.Loops.For_Loop
			/// @DnDVersion : 1
			/// @DnDHash : 3586FB04
			/// @DnDParent : 201607FC
			/// @DnDArgument : "cond" "i < flub_fellows_num"
			for(i = 0; i < flub_fellows_num; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
				/// @DnDVersion : 1
				/// @DnDHash : 0DDAA63F
				/// @DnDParent : 3586FB04
				/// @DnDArgument : "assignee" "flub_index"
				/// @DnDArgument : "var" "flub_fellows"
				/// @DnDArgument : "index" "i"
				flub_index = ds_list_find_value(flub_fellows, i);
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6535A558
				/// @DnDParent : 3586FB04
				/// @DnDArgument : "var" "flub_index.flubbington"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "target_flub"
				if(flub_index.flubbington > target_flub){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 616EB145
					/// @DnDParent : 6535A558
					/// @DnDArgument : "expr" "flub_index.will_combine"
					if(flub_index.will_combine){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 06ACB226
						/// @DnDParent : 616EB145
						/// @DnDArgument : "expr" "flub_index"
						/// @DnDArgument : "var" "target"
						target = flub_index;}}}}
	
		/// @DnDAction : YoYo Games.Data Structures.DS_Free
		/// @DnDVersion : 1
		/// @DnDHash : 7C844425
		/// @DnDParent : 55FBDCD6
		/// @DnDArgument : "var" "flub_fellows"
		ds_list_destroy(flub_fellows);
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 236D1755
		/// @DnDParent : 55FBDCD6
		/// @DnDArgument : "obj" "target"
		var l236D1755_0 = false;l236D1755_0 = instance_exists(target);if(l236D1755_0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 75E81AED
			/// @DnDInput : 2
			/// @DnDParent : 236D1755
			/// @DnDArgument : "script" "scr_homing"
			/// @DnDArgument : "arg" "target"
			/// @DnDArgument : "arg_1" ".2"
			/// @DnDSaveInfo : "script" "scr_homing"
			script_execute(scr_homing, target, .2);}}}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2EAFEB12
/// @DnDArgument : "expr" ".1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "incr"
incr += .1*global.game_speed;