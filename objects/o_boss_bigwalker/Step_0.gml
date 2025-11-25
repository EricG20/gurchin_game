/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 154D1658
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 35221143
	/// @DnDParent : 154D1658
	/// @DnDArgument : "var" "state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "WALKER.DIE"
	if(!(state == WALKER.DIE)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0414A6E7
		/// @DnDParent : 35221143
		/// @DnDArgument : "expr" "200"
		/// @DnDArgument : "var" "cooldown"
		cooldown = 200;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 17128418
	/// @DnDParent : 154D1658
	/// @DnDArgument : "expr" "WALKER.DIE"
	/// @DnDArgument : "var" "state"
	state = WALKER.DIE;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 61E770CB
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 1E782925
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 71855E70
/// @DnDArgument : "expr" "state"
var l71855E70_0 = state;switch(l71855E70_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5C769A33
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "WALKER.IDLE"
	case WALKER.IDLE:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 73EC8286
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7DA4A276
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 292EB1B8
		/// @DnDParent : 5C769A33
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6D823E03
			/// @DnDParent : 292EB1B8
			/// @DnDArgument : "expr" "WALKER.WALK"
			/// @DnDArgument : "var" "state"
			state = WALKER.WALK;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2B1EF3E6
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "WALKER.DIE"
	case WALKER.DIE:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2542337F
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 27A847E3
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "var" "cooldown mod 3"
		if(cooldown mod 3 == 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6778A52B
			/// @DnDInput : 4
			/// @DnDParent : 27A847E3
			/// @DnDArgument : "script" "scr_makeexplosion"
			/// @DnDArgument : "arg" "x+irandom_range(-60,60)"
			/// @DnDArgument : "arg_1" "y+irandom_range(-200,0)"
			/// @DnDArgument : "arg_2" "false"
			/// @DnDArgument : "arg_3" "irandom_range(.9,1.1)"
			/// @DnDSaveInfo : "script" "scr_makeexplosion"
			script_execute(scr_makeexplosion, x+irandom_range(-60,60), y+irandom_range(-200,0), false, irandom_range(.9,1.1));}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 639CFAB7
		/// @DnDParent : 2B1EF3E6
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 02A6BB0E
			/// @DnDParent : 639CFAB7
			instance_destroy();}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5AC82CD2
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "WALKER.WALK"
	case WALKER.WALK:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1ABB2E07
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1FC06FD6
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "expr" "facing*4"
		/// @DnDArgument : "var" "hsp"
		hsp = facing*4;
	
		/// @DnDAction : YoYo Games.Collisions.If_Collision_Shape
		/// @DnDVersion : 1.1
		/// @DnDHash : 61547A32
		/// @DnDParent : 5AC82CD2
		/// @DnDArgument : "x1" "x"
		/// @DnDArgument : "y1" "y-80"
		/// @DnDArgument : "x2" "facing*500"
		/// @DnDArgument : "x2_relative" "1"
		/// @DnDArgument : "y2" "y-80"
		/// @DnDArgument : "obj" "o_solid"
		/// @DnDSaveInfo : "obj" "o_solid"
		var l61547A32_0 = collision_line(x, y-80, x + facing*500, y-80, o_solid, true, 1);if((l61547A32_0)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 520B2AD6
			/// @DnDInput : 2
			/// @DnDParent : 61547A32
			/// @DnDArgument : "expr" "WALKER.JUMP"
			/// @DnDArgument : "expr_1" "o_player.x"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "destination"
			state = WALKER.JUMP;
			destination = o_player.x;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5D3E09EA
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "WALKER.JUMP"
	case WALKER.JUMP:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 361CE683
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 096BD0C1
		/// @DnDInput : 2
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "expr" "-1.2"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "1"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "var" "vsp"
		/// @DnDArgument : "var_1" "cooldown"
		vsp += -1.2;
		cooldown += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6681D6CE
		/// @DnDParent : 5D3E09EA
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "60"
		if(cooldown >= 60){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2211CB8B
			/// @DnDInput : 2
			/// @DnDParent : 6681D6CE
			/// @DnDArgument : "expr" "WALKER.LAND"
			/// @DnDArgument : "expr_1" "destination"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "x"
			state = WALKER.LAND;
			x = destination;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 7893C49B
			/// @DnDParent : 6681D6CE
			/// @DnDArgument : "script" "face_gunna"
			/// @DnDSaveInfo : "script" "face_gunna"
			script_execute(face_gunna);
		
			/// @DnDAction : YoYo Games.Collisions.If_Object_At
			/// @DnDVersion : 1.1
			/// @DnDHash : 4D3ABB7E
			/// @DnDParent : 6681D6CE
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "target" "stuck"
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "object" "o_solid"
			/// @DnDSaveInfo : "object" "o_solid"
			var l4D3ABB7E_0 = instance_place(x + 0, y + 0, [o_solid]);
			var stuck = l4D3ABB7E_0;if ((l4D3ABB7E_0 > 0)){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45BCC7F9
				/// @DnDParent : 4D3ABB7E
				/// @DnDArgument : "expr" "facing*400"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "x"
				x += facing*400;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 525E8225
	/// @DnDParent : 71855E70
	/// @DnDArgument : "const" "WALKER.LAND"
	case WALKER.LAND:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 285FA746
		/// @DnDParent : 525E8225
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 585A91C3
		/// @DnDParent : 525E8225
		/// @DnDArgument : "expr" "on_ground"
		if(on_ground){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 1ACD7A5C
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "script" "scr_screenshake"
			/// @DnDArgument : "arg" "40"
			/// @DnDArgument : "arg_1" "40"
			/// @DnDSaveInfo : "script" "scr_screenshake"
			script_execute(scr_screenshake, 40, 40);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C2E388E
			/// @DnDInput : 2
			/// @DnDParent : 585A91C3
			/// @DnDArgument : "expr" "100"
			/// @DnDArgument : "expr_1" "WALKER.IDLE"
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "var_1" "state"
			cooldown = 100;
			state = WALKER.IDLE;}	break;}