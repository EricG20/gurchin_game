/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7520AAD6
/// @DnDArgument : "expr" "1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "increment"
increment += 1*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4E01611A
/// @DnDArgument : "var" "increment"
/// @DnDArgument : "op" "3"
/// @DnDArgument : "value" "180"
if(increment <= 180){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1249FBC0
	/// @DnDParent : 4E01611A
	/// @DnDArgument : "expr" "irandom_range(1000,9999)"
	/// @DnDArgument : "var" "display_value"
	display_value = irandom_range(1000,9999);

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 7F2AC6DA
	/// @DnDParent : 4E01611A
	/// @DnDArgument : "soundid" "points"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "points"
	var l7F2AC6DA_0 = points;if (!audio_is_playing(l7F2AC6DA_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 451C902C
		/// @DnDParent : 7F2AC6DA
		/// @DnDArgument : "soundid" "points"
		/// @DnDArgument : "gain" ".5"
		/// @DnDArgument : "pitch" "random_range(.9,1.6)"
		/// @DnDSaveInfo : "soundid" "points"
		audio_play_sound(points, 0, 0, .5, undefined, random_range(.9,1.6));}}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 19A3CDB0
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73F7CEA8
	/// @DnDParent : 19A3CDB0
	/// @DnDArgument : "expr" "real_value"
	/// @DnDArgument : "var" "display_value"
	display_value = real_value;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 29D91085
	/// @DnDParent : 19A3CDB0
	/// @DnDArgument : "expr" "am_I_done"
	/// @DnDArgument : "not" "1"
	if(!(am_I_done)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 452ED101
		/// @DnDParent : 29D91085
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "am_I_done"
		am_I_done = true;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 46998ACC
		/// @DnDParent : 29D91085
		/// @DnDArgument : "soundid" "sfx_shine"
		/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
		/// @DnDSaveInfo : "soundid" "sfx_shine"
		audio_play_sound(sfx_shine, 0, 0, 1.0, undefined, random_range(0.9,1.1));
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 6DCF5F7D
		/// @DnDParent : 29D91085
		/// @DnDArgument : "script" "scr_white_flash"
		/// @DnDArgument : "arg" ".2"
		/// @DnDSaveInfo : "script" "scr_white_flash"
		script_execute(scr_white_flash, .2);
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 377C30D4
		/// @DnDParent : 29D91085
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "blorp"
		/// @DnDArgument : "objectid" "e_hoop"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_hoop"
		blorp = instance_create_layer(x + 0, y + 0, "Effects", e_hoop);
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 50D3B984
		/// @DnDApplyTo : blorp
		/// @DnDParent : 29D91085
		/// @DnDArgument : "value" "spr_explosion"
		/// @DnDArgument : "instvar" "10"
		with(blorp) {
		sprite_index = spr_explosion;
		}
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 25558656
		/// @DnDParent : 29D91085
		/// @DnDArgument : "expr" "data_mode"
		var l25558656_0 = data_mode;switch(l25558656_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4F4253A5
			/// @DnDParent : 25558656
			/// @DnDArgument : "const" ""lost_health""
			case "lost_health":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3FD71D58
				/// @DnDParent : 4F4253A5
				/// @DnDArgument : "expr" "o_game.player_lost_health"
				/// @DnDArgument : "var" "real_value"
				real_value = o_game.player_lost_health;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 1155FA3B
				/// @DnDParent : 4F4253A5
				/// @DnDArgument : "var" "real_value"
				if(real_value == 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 13D6AC4E
					/// @DnDParent : 1155FA3B
					/// @DnDArgument : "expr" "gr.S"
					/// @DnDArgument : "var" "grade"
					grade = gr.S;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 76E7E726
				/// @DnDParent : 4F4253A5
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 277BBC88
					/// @DnDParent : 76E7E726
					/// @DnDArgument : "var" "real_value"
					/// @DnDArgument : "value" "1"
					if(real_value == 1){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 391F5340
						/// @DnDParent : 277BBC88
						/// @DnDArgument : "expr" "gr.A"
						/// @DnDArgument : "var" "grade"
						grade = gr.A;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 07070AE7
					/// @DnDParent : 76E7E726
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 05B4A8FC
						/// @DnDParent : 07070AE7
						/// @DnDArgument : "var" "real_value"
						/// @DnDArgument : "value" "2"
						if(real_value == 2){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6175C308
							/// @DnDParent : 05B4A8FC
							/// @DnDArgument : "expr" "gr.B"
							/// @DnDArgument : "var" "grade"
							grade = gr.B;}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 15D947C5
						/// @DnDParent : 07070AE7
						else{	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 05C0F6D7
							/// @DnDParent : 15D947C5
							/// @DnDArgument : "expr" "gr.C"
							/// @DnDArgument : "var" "grade"
							grade = gr.C;}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0C14673F
			/// @DnDParent : 25558656
			/// @DnDArgument : "const" ""pylon_health""
			case "pylon_health":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 033574B8
				/// @DnDParent : 0C14673F
				/// @DnDArgument : "expr" "o_game.pylon_lost_health"
				/// @DnDArgument : "var" "real_value"
				real_value = o_game.pylon_lost_health;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 68AE5932
				/// @DnDParent : 0C14673F
				/// @DnDArgument : "var" "real_value"
				/// @DnDArgument : "op" "3"
				/// @DnDArgument : "value" "2"
				if(real_value <= 2){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 59808974
					/// @DnDParent : 68AE5932
					/// @DnDArgument : "expr" "gr.S"
					/// @DnDArgument : "var" "grade"
					grade = gr.S;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 431CCEBF
				/// @DnDParent : 0C14673F
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 661AC75A
					/// @DnDParent : 431CCEBF
					/// @DnDArgument : "var" "real_value"
					/// @DnDArgument : "op" "1"
					/// @DnDArgument : "value" "4"
					if(real_value < 4){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5E7E0540
						/// @DnDParent : 661AC75A
						/// @DnDArgument : "expr" "gr.A"
						/// @DnDArgument : "var" "grade"
						grade = gr.A;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 19DAA76B
					/// @DnDParent : 431CCEBF
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 18C1283E
						/// @DnDParent : 19DAA76B
						/// @DnDArgument : "var" "real_value"
						/// @DnDArgument : "op" "1"
						/// @DnDArgument : "value" "9"
						if(real_value < 9){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2526C5B4
							/// @DnDParent : 18C1283E
							/// @DnDArgument : "expr" "gr.B"
							/// @DnDArgument : "var" "grade"
							grade = gr.B;}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 7E0F6B96
						/// @DnDParent : 19DAA76B
						else{	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 775F69E9
							/// @DnDParent : 7E0F6B96
							/// @DnDArgument : "expr" "gr.C"
							/// @DnDArgument : "var" "grade"
							grade = gr.C;}}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0785577C
			/// @DnDParent : 25558656
			/// @DnDArgument : "const" ""max_combo""
			case "max_combo":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6472F5BF
				/// @DnDParent : 0785577C
				/// @DnDArgument : "expr" "o_game.highest_combo"
				/// @DnDArgument : "var" "real_value"
				real_value = o_game.highest_combo;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3D68FE58
				/// @DnDParent : 0785577C
				/// @DnDArgument : "var" "real_value"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "o_game.pylon_enemy_goal/1.6"
				if(real_value > o_game.pylon_enemy_goal/1.6){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 58F2B4E7
					/// @DnDParent : 3D68FE58
					/// @DnDArgument : "expr" "gr.S"
					/// @DnDArgument : "var" "grade"
					grade = gr.S;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 2D2CF6B5
				/// @DnDParent : 0785577C
				else{	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 33898537
					/// @DnDParent : 2D2CF6B5
					/// @DnDArgument : "var" "real_value"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "o_game.pylon_enemy_goal/1.8"
					if(real_value > o_game.pylon_enemy_goal/1.8){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6BA5A81F
						/// @DnDParent : 33898537
						/// @DnDArgument : "expr" "gr.A"
						/// @DnDArgument : "var" "grade"
						grade = gr.A;}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 56B26F16
					/// @DnDParent : 2D2CF6B5
					else{	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 37945123
						/// @DnDParent : 56B26F16
						/// @DnDArgument : "var" "real_value"
						/// @DnDArgument : "op" "2"
						/// @DnDArgument : "value" "o_game.pylon_enemy_goal/2"
						if(real_value > o_game.pylon_enemy_goal/2){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 406C4DB2
							/// @DnDParent : 37945123
							/// @DnDArgument : "expr" "gr.B"
							/// @DnDArgument : "var" "grade"
							grade = gr.B;}
					
						/// @DnDAction : YoYo Games.Common.Else
						/// @DnDVersion : 1
						/// @DnDHash : 0BD0855A
						/// @DnDParent : 56B26F16
						else{	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 7441E180
							/// @DnDParent : 0BD0855A
							/// @DnDArgument : "expr" "gr.C"
							/// @DnDArgument : "var" "grade"
							grade = gr.C;}}}	break;}
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 0924430B
		/// @DnDParent : 29D91085
		/// @DnDArgument : "expr" "grade"
		var l0924430B_0 = grade;switch(l0924430B_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 645AF4DF
			/// @DnDParent : 0924430B
			/// @DnDArgument : "const" "gr.S"
			case gr.S:	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 38643CA4
				/// @DnDParent : 645AF4DF
				/// @DnDArgument : "soundid" "sfx_explosion"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(.8,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_explosion"
				audio_play_sound(sfx_explosion, 0, 0, .3, undefined, random_range(.8,1.2));
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 2E59AEC3
				/// @DnDParent : 645AF4DF
				/// @DnDArgument : "script" "scr_makeexplosion"
				/// @DnDSaveInfo : "script" "scr_makeexplosion"
				script_execute(scr_makeexplosion);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 706463C0
				/// @DnDParent : 645AF4DF
				/// @DnDArgument : "expr" "4"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_game.grade_tally"
				o_game.grade_tally += 4;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 44C27B62
			/// @DnDParent : 0924430B
			/// @DnDArgument : "const" "gr.A"
			case gr.A:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 33D86B98
				/// @DnDParent : 44C27B62
				/// @DnDArgument : "expr" "3"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_game.grade_tally"
				o_game.grade_tally += 3;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 3C9623EA
			/// @DnDParent : 0924430B
			/// @DnDArgument : "const" "gr.B"
			case gr.B:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 102B7A4E
				/// @DnDParent : 3C9623EA
				/// @DnDArgument : "expr" "2"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_game.grade_tally"
				o_game.grade_tally += 2;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1BAC90E6
			/// @DnDParent : 0924430B
			/// @DnDArgument : "const" "gr.C"
			case gr.C:	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 18065428
				/// @DnDParent : 1BAC90E6
				/// @DnDArgument : "expr" "1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "o_game.grade_tally"
				o_game.grade_tally += 1;	break;}}}