/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5A590737
/// @DnDArgument : "expr" "o_game.state"
var l5A590737_0 = o_game.state;switch(l5A590737_0){	/// @DnDAction : YoYo Games.Switch.Default
	/// @DnDVersion : 1
	/// @DnDHash : 50E88747
	/// @DnDParent : 5A590737
	default:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 58D0803D
		/// @DnDParent : 50E88747
		/// @DnDArgument : "expr" "o_player.x-(o_player.x-mouse_x)*panning_strength"
		/// @DnDArgument : "var" "x"
		x = o_player.x-(o_player.x-mouse_x)*panning_strength;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06CF1C63
		/// @DnDParent : 50E88747
		/// @DnDArgument : "expr" "o_player.y-(o_player.y-mouse_y)*panning_strength"
		/// @DnDArgument : "var" "y"
		y = o_player.y-(o_player.y-mouse_y)*panning_strength;	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 119627A6
	/// @DnDParent : 5A590737
	/// @DnDArgument : "const" "gm.BOSS"
	case gm.BOSS:	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FEA1F1E
		/// @DnDInput : 2
		/// @DnDParent : 119627A6
		/// @DnDArgument : "var" "enem_x"
		/// @DnDArgument : "value" "o_player.x"
		/// @DnDArgument : "var_1" "enem_y"
		/// @DnDArgument : "value_1" "o_player.y"
		var enem_x = o_player.x;
		var enem_y = o_player.y;
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 46153BA0
		/// @DnDParent : 119627A6
		/// @DnDArgument : "expr" "room"
		var l46153BA0_0 = room;switch(l46153BA0_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 6FA6D051
			/// @DnDParent : 46153BA0
			/// @DnDArgument : "const" "boss_0"
			case boss_0:	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 3562FEC6
				/// @DnDParent : 6FA6D051
				/// @DnDArgument : "obj" "o_B_gunclaw"
				/// @DnDSaveInfo : "obj" "o_B_gunclaw"
				var l3562FEC6_0 = false;l3562FEC6_0 = instance_exists(o_B_gunclaw);if(l3562FEC6_0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 39DEF1F3
					/// @DnDInput : 2
					/// @DnDParent : 3562FEC6
					/// @DnDArgument : "expr" "o_B_gunclaw.x"
					/// @DnDArgument : "expr_1" "o_B_gunclaw.y"
					/// @DnDArgument : "var" "enem_x"
					/// @DnDArgument : "var_1" "enem_y"
					enem_x = o_B_gunclaw.x;
					enem_y = o_B_gunclaw.y;}	break;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 62FAE93B
		/// @DnDParent : 119627A6
		/// @DnDArgument : "expr" "(o_player.x + enem_x)/2"
		/// @DnDArgument : "var" "x"
		x = (o_player.x + enem_x)/2;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57A815F5
		/// @DnDParent : 119627A6
		/// @DnDArgument : "expr" "(o_player.y + enem_y)/2"
		/// @DnDArgument : "var" "y"
		y = (o_player.y + enem_y)/2;
	
		/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 212751FA
		/// @DnDParent : 119627A6
		/// @DnDArgument : "obj" "o_game.le_boss"
		var l212751FA_0 = false;l212751FA_0 = instance_exists(o_game.le_boss);if(l212751FA_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70D69B4D
			/// @DnDParent : 212751FA
			/// @DnDArgument : "var" "o_game.le_boss.hp"
			/// @DnDArgument : "op" "3"
			if(o_game.le_boss.hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3C84485E
				/// @DnDInput : 2
				/// @DnDParent : 70D69B4D
				/// @DnDArgument : "expr" "enem_x"
				/// @DnDArgument : "expr_1" "enem_y"
				/// @DnDArgument : "var" "x"
				/// @DnDArgument : "var_1" "y"
				x = enem_x;
				y = enem_y;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 257C03C3
	/// @DnDParent : 5A590737
	/// @DnDArgument : "const" "gm.GATE"
	case gm.GATE:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 77225BED
		/// @DnDParent : 257C03C3
		/// @DnDArgument : "expr" "follow_tracker"
		if(follow_tracker){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 24D0A208
			/// @DnDInput : 2
			/// @DnDParent : 77225BED
			/// @DnDArgument : "expr" "(os_tracker.x - x)/6"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "(os_tracker.y - y)/6"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "var_1" "y"
			x += (os_tracker.x - x)/6;
			y += (os_tracker.y - y)/6;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 5A019118
		/// @DnDParent : 257C03C3
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7B52CD45
			/// @DnDParent : 5A019118
			/// @DnDArgument : "expr" "(o_player.x + mouse_x)/2"
			/// @DnDArgument : "var" "x"
			x = (o_player.x + mouse_x)/2;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E9A34A7
			/// @DnDParent : 5A019118
			/// @DnDArgument : "expr" "(o_player.y + mouse_y)/2"
			/// @DnDArgument : "var" "y"
			y = (o_player.y + mouse_y)/2;}	break;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2E617549
/// @DnDInput : 3
/// @DnDArgument : "script" "easy_cam_set_position"
/// @DnDArgument : "arg" "id"
/// @DnDArgument : "arg_1" "clamp(x+shakeh,base_width/2,room_width-base_width/2)"
/// @DnDArgument : "arg_2" "clamp(y+shakev,base_height/2,room_height-base_height/2)"
/// @DnDSaveInfo : "script" "easy_cam_set_position"
script_execute(easy_cam_set_position, id, clamp(x+shakeh,base_width/2,room_width-base_width/2), clamp(y+shakev,base_height/2,room_height-base_height/2));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 65E16FF4
/// @DnDInput : 2
/// @DnDArgument : "expr" "shakeh*-.8"
/// @DnDArgument : "expr_1" "shakev*-.8"
/// @DnDArgument : "var" "shakeh"
/// @DnDArgument : "var_1" "shakev"
shakeh = shakeh*-.8;
shakev = shakev*-.8;