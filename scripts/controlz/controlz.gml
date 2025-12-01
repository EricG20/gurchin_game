/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 222DF977
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "controlz"
function controlz() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25F5EADC
	/// @DnDInput : 10
	/// @DnDParent : 222DF977
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "expr_2" "false"
	/// @DnDArgument : "expr_3" "false"
	/// @DnDArgument : "expr_4" "false"
	/// @DnDArgument : "expr_5" "false"
	/// @DnDArgument : "expr_6" "false"
	/// @DnDArgument : "expr_7" "false"
	/// @DnDArgument : "expr_8" "false"
	/// @DnDArgument : "expr_9" "false"
	/// @DnDArgument : "var" "left"
	/// @DnDArgument : "var_1" "right"
	/// @DnDArgument : "var_2" "jump"
	/// @DnDArgument : "var_3" "boost_start"
	/// @DnDArgument : "var_4" "boost"
	/// @DnDArgument : "var_5" "up"
	/// @DnDArgument : "var_6" "down"
	/// @DnDArgument : "var_7" "reload"
	/// @DnDArgument : "var_8" "melee"
	/// @DnDArgument : "var_9" "jump_release"
	left = false;
	right = false;
	jump = false;
	boost_start = false;
	boost = false;
	up = false;
	down = false;
	reload = false;
	melee = false;
	jump_release = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1186E466
	/// @DnDParent : 222DF977
	/// @DnDArgument : "var" "global.game_speed"
	/// @DnDArgument : "op" "2"
	if(global.game_speed > 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 00622425
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("A")"
		var l00622425_0;l00622425_0 = keyboard_check(ord("A"));if (l00622425_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CB70812
			/// @DnDParent : 00622425
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "left"
			left = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7072A0EA
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("D")"
		var l7072A0EA_0;l7072A0EA_0 = keyboard_check(ord("D"));if (l7072A0EA_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A7A6490
			/// @DnDParent : 7072A0EA
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "right"
			right = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 06EC2502
		/// @DnDParent : 1186E466
		var l06EC2502_0;l06EC2502_0 = keyboard_check_pressed(vk_space);if (l06EC2502_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E16CFD0
			/// @DnDParent : 06EC2502
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump"
			jump = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7FFEFDFF
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "vk_shift"
		var l7FFEFDFF_0;l7FFEFDFF_0 = keyboard_check_pressed(vk_shift);if (l7FFEFDFF_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20F598CA
			/// @DnDParent : 7FFEFDFF
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "boost_start"
			boost_start = true;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79C5EF06
			/// @DnDParent : 7FFEFDFF
			/// @DnDArgument : "var" "v_fuel"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "op" "3"
			if(!(v_fuel <= 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 47A397E8
				/// @DnDParent : 79C5EF06
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "tick"
				tick = true;}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7CDE99B6
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "vk_shift"
		var l7CDE99B6_0;l7CDE99B6_0 = keyboard_check(vk_shift);if (l7CDE99B6_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5DE8FAFB
			/// @DnDParent : 7CDE99B6
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "boost"
			boost = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 68DE4694
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("W")"
		var l68DE4694_0;l68DE4694_0 = keyboard_check(ord("W"));if (l68DE4694_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32F81E80
			/// @DnDParent : 68DE4694
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "up"
			up = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 4DF19F0D
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("S")"
		var l4DF19F0D_0;l4DF19F0D_0 = keyboard_check(ord("S"));if (l4DF19F0D_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 40D478F5
			/// @DnDParent : 4DF19F0D
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "down"
			down = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 78144639
		/// @DnDParent : 1186E466
		/// @DnDArgument : "button" "mb_right"
		var l78144639_0;l78144639_0 = mouse_check_button_pressed(mb_right);if (l78144639_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 17B26735
			/// @DnDParent : 78144639
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "melee"
			melee = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7E76A145
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("R")"
		var l7E76A145_0;l7E76A145_0 = keyboard_check_pressed(ord("R"));if (l7E76A145_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01C21FD9
			/// @DnDParent : 7E76A145
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "reload"
			reload = true;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 3BAAF9A9
		/// @DnDParent : 1186E466
		var l3BAAF9A9_0;l3BAAF9A9_0 = keyboard_check_released(vk_space);if (l3BAAF9A9_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69B7A0F7
			/// @DnDParent : 3BAAF9A9
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "jump_release"
			jump_release = true;}}}