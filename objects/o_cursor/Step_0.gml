/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4C43980B
/// @DnDArgument : "expr" "o_game.state"
var l4C43980B_0 = o_game.state;switch(l4C43980B_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 30E67E2A
	/// @DnDParent : 4C43980B
	default:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2F3BE442
		/// @DnDParent : 30E67E2A
		/// @DnDArgument : "expr" "s_cursor"
		/// @DnDArgument : "var" "sprite_index"
		sprite_index = s_cursor;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 368C2BF6
	/// @DnDParent : 4C43980B
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1DA9D3AE
		/// @DnDParent : 368C2BF6
		/// @DnDArgument : "expr" "o_game.paused"
		if(o_game.paused){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0B917E43
			/// @DnDParent : 1DA9D3AE
			/// @DnDArgument : "expr" "s_cursor"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_cursor;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 41C4DD28
		/// @DnDParent : 368C2BF6
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2666AF37
			/// @DnDParent : 41C4DD28
			/// @DnDArgument : "expr" "s_corsair"
			/// @DnDArgument : "var" "sprite_index"
			sprite_index = s_corsair;}	break;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 67D2C00D
/// @DnDArgument : "expr" "o_game.state"
var l67D2C00D_0 = o_game.state;switch(l67D2C00D_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 65B50266
	/// @DnDParent : 67D2C00D
	/// @DnDArgument : "const" "gm.PYLON"
	case gm.PYLON:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1398308A
		/// @DnDParent : 65B50266
		/// @DnDArgument : "expr" "InputDeviceIsGamepad(InputPlayerGetDevice())"
		if(InputDeviceIsGamepad(InputPlayerGetDevice())){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 79B18CCC
			/// @DnDParent : 1398308A
			/// @DnDArgument : "var" "InputDistance(INPUT_CLUSTER.AIMING)"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" ".4"
			if(InputDistance(INPUT_CLUSTER.AIMING) > .4){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 5D8A4D15
				/// @DnDInput : 3
				/// @DnDParent : 79B18CCC
				/// @DnDArgument : "expr" "InputDistance(INPUT_CLUSTER.AIMING)"
				/// @DnDArgument : "expr_1" "lengthdir_x(400*fub,InputDirection(0, INPUT_CLUSTER.AIMING))"
				/// @DnDArgument : "expr_2" "lengthdir_y(400*fub,InputDirection(0, INPUT_CLUSTER.AIMING))"
				/// @DnDArgument : "var" "fub"
				/// @DnDArgument : "var_1" "frubx"
				/// @DnDArgument : "var_2" "fruby"
				fub = InputDistance(INPUT_CLUSTER.AIMING);
				frubx = lengthdir_x(400*fub,InputDirection(0, INPUT_CLUSTER.AIMING));
				fruby = lengthdir_y(400*fub,InputDirection(0, INPUT_CLUSTER.AIMING));}
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 111ADB5E
			/// @DnDParent : 1398308A
			/// @DnDArgument : "x" "o_player.x+frubx"
			/// @DnDArgument : "y" "o_player.y-45+fruby"
			x = o_player.x+frubx;y = o_player.y-45+fruby;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5F102EB2
		/// @DnDParent : 65B50266
		else{	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 6D189EB1
			/// @DnDParent : 5F102EB2
			/// @DnDArgument : "x" "InputMouseRoomX()"
			/// @DnDArgument : "y" "InputMouseRoomY()"
			x = InputMouseRoomX();y = InputMouseRoomY();}	break;

	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 1508AF3E
	/// @DnDParent : 67D2C00D
	default:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 68B4D1E0
		/// @DnDParent : 1508AF3E
		/// @DnDArgument : "expr" "InputDeviceIsGamepad(InputPlayerGetDevice())"
		if(InputDeviceIsGamepad(InputPlayerGetDevice())){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6C22853E
			/// @DnDDisabled : 1
			/// @DnDParent : 68B4D1E0
			/// @DnDArgument : "var" "InputDistance(INPUT_CLUSTER.AIMING)"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" ".4"
		
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5C0D53A7
			/// @DnDInput : 3
			/// @DnDParent : 68B4D1E0
			/// @DnDArgument : "expr" "InputDistance(INPUT_CLUSTER.NAVIGATION)"
			/// @DnDArgument : "expr_1" "lengthdir_x(20*fub,InputDirection(0, INPUT_CLUSTER.NAVIGATION))"
			/// @DnDArgument : "expr_2" "lengthdir_y(20*fub,InputDirection(0, INPUT_CLUSTER.NAVIGATION))"
			/// @DnDArgument : "var" "fub"
			/// @DnDArgument : "var_1" "frubx"
			/// @DnDArgument : "var_2" "fruby"
			fub = InputDistance(INPUT_CLUSTER.NAVIGATION);
			frubx = lengthdir_x(20*fub,InputDirection(0, INPUT_CLUSTER.NAVIGATION));
			fruby = lengthdir_y(20*fub,InputDirection(0, INPUT_CLUSTER.NAVIGATION));
		
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 71A4B11E
			/// @DnDParent : 68B4D1E0
			/// @DnDArgument : "x" "frubx"
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y" "fruby"
			/// @DnDArgument : "y_relative" "1"
			x += frubx;y += fruby;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 03F3630B
			/// @DnDInput : 2
			/// @DnDParent : 68B4D1E0
			/// @DnDArgument : "expr" "clamp(x,0,room_width)"
			/// @DnDArgument : "expr_1" "clamp(y,0,room_width)"
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "var_1" "y"
			x = clamp(x,0,room_width);
			y = clamp(y,0,room_width);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 638D6F3F
		/// @DnDParent : 1508AF3E
		else{	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 67351426
			/// @DnDParent : 638D6F3F
			/// @DnDArgument : "x" "InputMouseRoomX()"
			/// @DnDArgument : "y" "InputMouseRoomY()"
			x = InputMouseRoomX();y = InputMouseRoomY();}	break;}