/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 36FD9B16
/// @DnDArgument : "expr" "part_of_main_menu"
if(part_of_main_menu){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 3893B264
	/// @DnDInput : 3
	/// @DnDParent : 36FD9B16
	/// @DnDArgument : "var" "zoop"
	/// @DnDArgument : "script" "scr_approach"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "global.targ_x"
	/// @DnDArgument : "arg_2" "point_distance(0,x,0,global.targ_x)/10*global.game_speed"
	/// @DnDSaveInfo : "script" "scr_approach"
	zoop = script_execute(scr_approach, x, global.targ_x, point_distance(0,x,0,global.targ_x)/10*global.game_speed);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 061B5134
	/// @DnDParent : 36FD9B16
	/// @DnDArgument : "expr" "zoop"
	/// @DnDArgument : "var" "x"
	x = zoop;}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 3F1222DE
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 31C1CE30
/// @DnDArgument : "expr" "increment"
if(increment){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64E830A5
	/// @DnDParent : 31C1CE30
	/// @DnDArgument : "expr" "vinnyvariable-1/(fps/60)"
	/// @DnDArgument : "var" "vinnyvariable"
	vinnyvariable = vinnyvariable-1/(fps/60);}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 028050AA
/// @DnDArgument : "var" "vinnyvariable"
/// @DnDArgument : "op" "3"
if(vinnyvariable <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2DC09B5D
	/// @DnDInput : 4
	/// @DnDParent : 028050AA
	/// @DnDArgument : "expr" "state_set"
	/// @DnDArgument : "expr_1" "scor"
	/// @DnDArgument : "expr_2" "playx"
	/// @DnDArgument : "expr_3" "playy"
	/// @DnDArgument : "var" "o_game.state"
	/// @DnDArgument : "var_1" "o_game.lvlscor"
	/// @DnDArgument : "var_2" "o_game.sethisx"
	/// @DnDArgument : "var_3" "o_game.sethisy"
	o_game.state = state_set;
	o_game.lvlscor = scor;
	o_game.sethisx = playx;
	o_game.sethisy = playy;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A2A9739
	/// @DnDInput : 2
	/// @DnDParent : 028050AA
	/// @DnDArgument : "expr" "key"
	/// @DnDArgument : "expr_1" "false"
	/// @DnDArgument : "var" "o_game.selected_level"
	/// @DnDArgument : "var_1" "o_game.paused"
	o_game.selected_level = key;
	o_game.paused = false;

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 36A16C45
	/// @DnDApplyTo : o_game
	/// @DnDParent : 028050AA
	/// @DnDArgument : "room" "other.sel_room"
	with(o_game) room_goto(other.sel_room);}

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 1F7F3E66
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "o_cursor"
/// @DnDSaveInfo : "object" "o_cursor"
var l1F7F3E66_0 = instance_place(x + 0, y + 0, [o_cursor]);if ((l1F7F3E66_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4B3889AC
	/// @DnDParent : 1F7F3E66
	/// @DnDArgument : "expr" "InputPressed(INPUT_VERB.SHOOT)"
	if(InputPressed(INPUT_VERB.SHOOT)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2CA859FF
		/// @DnDParent : 4B3889AC
		/// @DnDArgument : "soundid" "sfx_confirm"
		/// @DnDSaveInfo : "soundid" "sfx_confirm"
		audio_play_sound(sfx_confirm, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 637E08D7
		/// @DnDParent : 4B3889AC
		/// @DnDArgument : "expr" "1.4"
		/// @DnDArgument : "var" "flashAlpha"
		flashAlpha = 1.4;
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 27D54EF4
		/// @DnDParent : 4B3889AC
		/// @DnDArgument : "expr" "words"
		var l27D54EF4_0 = words;switch(l27D54EF4_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 61ADEB0A
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""PLAY""
			case "PLAY":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3F1EF81C
				/// @DnDDisabled : 1
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "increment"
			
			
				/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
				/// @DnDVersion : 1.1
				/// @DnDHash : 7A65A1C3
				/// @DnDDisabled : 1
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "sound" "menu"
				/// @DnDArgument : "volume" "0"
				/// @DnDArgument : "time" "3000"
				/// @DnDSaveInfo : "sound" "menu"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 210324DE
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "expr" "-1260"
				/// @DnDArgument : "var" "global.targ_x"
				global.targ_x = -1260;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3E1711B2
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "xpos" "2000"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "120"
				/// @DnDArgument : "var" "bro"
				/// @DnDArgument : "objectid" "o_char_picker"
				/// @DnDSaveInfo : "objectid" "o_char_picker"
				bro = instance_create_layer(x + 2000, 120, "Instances", o_char_picker);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3CD3F306
				/// @DnDInput : 2
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "expr_1" "self"
				/// @DnDArgument : "var" "bro.activated"
				/// @DnDArgument : "var_1" "bro.homie"
				bro.activated = true;
				bro.homie = self;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 383FCF00
				/// @DnDDisabled : 1
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "script" "scr_change_song"
				/// @DnDArgument : "arg" "select_zorb"
				/// @DnDSaveInfo : "script" "scr_change_song"
			
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 57D38CE0
				/// @DnDInput : 2
				/// @DnDParent : 61ADEB0A
				/// @DnDArgument : "script" "scr_dynamic_song"
				/// @DnDArgument : "arg" ""menu""
				/// @DnDArgument : "arg_1" "1"
				/// @DnDSaveInfo : "script" "scr_dynamic_song"
				script_execute(scr_dynamic_song, "menu", 1);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 2D5F421B
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""START""
			case "START":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 092FCEB3
				/// @DnDParent : 2D5F421B
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "increment"
				increment = true;
			
				/// @DnDAction : YoYo Games.Audio.Audio_Set_Volume
				/// @DnDVersion : 1.1
				/// @DnDHash : 45B6BA53
				/// @DnDParent : 2D5F421B
				/// @DnDArgument : "sound" "menu"
				/// @DnDArgument : "volume" "0"
				/// @DnDArgument : "time" "3000"
				/// @DnDSaveInfo : "sound" "menu"
				audio_sound_gain(menu, 0, 3000);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 67C4CDB9
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""SETTINGS""
			case "SETTINGS":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 216FD06E
				/// @DnDParent : 67C4CDB9
				/// @DnDArgument : "expr" "3140"
				/// @DnDArgument : "var" "global.targ_x"
				global.targ_x = 3140;	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 2F1A8C52
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""BACK""
			case "BACK":	/// @DnDAction : YoYo Games.Switch.Switch
				/// @DnDVersion : 1
				/// @DnDHash : 6B78C061
				/// @DnDParent : 2F1A8C52
				/// @DnDArgument : "expr" "o_game.state"
				var l6B78C061_0 = o_game.state;switch(l6B78C061_0){	/// @DnDAction : YoYo Games.Switch.Default
					/// @DnDVersion : 1
					/// @DnDHash : 4721BBFF
					/// @DnDParent : 6B78C061
					default:	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1191F2BA
						/// @DnDParent : 4721BBFF
						/// @DnDArgument : "expr" "true"
						/// @DnDArgument : "var" "increment"
						increment = true;
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 7B54DED1
						/// @DnDParent : 4721BBFF
						/// @DnDArgument : "script" "scr_fadeout_song"
						/// @DnDArgument : "arg" "2000"
						/// @DnDSaveInfo : "script" "scr_fadeout_song"
						script_execute(scr_fadeout_song, 2000);	break;
				
					/// @DnDAction : YoYo Games.Switch.Case
					/// @DnDVersion : 1
					/// @DnDHash : 01A9CE15
					/// @DnDParent : 6B78C061
					/// @DnDArgument : "const" "gm.SELECT"
					case gm.SELECT:	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 61AF63E1
						/// @DnDParent : 01A9CE15
						/// @DnDArgument : "expr" "576"
						/// @DnDArgument : "var" "global.targ_x"
						global.targ_x = 576;	break;}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 4434CEE3
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""QUIT""
			case "QUIT":	/// @DnDAction : YoYo Games.Game.End_Game
				/// @DnDVersion : 1
				/// @DnDHash : 43B24C1D
				/// @DnDParent : 4434CEE3
				game_end();	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 05C68217
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""TUTORIAL""
			case "TUTORIAL":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 69C3D85D
				/// @DnDParent : 05C68217
				/// @DnDArgument : "expr" "2260"
				/// @DnDArgument : "var" "global.targ_x"
				global.targ_x = 2260;
			
				/// @DnDAction : YoYo Games.Sequences.Sequence_Create
				/// @DnDVersion : 1
				/// @DnDHash : 6DAA972C
				/// @DnDApplyTo : {o_game}
				/// @DnDParent : 05C68217
				/// @DnDArgument : "xpos" "960"
				/// @DnDArgument : "ypos" "540"
				/// @DnDArgument : "var" "teto"
				/// @DnDArgument : "sequenceid" "tutorial"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "sequenceid" "tutorial"
				with(o_game) {
					teto = layer_sequence_create("Effects", 960, 540, tutorial); 
				}
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 7AFFC0FA
				/// @DnDParent : 05C68217
				/// @DnDArgument : "script" "scr_fadeout_song"
				/// @DnDArgument : "arg" "10"
				/// @DnDSaveInfo : "script" "scr_fadeout_song"
				script_execute(scr_fadeout_song, 10);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 0BF139B5
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""HOST""
			case "HOST":	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 3E4DEC85
				/// @DnDParent : 0BF139B5
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "o_net_host"
				/// @DnDSaveInfo : "objectid" "o_net_host"
				instance_create_layer(x + 0, y + 0, "Instances", o_net_host);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5A0E698B
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""JOIN""
			case "JOIN":	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 1D2045C0
				/// @DnDParent : 5A0E698B
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "o_net_client"
				/// @DnDSaveInfo : "objectid" "o_net_client"
				instance_create_layer(x + 0, y + 0, "Instances", o_net_client);	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 77BDFF15
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""READY""
			case "READY":	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 199AEBE2
				/// @DnDParent : 77BDFF15
				/// @DnDArgument : "expr" "!o_game.local_player.ready"
				/// @DnDArgument : "var" "o_game.local_player.ready"
				o_game.local_player.ready = !o_game.local_player.ready;
			
				/// @DnDAction : YoYo Games.Common.Apply_To
				/// @DnDVersion : 1
				/// @DnDHash : 5FB31754
				/// @DnDApplyTo : o_game.local_player
				/// @DnDParent : 77BDFF15
				with(o_game.local_player) {
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 1C4D0D9F
					/// @DnDParent : 5FB31754
					/// @DnDArgument : "expr" "is_host"
					if(is_host){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
						/// @DnDVersion : 1
						/// @DnDHash : 62EDA707
						/// @DnDParent : 1C4D0D9F
						/// @DnDArgument : "obj" "o_net_host"
						/// @DnDSaveInfo : "obj" "o_net_host"
						var l62EDA707_0 = false;l62EDA707_0 = instance_exists(o_net_host);if(l62EDA707_0){	/// @DnDAction : YoYo Games.Loops.For_Loop
							/// @DnDVersion : 1
							/// @DnDHash : 20DCBD03
							/// @DnDParent : 62EDA707
							/// @DnDArgument : "cond" "i < ds_list_size(o_net_host.socket_list)"
							for(i = 0; i < ds_list_size(o_net_host.socket_list); i += 1) {	/// @DnDAction : YoYo Games.Common.Function_Call
								/// @DnDVersion : 1
								/// @DnDHash : 24F2B95E
								/// @DnDParent : 20DCBD03
								/// @DnDArgument : "function" "player_ready_status"
								/// @DnDArgument : "arg" "ds_list_find_value(o_net_host.socket_list, i)"
								player_ready_status(ds_list_find_value(o_net_host.socket_list, i));}}}
				
					/// @DnDAction : YoYo Games.Common.Else
					/// @DnDVersion : 1
					/// @DnDHash : 0DF5BAC1
					/// @DnDParent : 5FB31754
					else{	/// @DnDAction : YoYo Games.Common.Function_Call
						/// @DnDVersion : 1
						/// @DnDHash : 120FA8EE
						/// @DnDParent : 0DF5BAC1
						/// @DnDArgument : "function" "player_ready_status"
						/// @DnDArgument : "arg" "socket"
						player_ready_status(socket);}
				}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 01EA1636
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""DISCONNECT""
			case "DISCONNECT":	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 0628AE58
				/// @DnDParent : 01EA1636
				/// @DnDArgument : "obj" "o_net_client"
				/// @DnDSaveInfo : "obj" "o_net_client"
				var l0628AE58_0 = false;l0628AE58_0 = instance_exists(o_net_client);if(l0628AE58_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 0E652AC8
					/// @DnDApplyTo : o_net_client
					/// @DnDParent : 0628AE58
					with(o_net_client) instance_destroy();}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 2BA3502D
			/// @DnDParent : 27D54EF4
			/// @DnDArgument : "const" ""STOP HOSTING""
			case "STOP HOSTING":	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 5C8B6B39
				/// @DnDParent : 2BA3502D
				/// @DnDArgument : "obj" "o_net_host"
				/// @DnDSaveInfo : "obj" "o_net_host"
				var l5C8B6B39_0 = false;l5C8B6B39_0 = instance_exists(o_net_host);if(l5C8B6B39_0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 7257B15B
					/// @DnDApplyTo : o_net_host
					/// @DnDParent : 5C8B6B39
					with(o_net_host) instance_destroy();}	break;}}}