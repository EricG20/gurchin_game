/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 08246DAD
draw_self();

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 023D4600
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "thisdude"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "o_player"
var l023D4600_0 = instance_place(x + 0, y + 0, [o_player]);
thisdude = l023D4600_0;if ((l023D4600_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 104CF7ED
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude == o_game.local_player"
	if(thisdude == o_game.local_player){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6D06D748
		/// @DnDParent : 104CF7ED
		/// @DnDArgument : "var" "o_game.hosting"
		/// @DnDArgument : "value" "true"
		if(o_game.hosting == true){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 108E9819
			/// @DnDParent : 6D06D748
			/// @DnDArgument : "var" "displaying_info"
			/// @DnDArgument : "value" "false"
			if(displaying_info == false){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 2F3FC746
				/// @DnDParent : 108E9819
				/// @DnDArgument : "script" "msg_static"
				/// @DnDArgument : "arg" ""Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal""
				/// @DnDSaveInfo : "script" "msg_static"
				script_execute(msg_static, "Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal");}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 06CEF500
			/// @DnDParent : 6D06D748
			/// @DnDArgument : "expr" "thisdude.accept"
			if(thisdude.accept){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 0762EE67
				/// @DnDParent : 06CEF500
				/// @DnDArgument : "expr" "displaying_info"
				if(displaying_info){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
					/// @DnDVersion : 1
					/// @DnDHash : 04013FD9
					/// @DnDDisabled : 1
					/// @DnDParent : 0762EE67
					/// @DnDArgument : "room" "ds_map_find_value(mission_details, ds_list_find_value(missions,mission_index)+"_room")"
				
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 61846BEF
					/// @DnDParent : 0762EE67
					/// @DnDArgument : "expr" "mission_index"
					/// @DnDArgument : "var" "selected_mission"
					selected_mission = mission_index;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3F9279FB
					/// @DnDInput : 2
					/// @DnDParent : 0762EE67
					/// @DnDArgument : "expr" "ps.IDLE"
					/// @DnDArgument : "expr_1" "false"
					/// @DnDArgument : "var" "thisdude.state"
					/// @DnDArgument : "var_1" "displaying_info"
					thisdude.state = ps.IDLE;
					displaying_info = false;
				
					/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
					/// @DnDVersion : 1
					/// @DnDHash : 6A9F7DB8
					/// @DnDParent : 0762EE67
					/// @DnDArgument : "obj" "o_net_host"
					/// @DnDSaveInfo : "obj" "o_net_host"
					var l6A9F7DB8_0 = false;l6A9F7DB8_0 = instance_exists(o_net_host);if(l6A9F7DB8_0){	/// @DnDAction : YoYo Games.Loops.For_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 45CCF5E6
						/// @DnDParent : 6A9F7DB8
						/// @DnDArgument : "cond" "i < ds_list_size(o_net_host.socket_list)"
						for(i = 0; i < ds_list_size(o_net_host.socket_list); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 31AE5249
							/// @DnDParent : 45CCF5E6
							/// @DnDArgument : "function" "set_mission"
							/// @DnDArgument : "arg" "ds_list_find_value(o_net_host.socket_list, i)"
							set_mission(ds_list_find_value(o_net_host.socket_list, i));}}}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 52CB5E9C
				/// @DnDParent : 06CEF500
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2C462262
					/// @DnDParent : 52CB5E9C
					/// @DnDArgument : "expr" "ps.THINK"
					/// @DnDArgument : "var" "thisdude.state"
					thisdude.state = ps.THINK;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7BE49684
					/// @DnDParent : 52CB5E9C
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "displaying_info"
					displaying_info = true;}}
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 1B0D48DE
			/// @DnDParent : 6D06D748
			/// @DnDArgument : "expr" "displaying_info"
			if(displaying_info){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 431E2D47
				/// @DnDParent : 1B0D48DE
				/// @DnDArgument : "expr" "thisdude.cancel"
				if(thisdude.cancel){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 1020BCA9
					/// @DnDInput : 2
					/// @DnDParent : 431E2D47
					/// @DnDArgument : "expr" "ps.IDLE"
					/// @DnDArgument : "expr_1" "false"
					/// @DnDArgument : "var" "thisdude.state"
					/// @DnDArgument : "var_1" "displaying_info"
					thisdude.state = ps.IDLE;
					displaying_info = false;}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 79D7EE1D
				/// @DnDParent : 1B0D48DE
				/// @DnDArgument : "expr" "thisdude.up_tap"
				if(thisdude.up_tap){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 701F5C20
					/// @DnDParent : 79D7EE1D
					/// @DnDArgument : "expr" "clamp(mission_index-1,0,ds_list_size(missions)-1)"
					/// @DnDArgument : "var" "mission_index"
					mission_index = clamp(mission_index-1,0,ds_list_size(missions)-1);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1C24E245
					/// @DnDParent : 79D7EE1D
					/// @DnDArgument : "soundid" "uimove"
					/// @DnDSaveInfo : "soundid" "uimove"
					audio_play_sound(uimove, 0, 0, 1.0, undefined, 1.0);}
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 73C03E84
				/// @DnDParent : 1B0D48DE
				/// @DnDArgument : "expr" "thisdude.down_tap"
				if(thisdude.down_tap){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 17168D8F
					/// @DnDParent : 73C03E84
					/// @DnDArgument : "expr" "clamp(mission_index+1,0,ds_list_size(missions)-1)"
					/// @DnDArgument : "var" "mission_index"
					mission_index = clamp(mission_index+1,0,ds_list_size(missions)-1);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 74035054
					/// @DnDParent : 73C03E84
					/// @DnDArgument : "soundid" "uimove"
					/// @DnDSaveInfo : "soundid" "uimove"
					audio_play_sound(uimove, 0, 0, 1.0, undefined, 1.0);}}}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4AFD2BDF
		/// @DnDParent : 104CF7ED
		else{	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 483A02BC
			/// @DnDParent : 4AFD2BDF
			/// @DnDArgument : "script" "msg_static"
			/// @DnDArgument : "arg" ""This terminal only responds to the leader.""
			/// @DnDSaveInfo : "script" "msg_static"
			script_execute(msg_static, "This terminal only responds to the leader.");}}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 183962E9
/// @DnDArgument : "var" "selected_mission"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "-1"
if(selected_mission > -1){	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 21F2870B
	/// @DnDApplyTo : o_player
	/// @DnDParent : 183962E9
	with(o_player) {
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 184CB203
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "instvar" "7"
		persistent = true;
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5CC972BA
		/// @DnDApplyTo : mygurn
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "instvar" "7"
		with(mygurn) {
		persistent = true;
		}
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 74D0449E
		/// @DnDApplyTo : reticle
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "value" "true"
		/// @DnDArgument : "instvar" "7"
		with(reticle) {
		persistent = true;
		}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 737FD1B8
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 394450EF
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "expr" "ready"
		if(ready){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 548CE312
			/// @DnDInput : 14
			/// @DnDParent : 394450EF
			/// @DnDArgument : "script" "draw_text_colour_outline"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y+20"
			/// @DnDArgument : "arg_2" ""Ready!""
			/// @DnDArgument : "arg_3" "c_lime"
			/// @DnDArgument : "arg_4" "c_green"
			/// @DnDArgument : "arg_5" "1"
			/// @DnDArgument : "arg_6" "c_green"
			/// @DnDArgument : "arg_7" "c_black"
			/// @DnDArgument : "arg_8" "1"
			/// @DnDArgument : "arg_9" "2"
			/// @DnDArgument : "arg_10" "6"
			/// @DnDArgument : "arg_11" "1"
			/// @DnDArgument : "arg_12" "1"
			/// @DnDArgument : "arg_13" "0"
			/// @DnDSaveInfo : "script" "draw_text_colour_outline"
			script_execute(draw_text_colour_outline, x, y+20, "Ready!", c_lime, c_green, 1, c_green, c_black, 1, 2, 6, 1, 1, 0);}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6BC6A935
		/// @DnDParent : 21F2870B
		/// @DnDArgument : "expr" "ready"
		/// @DnDArgument : "not" "1"
		if(!(ready)){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 00B4AB74
			/// @DnDInput : 14
			/// @DnDParent : 6BC6A935
			/// @DnDArgument : "script" "draw_text_colour_outline"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y+20"
			/// @DnDArgument : "arg_2" ""Not Ready...""
			/// @DnDArgument : "arg_3" "c_red"
			/// @DnDArgument : "arg_4" "c_redish"
			/// @DnDArgument : "arg_5" "1"
			/// @DnDArgument : "arg_6" "c_maroon"
			/// @DnDArgument : "arg_7" "c_black"
			/// @DnDArgument : "arg_8" "1"
			/// @DnDArgument : "arg_9" "2"
			/// @DnDArgument : "arg_10" "6"
			/// @DnDArgument : "arg_11" "1"
			/// @DnDArgument : "arg_12" "1"
			/// @DnDArgument : "arg_13" "0"
			/// @DnDSaveInfo : "script" "draw_text_colour_outline"
			script_execute(draw_text_colour_outline, x, y+20, "Not Ready...", c_red, c_redish, 1, c_maroon, c_black, 1, 2, 6, 1, 1, 0);}
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 728DFE87
		/// @DnDParent : 21F2870B
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5C6A5836
	/// @DnDParent : 183962E9
	/// @DnDArgument : "expr" "are_all_players_ready()"
	if(are_all_players_ready()){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 38FC1D31
		/// @DnDParent : 5C6A5836
		/// @DnDArgument : "room" "ds_map_find_value(mission_details, ds_list_find_value(missions,selected_mission)+"_room")"
		room_goto(ds_map_find_value(mission_details, ds_list_find_value(missions,selected_mission)+"_room"));}

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 3B0F9CAA
	/// @DnDParent : 183962E9
	/// @DnDArgument : "function" "instance_activate_object"
	/// @DnDArgument : "arg" "ready_button"
	instance_activate_object(ready_button);

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 0931F82F
	/// @DnDDisabled : 1
	/// @DnDParent : 183962E9
	/// @DnDArgument : "script" "check_for_ready_button"
	/// @DnDSaveInfo : "script" "check_for_ready_button"}