/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DBF59C7
/// @DnDInput : 2
/// @DnDArgument : "var" "head_offset_x"
/// @DnDArgument : "var_1" "head_offset_y"
head_offset_x = 0;
head_offset_y = 0;

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 1DD67932
/// @DnDArgument : "var" "mount"
if(mount == undefined){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 33FA4604
	/// @DnDParent : 1DD67932
	/// @DnDArgument : "expr" "state"
	var l33FA4604_0 = state;switch(l33FA4604_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2572907C
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.DIE"
		case ps.DIE:	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3E40A4EE
			/// @DnDParent : 2572907C
			/// @DnDArgument : "script" "controlz"
			/// @DnDSaveInfo : "script" "controlz"
			script_execute(controlz);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 340F198D
			/// @DnDParent : 2572907C
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6460D256
			/// @DnDParent : 2572907C
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 7DF79EA4
			/// @DnDParent : 2572907C
			/// @DnDArgument : "expr" "jump"
			if(jump){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 70CD8E37
				/// @DnDParent : 7DF79EA4
				/// @DnDArgument : "script" "scr_respawn"
				/// @DnDSaveInfo : "script" "scr_respawn"
				script_execute(scr_respawn);}	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 77BB61EB
		/// @DnDParent : 33FA4604
		default:	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 779DAEF6
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 49AB9BF3
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "script" "controlz"
			/// @DnDSaveInfo : "script" "controlz"
			script_execute(controlz);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 198EB6BB
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "script" "player_state"
			/// @DnDSaveInfo : "script" "player_state"
			script_execute(player_state);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 158480EB
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 13BB0974
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "script" "player_controlz"
			/// @DnDSaveInfo : "script" "player_controlz"
			script_execute(player_controlz);
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 5A4910E0
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "expr" "floor(image_index)"
			var l5A4910E0_0 = floor(image_index);switch(l5A4910E0_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 74D85F9B
				/// @DnDParent : 5A4910E0
				case 0:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 71593B04
					/// @DnDInput : 2
					/// @DnDParent : 74D85F9B
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3D68D9D5
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "1"
				case 1:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 425C2DD9
					/// @DnDInput : 2
					/// @DnDParent : 3D68D9D5
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 21218983
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "2"
				case 2:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 305E684B
					/// @DnDInput : 2
					/// @DnDParent : 21218983
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -1;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 001042ED
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "3"
				case 3:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D69E91C
					/// @DnDInput : 2
					/// @DnDParent : 001042ED
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -1;	break;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 77AB7D3F
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.WALK"
		case ps.WALK:	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6A4514DC
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 144E4512
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "script" "controlz"
			/// @DnDSaveInfo : "script" "controlz"
			script_execute(controlz);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 78C5D244
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "script" "player_controlz"
			/// @DnDSaveInfo : "script" "player_controlz"
			script_execute(player_controlz);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 10E46155
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "script" "player_state"
			/// @DnDSaveInfo : "script" "player_state"
			script_execute(player_state);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6E7B935E
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 1115F6B4
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "expr" "floor(image_index)"
			var l1115F6B4_0 = floor(image_index);switch(l1115F6B4_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 097AC645
				/// @DnDParent : 1115F6B4
				case 0:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 229C3599
					/// @DnDInput : 2
					/// @DnDParent : 097AC645
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 1D2F05B1
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "1"
				case 1:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6DC9CCD5
					/// @DnDInput : 2
					/// @DnDParent : 1D2F05B1
					/// @DnDArgument : "expr_1" "-2"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -2;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 38AF4FAD
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "2"
				case 2:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7C7F4CDF
					/// @DnDInput : 2
					/// @DnDParent : 38AF4FAD
					/// @DnDArgument : "expr_1" "-3"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -3;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 5D437956
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "3"
				case 3:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 37499B81
					/// @DnDInput : 2
					/// @DnDParent : 5D437956
					/// @DnDArgument : "expr_1" "-2"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -2;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 766EF7BF
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "4"
				case 4:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 01D803F6
					/// @DnDInput : 2
					/// @DnDParent : 766EF7BF
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 756ACF02
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "5"
				case 5:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 52794D98
					/// @DnDInput : 2
					/// @DnDParent : 756ACF02
					/// @DnDArgument : "expr_1" "-2"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -2;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3669BC60
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "6"
				case 6:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 4013098C
					/// @DnDInput : 2
					/// @DnDParent : 3669BC60
					/// @DnDArgument : "expr_1" "-3"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -3;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 53DDA55A
				/// @DnDParent : 1115F6B4
				/// @DnDArgument : "const" "7"
				case 7:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1D7719FB
					/// @DnDInput : 2
					/// @DnDParent : 53DDA55A
					/// @DnDArgument : "expr_1" "-2"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					head_offset_x = 0;
					head_offset_y = -2;	break;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 45E8B3C5
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.HIT"
		case ps.HIT:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FFFF336
			/// @DnDInput : 4
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "expr" "knockback_speed"
			/// @DnDArgument : "expr_1" "-1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "expr_2" "-1"
			/// @DnDArgument : "expr_relative_2" "1"
			/// @DnDArgument : "expr_3" "180"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "knockback_cooldown"
			/// @DnDArgument : "var_2" "o_game.scor"
			/// @DnDArgument : "var_3" "iframes"
			hsp = knockback_speed;
			knockback_cooldown += -1;
			o_game.scor += -1;
			iframes = 180;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 746A45BF
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0346FBF7
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A9FE3AF
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "var" "knockback_cooldown"
			/// @DnDArgument : "op" "3"
			if(knockback_cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 5A97150E
				/// @DnDParent : 6A9FE3AF
				/// @DnDArgument : "script" "player_state"
				/// @DnDSaveInfo : "script" "player_state"
				script_execute(player_state);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 45F2BCB7
				/// @DnDParent : 6A9FE3AF
				/// @DnDArgument : "expr" "20"
				/// @DnDArgument : "var" "knockback_cooldown"
				knockback_cooldown = 20;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 741078E4
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.WIN"
		case ps.WIN:	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 426D3DAF
			/// @DnDParent : 741078E4
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 0FB3BFEA
			/// @DnDParent : 741078E4
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 099B875E
			/// @DnDParent : 741078E4
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "win_moment"
			win_moment += 1;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 165C2F14
			/// @DnDParent : 741078E4
			/// @DnDArgument : "var" "win_moment"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "60"
			if(win_moment >= 60){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 12E4A6C9
				/// @DnDInput : 2
				/// @DnDParent : 165C2F14
				/// @DnDArgument : "expr" "gm.SELECT"
				/// @DnDArgument : "expr_1" "map"
				/// @DnDArgument : "var" "o_game.state"
				/// @DnDArgument : "var_1" "room"
				o_game.state = gm.SELECT;
				room = map;}	break;}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7E543676
	/// @DnDParent : 1DD67932
	/// @DnDArgument : "script" "boost_control"
	/// @DnDSaveInfo : "script" "boost_control"
	script_execute(boost_control);}

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 4E7EECAF
/// @DnDArgument : "var" "mount"
/// @DnDArgument : "not" "1"
if(mount != undefined){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 7DF9B3CC
	/// @DnDParent : 4E7EECAF
	/// @DnDArgument : "expr" "mount.object_index"
	var l7DF9B3CC_0 = mount.object_index;switch(l7DF9B3CC_0){	/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 7FA40853
		/// @DnDParent : 7DF9B3CC
		default:	/// @DnDAction : YoYo Games.Common.Apply_To
			/// @DnDVersion : 1
			/// @DnDHash : 58EA10A7
			/// @DnDApplyTo : mount
			/// @DnDParent : 7FA40853
			with(mount) {
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 281091AC
				/// @DnDParent : 58EA10A7
				/// @DnDArgument : "script" "controlz"
				/// @DnDSaveInfo : "script" "controlz"
				script_execute(controlz);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 4891BD70
				/// @DnDParent : 58EA10A7
				/// @DnDArgument : "script" "check_ground"
				/// @DnDSaveInfo : "script" "check_ground"
				script_execute(check_ground);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 66ED211A
				/// @DnDParent : 58EA10A7
				/// @DnDArgument : "script" "movement_stuff"
				/// @DnDSaveInfo : "script" "movement_stuff"
				script_execute(movement_stuff);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 05B0F040
				/// @DnDParent : 58EA10A7
				/// @DnDArgument : "script" "mount_controls"
				/// @DnDSaveInfo : "script" "mount_controls"
				script_execute(mount_controls);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A0B8589
			/// @DnDInput : 2
			/// @DnDParent : 7FA40853
			/// @DnDArgument : "expr" "mount.x"
			/// @DnDArgument : "expr_1" "mount.y"
			/// @DnDArgument : "var" "x"
			/// @DnDArgument : "var_1" "y"
			x = mount.x;
			y = mount.y;	break;}

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 7F484384
	/// @DnDParent : 4E7EECAF
	/// @DnDArgument : "script" "controlz"
	/// @DnDSaveInfo : "script" "controlz"
	script_execute(controlz);

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4636344D
	/// @DnDParent : 4E7EECAF
	/// @DnDArgument : "expr" "up"
	if(up){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 072240DE
		/// @DnDParent : 4636344D
		/// @DnDArgument : "expr" "jump"
		if(jump){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 0BDC00A5
			/// @DnDParent : 072240DE
			/// @DnDArgument : "function" "instance_activate_object"
			/// @DnDArgument : "arg" "mygurn"
			instance_activate_object(mygurn);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5130F36E
			/// @DnDInput : 3
			/// @DnDParent : 072240DE
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "mount.vsp"
			/// @DnDArgument : "var_1" "mount.hsp"
			/// @DnDArgument : "var_2" "mount.active"
			mount.vsp = 0;
			mount.hsp = 0;
			mount.active = false;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6A3FA471
			/// @DnDInput : 2
			/// @DnDParent : 072240DE
			/// @DnDArgument : "expr" "undefined"
			/// @DnDArgument : "expr_1" "-12"
			/// @DnDArgument : "var" "mount"
			/// @DnDArgument : "var_1" "vsp"
			mount = undefined;
			vsp = -12;}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 63070E9F
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 514943D0
	/// @DnDParent : 63070E9F
	/// @DnDArgument : "expr" "ps.DIE"
	/// @DnDArgument : "var" "state"
	state = ps.DIE;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 436131CD
/// @DnDArgument : "var" "iframes"
/// @DnDArgument : "op" "2"
if(iframes > 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 79420D1C
	/// @DnDParent : 436131CD
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "iframes"
	iframes += -1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C7F0ABF
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "x"
if(mouse_x > x){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 472B47F9
	/// @DnDParent : 2C7F0ABF
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "facing"
	facing = 1;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 1003172F
/// @DnDArgument : "var" "mouse_x"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "x"
if(mouse_x < x){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 699A35A7
	/// @DnDParent : 1003172F
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "var" "facing"
	facing = -1;}

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 4E62ACCC
/// @DnDArgument : "var" "mount"
if(mount == undefined){	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 3EF6B04B
	/// @DnDParent : 4E62ACCC
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "vsp"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "target" "blorp"
	/// @DnDArgument : "object" "o_mount"
	/// @DnDSaveInfo : "object" "o_mount"
	var l3EF6B04B_0 = instance_place(x + 0, y + vsp, [o_mount]);
	blorp = l3EF6B04B_0;if ((l3EF6B04B_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3C921A76
		/// @DnDParent : 3EF6B04B
		/// @DnDArgument : "var" "blorp.bbox_top"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "bbox_bottom"
		if(blorp.bbox_top > bbox_bottom){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 50127A0A
			/// @DnDInput : 3
			/// @DnDParent : 3C921A76
			/// @DnDArgument : "expr" "blorp"
			/// @DnDArgument : "expr_1" "-3"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "expr_2" "true"
			/// @DnDArgument : "var" "mount"
			/// @DnDArgument : "var_1" "blorp.y"
			/// @DnDArgument : "var_2" "mount.active"
			mount = blorp;
			blorp.y += -3;
			mount.active = true;
		
			/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 2D3F9BF9
			/// @DnDParent : 3C921A76
			/// @DnDArgument : "function" "instance_deactivate_object"
			/// @DnDArgument : "arg" "mygurn"
			instance_deactivate_object(mygurn);}}}