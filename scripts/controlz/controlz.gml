/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 222DF977
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "controlz"
function controlz() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 25F5EADC
	/// @DnDInput : 16
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
	/// @DnDArgument : "expr_10" "false"
	/// @DnDArgument : "expr_11" "false"
	/// @DnDArgument : "expr_12" "false"
	/// @DnDArgument : "expr_13" "false"
	/// @DnDArgument : "expr_14" "false"
	/// @DnDArgument : "expr_15" "false"
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
	/// @DnDArgument : "var_10" "shoot"
	/// @DnDArgument : "var_11" "shooting"
	/// @DnDArgument : "var_12" "shoot_release"
	/// @DnDArgument : "var_13" "special"
	/// @DnDArgument : "var_14" "swap"
	/// @DnDArgument : "var_15" "accept"
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
	shoot = false;
	shooting = false;
	shoot_release = false;
	special = false;
	swap = false;
	accept = false;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1186E466
	/// @DnDParent : 222DF977
	/// @DnDArgument : "var" "global.we_can_move"
	/// @DnDArgument : "value" "true"
	if(global.we_can_move == true){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4EB47F3D
		/// @DnDInput : 6
		/// @DnDParent : 1186E466
		/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.SHOOT)"
		/// @DnDArgument : "expr_1" "InputCheck(INPUT_VERB.SHOOT)"
		/// @DnDArgument : "expr_2" "InputReleased(INPUT_VERB.SHOOT)"
		/// @DnDArgument : "expr_3" "InputPressed(INPUT_VERB.SPECIAL)"
		/// @DnDArgument : "expr_4" "InputPressed(INPUT_VERB.SWAP)"
		/// @DnDArgument : "expr_5" "InputPressed(INPUT_VERB.ACCEPT)"
		/// @DnDArgument : "var" "shoot"
		/// @DnDArgument : "var_1" "shooting"
		/// @DnDArgument : "var_2" "shoot_release"
		/// @DnDArgument : "var_3" "special"
		/// @DnDArgument : "var_4" "swap"
		/// @DnDArgument : "var_5" "accept"
		shoot = InputPressed(INPUT_VERB.SHOOT);
		shooting = InputCheck(INPUT_VERB.SHOOT);
		shoot_release = InputReleased(INPUT_VERB.SHOOT);
		special = InputPressed(INPUT_VERB.SPECIAL);
		swap = InputPressed(INPUT_VERB.SWAP);
		accept = InputPressed(INPUT_VERB.ACCEPT);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6107D966
		/// @DnDParent : 1186E466
		/// @DnDArgument : "expr" "InputDeviceIsGamepad(InputPlayerGetDevice())"
		if(InputDeviceIsGamepad(InputPlayerGetDevice())){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 03FBDEBE
			/// @DnDParent : 6107D966
			/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.SHOOT)"
			if(InputPressed(INPUT_VERB.SHOOT)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 501CE0B9
				/// @DnDParent : 03FBDEBE
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "backup_shoot_release"
				backup_shoot_release = true;}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 663EE255
			/// @DnDParent : 6107D966
			/// @DnDArgument : "var" "InputCheck(INPUT_VERB.SHOOT)"
			/// @DnDArgument : "value" "false"
			if(InputCheck(INPUT_VERB.SHOOT) == false){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5EF24785
				/// @DnDParent : 663EE255
				/// @DnDArgument : "var" "backup_shoot_release"
				/// @DnDArgument : "value" "true"
				if(backup_shoot_release == true){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 31F37995
					/// @DnDParent : 5EF24785
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "shoot_release"
					shoot_release = true;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6CFDB2F0
					/// @DnDParent : 5EF24785
					/// @DnDArgument : "expr" "false"
					/// @DnDArgument : "var" "backup_shoot_release"
					backup_shoot_release = false;}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 00622425
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("A")"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CB70812
		/// @DnDParent : 00622425
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.LEFT)"
		/// @DnDArgument : "var" "left"
		left = InputCheck(INPUT_VERB.LEFT);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 7072A0EA
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("D")"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6A7A6490
		/// @DnDParent : 7072A0EA
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.RIGHT)"
		/// @DnDArgument : "var" "right"
		right = InputCheck(INPUT_VERB.RIGHT);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 06EC2502
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E16CFD0
		/// @DnDParent : 06EC2502
		/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.JUMP)"
		/// @DnDArgument : "var" "jump"
		jump = InputPressed(INPUT_VERB.JUMP);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 33919A27
		/// @DnDParent : 1186E466
		/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.BOOST)"
		if(InputPressed(INPUT_VERB.BOOST)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20F598CA
			/// @DnDParent : 33919A27
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "boost_start"
			boost_start = true;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79C5EF06
			/// @DnDParent : 33919A27
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
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "vk_shift"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5DE8FAFB
		/// @DnDParent : 7CDE99B6
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.BOOST)"
		/// @DnDArgument : "var" "boost"
		boost = InputCheck(INPUT_VERB.BOOST);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 68DE4694
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("W")"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 32F81E80
		/// @DnDParent : 68DE4694
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.UP)"
		/// @DnDArgument : "var" "up"
		up = InputCheck(INPUT_VERB.UP);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
		/// @DnDVersion : 1
		/// @DnDHash : 4DF19F0D
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("S")"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 40D478F5
		/// @DnDParent : 4DF19F0D
		/// @DnDArgument : "expr" "InputCheck(INPUT_VERB.DOWN)"
		/// @DnDArgument : "var" "down"
		down = InputCheck(INPUT_VERB.DOWN);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 78144639
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "button" "mb_right"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17B26735
		/// @DnDParent : 78144639
		/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.KICK)"
		/// @DnDArgument : "var" "melee"
		melee = InputPressed(INPUT_VERB.KICK);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 7E76A145
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDArgument : "key" "ord("R")"
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 01C21FD9
		/// @DnDParent : 7E76A145
		/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.RELOAD)"
		/// @DnDArgument : "var" "reload"
		reload = InputPressed(INPUT_VERB.RELOAD);
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
		/// @DnDVersion : 1
		/// @DnDHash : 3BAAF9A9
		/// @DnDDisabled : 1
		/// @DnDParent : 1186E466
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 69B7A0F7
		/// @DnDParent : 3BAAF9A9
		/// @DnDArgument : "expr" "InputReleased(INPUT_VERB.JUMP)"
		/// @DnDArgument : "var" "jump_release"
		jump_release = InputReleased(INPUT_VERB.JUMP);}}