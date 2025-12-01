/// @DnDAction : YoYo Games.Sequences.If_Sequence_Exists
/// @DnDVersion : 1
/// @DnDHash : 5CA5532F
/// @DnDArgument : "obj" "settings_page"
/// @DnDSaveInfo : "obj" "settings_page"
var l5CA5532F_0 = false;l5CA5532F_0 = sequence_instance_exists(settings_page);if(l5CA5532F_0){	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 6DA1A81C
	/// @DnDParent : 5CA5532F
	/// @DnDArgument : "var" "settings_dododo"
	/// @DnDArgument : "not" "1"
	if(settings_dododo != undefined){	/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 71A57F6D
		/// @DnDParent : 6DA1A81C
		/// @DnDArgument : "var" "seq_x"
		/// @DnDArgument : "value" "layer_sequence_get_x(settings_dododo)"
		var seq_x = layer_sequence_get_x(settings_dododo);
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 75DF4A47
		/// @DnDInput : 2
		/// @DnDParent : 6DA1A81C
		/// @DnDArgument : "function" "layer_sequence_x"
		/// @DnDArgument : "arg" "settings_dododo"
		/// @DnDArgument : "arg_1" "scr_approach(seq_x, global.targ_x, point_distance(seq_x,0,global.targ_x,0)/10*global.game_speed)"
		layer_sequence_x(settings_dododo, scr_approach(seq_x, global.targ_x, point_distance(seq_x,0,global.targ_x,0)/10*global.game_speed));}}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 48925637
/// @DnDArgument : "obj" "o_camera"
/// @DnDSaveInfo : "obj" "o_camera"
var l48925637_0 = false;l48925637_0 = instance_exists(o_camera);if(l48925637_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 119BEF12
	/// @DnDParent : 48925637
	/// @DnDArgument : "expr" "camera_aim_pan"
	/// @DnDArgument : "var" "o_camera.panning_strength"
	o_camera.panning_strength = camera_aim_pan;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 75993F27
/// @DnDArgument : "expr" "global.game_time*((delta_time/1000000)/(1/60))"
/// @DnDArgument : "var" "global.game_speed"
global.game_speed = global.game_time*((delta_time/1000000)/(1/60));

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6D377558
/// @DnDArgument : "expr" "scr_approach(display_score, scor, 2*global.game_speed)"
/// @DnDArgument : "var" "display_score"
display_score = scr_approach(display_score, scor, 2*global.game_speed);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CBCE737
/// @DnDArgument : "var" "floor(display_score)"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "scor"
if(!(floor(display_score) == scor)){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 61494CC0
	/// @DnDParent : 3CBCE737
	/// @DnDArgument : "soundid" "points"
	/// @DnDArgument : "not" "1"
	/// @DnDSaveInfo : "soundid" "points"
	var l61494CC0_0 = points;if (!audio_is_playing(l61494CC0_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 3CB0F40B
		/// @DnDParent : 61494CC0
		/// @DnDArgument : "soundid" "points"
		/// @DnDArgument : "gain" "4"
		/// @DnDArgument : "pitch" "clamp(point_distance(0, display_score_start,0,display_score)*.02, .8, 5)"
		/// @DnDSaveInfo : "soundid" "points"
		audio_play_sound(points, 0, 0, 4, undefined, clamp(point_distance(0, display_score_start,0,display_score)*.02, .8, 5));}}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 701D689D
/// @DnDArgument : "var" "floor(display_score)"
/// @DnDArgument : "value" "scor"
if(floor(display_score) == scor){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4161C4E0
	/// @DnDParent : 701D689D
	/// @DnDArgument : "expr" "scor"
	/// @DnDArgument : "var" "display_score_start"
	display_score_start = scor;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2A9786CF
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "ini"
if(room == ini){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 35903B16
	/// @DnDParent : 2A9786CF
	/// @DnDArgument : "script" "scr_load_game"
	/// @DnDSaveInfo : "script" "scr_load_game"
	script_execute(scr_load_game);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 79B996F7
	/// @DnDParent : 2A9786CF
	/// @DnDArgument : "room" "map"
	/// @DnDSaveInfo : "room" "map"
	room_goto(map);}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 511F3266
/// @DnDArgument : "expr" "state"
var l511F3266_0 = state;switch(l511F3266_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 78577250
	/// @DnDParent : 511F3266
	/// @DnDArgument : "const" "gm.LEVEL"
	case gm.LEVEL:	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 600C1947
	/// @DnDParent : 511F3266
	/// @DnDArgument : "const" "gm.SELECT"
	case gm.SELECT:	break;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 6539461D
/// @DnDArgument : "expr" "room"
var l6539461D_0 = room;switch(l6539461D_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7F764A22
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "lvl_0"
	case lvl_0:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5E67AD2D
		/// @DnDParent : 7F764A22
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("buildings2", _cam_x * 0.65);$(13_10)layer_y("buildings2", _cam_y *.99);// Change the background layer name to whatever you use in the room editor$(13_10)layer_x("buildings1", _cam_x * 0.8);$(13_10)layer_y("buildings1", _cam_y * 0.99);$(13_10)layer_x("sky", _cam_x);$(13_10)layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("buildings2", _cam_x * 0.65);
		layer_y("buildings2", _cam_y *.99);// Change the background layer name to whatever you use in the room editor
		layer_x("buildings1", _cam_x * 0.8);
		layer_y("buildings1", _cam_y * 0.99);
		layer_x("sky", _cam_x);
		layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 38C6EAE4
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "lvl_01"
	case lvl_01:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 25C24A51
		/// @DnDParent : 38C6EAE4
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("buildings2", _cam_x * 0.65);$(13_10)layer_y("buildings2", _cam_y *.99 -250);// Change the background layer name to whatever you use in the room editor$(13_10)layer_x("buildings1", _cam_x * 0.8);$(13_10)layer_y("buildings1", _cam_y * 0.99 - 280);$(13_10)layer_x("sky", _cam_x);$(13_10)layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect$(13_10)layer_x("clouds1", _cam_x);$(13_10)//layer_y("clouds1", _cam_y);$(13_10)layer_x("clouds2", _cam_x);$(13_10)//layer_y("clouds2", _cam_y)$(13_10)layer_x("clouds3", _cam_x);$(13_10)//layer_y("clouds3", _cam_y)"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("buildings2", _cam_x * 0.65);
		layer_y("buildings2", _cam_y *.99 -250);// Change the background layer name to whatever you use in the room editor
		layer_x("buildings1", _cam_x * 0.8);
		layer_y("buildings1", _cam_y * 0.99 - 280);
		layer_x("sky", _cam_x);
		layer_y("sky", _cam_y);// Change the 0.25 and 0.5 values to change the speed of the effect
		layer_x("clouds1", _cam_x);
		//layer_y("clouds1", _cam_y);
		layer_x("clouds2", _cam_x);
		//layer_y("clouds2", _cam_y)
		layer_x("clouds3", _cam_x);
		//layer_y("clouds3", _cam_y)	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2051C63F
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "ship_room"
	case ship_room:	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 403B5F5A
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "code" "var _cam_x = o_camera.x ;$(13_10)var _cam_y = o_camera.y ;$(13_10)layer_x("Backgrounds_1", _cam_x * .99 + current_time*power(.01,1));$(13_10)layer_y("Backgrounds_1", _cam_y *.99);$(13_10)layer_x("Backgrounds_2", _cam_x * .90 + current_time*power(.04,1));$(13_10)layer_y("Backgrounds_2", _cam_y *.90);$(13_10)layer_x("Backgrounds_3", _cam_x * .85 + current_time*power(.09,1));$(13_10)layer_y("Backgrounds_3", _cam_y *.85);$(13_10)layer_x("Backgrounds_4", _cam_x * .80 + current_time*power(.1,1));$(13_10)layer_y("Backgrounds_4", _cam_y *.80);$(13_10)layer_x("Backgrounds_5", _cam_x * .75 + current_time*power(.15,1));$(13_10)layer_y("Backgrounds_5", _cam_y *.75);$(13_10)layer_x("Backgrounds_6", _cam_x * .70 + current_time*power(.2,1));$(13_10)layer_y("Backgrounds_6", _cam_y *.70);$(13_10)layer_x("Backgrounds_7", _cam_x * .65 + current_time*power(.3, 1));$(13_10)layer_y("Backgrounds_7", _cam_y *.65);"
		var _cam_x = o_camera.x ;
		var _cam_y = o_camera.y ;
		layer_x("Backgrounds_1", _cam_x * .99 + current_time*power(.01,1));
		layer_y("Backgrounds_1", _cam_y *.99);
		layer_x("Backgrounds_2", _cam_x * .90 + current_time*power(.04,1));
		layer_y("Backgrounds_2", _cam_y *.90);
		layer_x("Backgrounds_3", _cam_x * .85 + current_time*power(.09,1));
		layer_y("Backgrounds_3", _cam_y *.85);
		layer_x("Backgrounds_4", _cam_x * .80 + current_time*power(.1,1));
		layer_y("Backgrounds_4", _cam_y *.80);
		layer_x("Backgrounds_5", _cam_x * .75 + current_time*power(.15,1));
		layer_y("Backgrounds_5", _cam_y *.75);
		layer_x("Backgrounds_6", _cam_x * .70 + current_time*power(.2,1));
		layer_y("Backgrounds_6", _cam_y *.70);
		layer_x("Backgrounds_7", _cam_x * .65 + current_time*power(.3, 1));
		layer_y("Backgrounds_7", _cam_y *.65);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3FB7FCB9
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "var" "highest_combo"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "combo_num"
		if(highest_combo < combo_num){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 777832A7
			/// @DnDParent : 3FB7FCB9
			/// @DnDArgument : "expr" "combo_num"
			/// @DnDArgument : "var" "highest_combo"
			highest_combo = combo_num;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 43BBB354
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "expr" "clamp(combo_bar-.6*global.game_speed,0,530)"
		/// @DnDArgument : "var" "combo_bar"
		combo_bar = clamp(combo_bar-.6*global.game_speed,0,530);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5308BE6A
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "var" "combo_bar"
		/// @DnDArgument : "op" "3"
		if(combo_bar <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 154787AB
			/// @DnDParent : 5308BE6A
			/// @DnDArgument : "var" "combo_num"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "10"
			if(combo_num >= 10){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 034F2AD3
				/// @DnDParent : 154787AB
				/// @DnDArgument : "soundid" "dry_fart"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
				/// @DnDSaveInfo : "soundid" "dry_fart"
				audio_play_sound(dry_fart, 0, 0, .3, undefined, random_range(0.9,1.1));}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 20F413BD
			/// @DnDParent : 5308BE6A
			/// @DnDArgument : "var" "combo_num"
			combo_num = 0;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0A6A1D46
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "expr" "1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "pylon_incr"
		pylon_incr += 1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Switch.Switch
		/// @DnDVersion : 1
		/// @DnDHash : 7AD31033
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "expr" "in_wave"
		var l7AD31033_0 = in_wave;switch(l7AD31033_0){	/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 77A31912
			/// @DnDParent : 7AD31033
			/// @DnDArgument : "const" "true"
			case true:	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 009C5C6C
				/// @DnDParent : 77A31912
				/// @DnDArgument : "expr" "pylon_enemies < pylon_enemy_goal"
				if(pylon_enemies < pylon_enemy_goal){	/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 2AD51058
					/// @DnDParent : 009C5C6C
					/// @DnDArgument : "expr" "(pylon_enemy_count < pylon_enemy_cap)"
					if((pylon_enemy_count < pylon_enemy_cap)){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 12F82335
						/// @DnDParent : 2AD51058
						/// @DnDArgument : "var" "pylon_incr"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "120"
						if(pylon_incr >= 120){	/// @DnDAction : YoYo Games.Common.Function_Call
							/// @DnDVersion : 1
							/// @DnDHash : 4243A1F3
							/// @DnDInput : 2
							/// @DnDParent : 12F82335
							/// @DnDArgument : "var" "bubba"
							/// @DnDArgument : "function" "instance_find"
							/// @DnDArgument : "arg" "o_spawnpoint"
							/// @DnDArgument : "arg_1" "irandom(instance_number(o_spawnpoint)-1)"
							bubba = instance_find(o_spawnpoint, irandom(instance_number(o_spawnpoint)-1));
						
							/// @DnDAction : YoYo Games.Common.Temp_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 5DA8E497
							/// @DnDParent : 12F82335
							/// @DnDArgument : "var" "lubba"
							/// @DnDArgument : "value" "o_enemy_walkah"
							var lubba = o_enemy_walkah;
						
							/// @DnDAction : YoYo Games.Switch.Switch
							/// @DnDVersion : 1
							/// @DnDHash : 0EF39BA4
							/// @DnDParent : 12F82335
							/// @DnDArgument : "expr" "pylon_wave_number"
							var l0EF39BA4_0 = pylon_wave_number;switch(l0EF39BA4_0){	/// @DnDAction : YoYo Games.Switch.Case
								/// @DnDVersion : 1
								/// @DnDHash : 602F1A2F
								/// @DnDParent : 0EF39BA4
								/// @DnDArgument : "const" "1"
								case 1:	/// @DnDAction : YoYo Games.Random.Get_Random_Number
									/// @DnDVersion : 1
									/// @DnDHash : 3D44CC28
									/// @DnDParent : 602F1A2F
									/// @DnDArgument : "var" "jitt"
									/// @DnDArgument : "var_temp" "1"
									/// @DnDArgument : "max" "3"
									var jitt = (random_range(0, 3));
								
									/// @DnDAction : YoYo Games.Common.If_Variable
									/// @DnDVersion : 1
									/// @DnDHash : 43F179F1
									/// @DnDParent : 602F1A2F
									/// @DnDArgument : "var" "jitt"
									/// @DnDArgument : "op" "4"
									/// @DnDArgument : "value" "2.7"
									if(jitt >= 2.7){	/// @DnDAction : YoYo Games.Common.Variable
										/// @DnDVersion : 1
										/// @DnDHash : 4056894C
										/// @DnDParent : 43F179F1
										/// @DnDArgument : "expr" "o_fat_enemy_walkah"
										/// @DnDArgument : "var" "lubba"
										lubba = o_fat_enemy_walkah;}	break;
							
								/// @DnDAction : YoYo Games.Switch.Default
								/// @DnDVersion : 1
								/// @DnDHash : 7195844E
								/// @DnDParent : 0EF39BA4
								default:	/// @DnDAction : YoYo Games.Random.Choose
									/// @DnDVersion : 1
									/// @DnDHash : 6EDAA87C
									/// @DnDInput : 3
									/// @DnDParent : 7195844E
									/// @DnDArgument : "var" "pylon_enemy_type"
									/// @DnDArgument : "option" ""walker""
									/// @DnDArgument : "option_1" ""walker""
									/// @DnDArgument : "option_2" ""walker_variant""
									pylon_enemy_type = choose("walker", "walker", "walker_variant");	break;}
						
							/// @DnDAction : YoYo Games.Switch.Switch
							/// @DnDVersion : 1
							/// @DnDHash : 0A5F3ED5
							/// @DnDParent : 12F82335
							/// @DnDArgument : "expr" "pylon_enemy_type"
							var l0A5F3ED5_0 = pylon_enemy_type;switch(l0A5F3ED5_0){	/// @DnDAction : YoYo Games.Switch.Case
								/// @DnDVersion : 1
								/// @DnDHash : 6B66B2BD
								/// @DnDParent : 0A5F3ED5
								/// @DnDArgument : "const" ""walker""
								case "walker":	/// @DnDAction : YoYo Games.Loops.Break
									/// @DnDVersion : 1
									/// @DnDHash : 5C6006F6
									/// @DnDParent : 6B66B2BD
									break;	break;
							
								/// @DnDAction : YoYo Games.Switch.Case
								/// @DnDVersion : 1
								/// @DnDHash : 11702106
								/// @DnDParent : 0A5F3ED5
								/// @DnDArgument : "const" ""walker_variant""
								case "walker_variant":	/// @DnDAction : YoYo Games.Random.Choose
									/// @DnDVersion : 1
									/// @DnDHash : 67CB6617
									/// @DnDInput : 3
									/// @DnDParent : 11702106
									/// @DnDArgument : "var" "lubba"
									/// @DnDArgument : "option" "o_fat_enemy_walkah"
									/// @DnDArgument : "option_1" "o_enemy_runna"
									/// @DnDArgument : "option_2" "o_enemy_runna"
									lubba = choose(o_fat_enemy_walkah, o_enemy_runna, o_enemy_runna);	break;}
						
							/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 527662F9
							/// @DnDParent : 12F82335
							/// @DnDArgument : "xpos" "bubba.x"
							/// @DnDArgument : "ypos" "bubba.y"
							/// @DnDArgument : "var" "jubba"
							/// @DnDArgument : "objectid" "lubba"
							jubba = instance_create_layer(bubba.x, bubba.y, "Instances", lubba);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2B515AFE
							/// @DnDParent : 12F82335
							/// @DnDArgument : "expr" "bubba.init_facing"
							/// @DnDArgument : "var" "jubba.facing"
							jubba.facing = bubba.init_facing;
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 2FAE7756
							/// @DnDInput : 3
							/// @DnDParent : 12F82335
							/// @DnDArgument : "expr" "random_range(0,150)"
							/// @DnDArgument : "expr_1" "1"
							/// @DnDArgument : "expr_relative_1" "1"
							/// @DnDArgument : "expr_2" "1"
							/// @DnDArgument : "expr_relative_2" "1"
							/// @DnDArgument : "var" "pylon_incr"
							/// @DnDArgument : "var_1" "pylon_enemies"
							/// @DnDArgument : "var_2" "pylon_enemy_count"
							pylon_incr = random_range(0,150);
							pylon_enemies += 1;
							pylon_enemy_count += 1;}}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21D576BC
				/// @DnDParent : 77A31912
				/// @DnDArgument : "var" "pylon_enemies"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "pylon_enemy_goal"
				if(pylon_enemies >= pylon_enemy_goal){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7E05C193
					/// @DnDParent : 21D576BC
					/// @DnDArgument : "var" "pylon_enemy_count"
					/// @DnDArgument : "op" "3"
					if(pylon_enemy_count <= 0){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1BEA1146
						/// @DnDInput : 6
						/// @DnDParent : 7E05C193
						/// @DnDArgument : "expr_1" "1"
						/// @DnDArgument : "expr_relative_1" "1"
						/// @DnDArgument : "expr_3" "false"
						/// @DnDArgument : "expr_4" "3+pylon_wave_number"
						/// @DnDArgument : "expr_5" "floor(pylon_enemy_goal*1.4)"
						/// @DnDArgument : "var" "pylon_enemies"
						/// @DnDArgument : "var_1" "pylon_wave_number"
						/// @DnDArgument : "var_2" "pylon_incr"
						/// @DnDArgument : "var_3" "in_wave"
						/// @DnDArgument : "var_4" "pylon_enemy_cap"
						/// @DnDArgument : "var_5" "pylon_enemy_goal"
						pylon_enemies = 0;
						pylon_wave_number += 1;
						pylon_incr = 0;
						in_wave = false;
						pylon_enemy_cap = 3+pylon_wave_number;
						pylon_enemy_goal = floor(pylon_enemy_goal*1.4);
					
						/// @DnDAction : YoYo Games.Sequences.Sequence_Create
						/// @DnDVersion : 1
						/// @DnDHash : 65E84AC7
						/// @DnDParent : 7E05C193
						/// @DnDArgument : "xpos" "960"
						/// @DnDArgument : "ypos" "540"
						/// @DnDArgument : "var" "grading_time"
						/// @DnDArgument : "sequenceid" "wave_grade"
						/// @DnDArgument : "layer" ""Effects_Below""
						/// @DnDSaveInfo : "sequenceid" "wave_grade"
						grading_time = layer_sequence_create("Effects_Below", 960, 540, wave_grade);}}	break;
		
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 56EE7104
			/// @DnDParent : 7AD31033
			/// @DnDArgument : "const" "false"
			case false:	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 51EA794D
				/// @DnDParent : 56EE7104
				/// @DnDArgument : "var" "pylon_incr"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "1800"
				if(pylon_incr >= 1800){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 3F31DFE5
					/// @DnDInput : 2
					/// @DnDParent : 51EA794D
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "in_wave"
					/// @DnDArgument : "var_1" "pylon_incr"
					in_wave = true;
					pylon_incr = 0;
				
					/// @DnDAction : YoYo Games.Common.If_Expression
					/// @DnDVersion : 1
					/// @DnDHash : 50D3B97F
					/// @DnDParent : 51EA794D
					/// @DnDArgument : "expr" "(pylon_wave_number%3 == 0) || (pylon_wave_number == 1)"
					if((pylon_wave_number%3 == 0) || (pylon_wave_number == 1)){	/// @DnDAction : YoYo Games.Random.Choose
						/// @DnDVersion : 1
						/// @DnDHash : 1BF99901
						/// @DnDInput : 3
						/// @DnDParent : 50D3B97F
						/// @DnDArgument : "var" "song_of_choice"
						/// @DnDArgument : "option" "combat_1"
						/// @DnDArgument : "option_1" "combat_2"
						/// @DnDArgument : "option_2" "iagothing_mainloop"
						song_of_choice = choose(combat_1, combat_2, iagothing_mainloop);
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 36402B22
						/// @DnDParent : 50D3B97F
						/// @DnDArgument : "script" "scr_change_song"
						/// @DnDArgument : "arg" "song_of_choice"
						/// @DnDSaveInfo : "script" "scr_change_song"
						script_execute(scr_change_song, song_of_choice);}}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 40552751
				/// @DnDParent : 56EE7104
				/// @DnDArgument : "var" "pylon_incr"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "1600"
				if(pylon_incr >= 1600){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 356F4856
					/// @DnDParent : 40552751
					/// @DnDArgument : "var" "pylon_wave_number%3"
					if(pylon_wave_number%3 == 0){	/// @DnDAction : YoYo Games.Audio.Audio_Get_Volume
						/// @DnDVersion : 1
						/// @DnDHash : 6D951AD1
						/// @DnDParent : 356F4856
						/// @DnDArgument : "var" "vlub"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "sound" "curr_song"
						var vlub = audio_sound_get_gain(curr_song);
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 4D066361
						/// @DnDParent : 356F4856
						/// @DnDArgument : "var" "vlub"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "1"
						if(vlub >= 1){	/// @DnDAction : YoYo Games.Common.Execute_Script
							/// @DnDVersion : 1.1
							/// @DnDHash : 076A49CD
							/// @DnDParent : 4D066361
							/// @DnDArgument : "script" "scr_fadeout_song"
							/// @DnDArgument : "arg" "4000"
							/// @DnDSaveInfo : "script" "scr_fadeout_song"
							script_execute(scr_fadeout_song, 4000);}}}
			
				/// @DnDAction : YoYo Games.Sequences.If_Sequence_Exists
				/// @DnDVersion : 1
				/// @DnDHash : 7812DF7C
				/// @DnDParent : 56EE7104
				/// @DnDArgument : "obj" "wave_grade"
				/// @DnDSaveInfo : "obj" "wave_grade"
				var l7812DF7C_0 = false;l7812DF7C_0 = sequence_instance_exists(wave_grade);if(l7812DF7C_0){	/// @DnDAction : YoYo Games.Sequences.Sequence_Set_Position
					/// @DnDVersion : 1
					/// @DnDHash : 73589225
					/// @DnDParent : 7812DF7C
					/// @DnDArgument : "xpos" "o_camera.x"
					/// @DnDArgument : "ypos" "o_camera.y"
					/// @DnDArgument : "sequenceelmid" "grading_time"
					layer_sequence_x(grading_time, o_camera.x);
					layer_sequence_y(grading_time, o_camera.y);
				
					/// @DnDAction : YoYo Games.Sequences.Sequence_Get_Head
					/// @DnDVersion : 1
					/// @DnDHash : 641F6DBB
					/// @DnDParent : 7812DF7C
					/// @DnDArgument : "var" "grading_time_head"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "sequenceelmid" "grading_time"
					var grading_time_head = layer_sequence_get_headpos(grading_time);
				
					/// @DnDAction : YoYo Games.Sequences.Sequence_Get_Length
					/// @DnDVersion : 1
					/// @DnDHash : 39AD7FE9
					/// @DnDParent : 7812DF7C
					/// @DnDArgument : "var" "grading_time_length"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "sequenceelmid" "grading_time"
					var grading_time_length = layer_sequence_get_length(grading_time);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 6CC35814
					/// @DnDParent : 7812DF7C
					/// @DnDArgument : "var" "grading_time_head"
					/// @DnDArgument : "value" "grading_time_length"
					if(grading_time_head == grading_time_length){	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
						/// @DnDVersion : 1
						/// @DnDHash : 71D66112
						/// @DnDParent : 6CC35814
						/// @DnDArgument : "var" "grading_time"
						layer_sequence_destroy(grading_time);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 59E49ED6
						/// @DnDInput : 2
						/// @DnDParent : 6CC35814
						/// @DnDArgument : "var" "highest_combo"
						/// @DnDArgument : "var_1" "pylon_lost_health"
						highest_combo = 0;
						pylon_lost_health = 0;}}	break;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 570AD201
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "key" "vk_escape"
		var l570AD201_0;l570AD201_0 = keyboard_check_pressed(vk_escape);if (l570AD201_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1F87DC1F
			/// @DnDParent : 570AD201
			/// @DnDArgument : "expr" "!paused"
			/// @DnDArgument : "var" "paused"
			paused = !paused;
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 56CE42C0
			/// @DnDParent : 570AD201
			/// @DnDArgument : "expr" "paused"
			if(paused){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 7345BAC5
				/// @DnDParent : 56CE42C0
				/// @DnDArgument : "soundid" "sfx_pause_start"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(.9,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_pause_start"
				audio_play_sound(sfx_pause_start, 0, 0, .3, undefined, random_range(.9,1.2));
			
				/// @DnDAction : YoYo Games.Sequences.Sequence_Create
				/// @DnDVersion : 1
				/// @DnDHash : 3FAAAF3E
				/// @DnDParent : 56CE42C0
				/// @DnDArgument : "xpos" "o_camera.x"
				/// @DnDArgument : "ypos" "o_camera.y"
				/// @DnDArgument : "var" "binky"
				/// @DnDArgument : "sequenceid" "pause_settings"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "sequenceid" "pause_settings"
				binky = layer_sequence_create("Effects", o_camera.x, o_camera.y, pause_settings);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 66AF7F7F
			/// @DnDParent : 570AD201
			else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3D65E433
				/// @DnDParent : 66AF7F7F
				/// @DnDArgument : "soundid" "sfx_pause_end"
				/// @DnDArgument : "gain" ".3"
				/// @DnDArgument : "pitch" "random_range(.9,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_pause_end"
				audio_play_sound(sfx_pause_end, 0, 0, .3, undefined, random_range(.9,1.2));
			
				/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
				/// @DnDVersion : 1
				/// @DnDHash : 5771965E
				/// @DnDParent : 66AF7F7F
				/// @DnDArgument : "var" "binky"
				layer_sequence_destroy(binky);}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 349AC88F
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "expr" "paused"
		if(paused){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 05269C38
			/// @DnDInput : 2
			/// @DnDParent : 349AC88F
			/// @DnDArgument : "expr_1" "scr_approach(pause_background_alpha,.8,point_distance(0,pause_background_alpha,0,.8)/2)"
			/// @DnDArgument : "var" "global.game_time"
			/// @DnDArgument : "var_1" "pause_background_alpha"
			global.game_time = 0;
			pause_background_alpha = scr_approach(pause_background_alpha,.8,point_distance(0,pause_background_alpha,0,.8)/2);
		
			/// @DnDAction : YoYo Games.Sequences.Sequence_Set_Position
			/// @DnDVersion : 1
			/// @DnDHash : 27A07E0E
			/// @DnDParent : 349AC88F
			/// @DnDArgument : "xpos" "o_camera.x"
			/// @DnDArgument : "ypos" "o_camera.y"
			/// @DnDArgument : "sequenceelmid" "binky"
			layer_sequence_x(binky, o_camera.x);
			layer_sequence_y(binky, o_camera.y);}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 01F44390
		/// @DnDParent : 2051C63F
		/// @DnDArgument : "expr" "paused"
		/// @DnDArgument : "not" "1"
		if(!(paused)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 09575C85
			/// @DnDInput : 2
			/// @DnDParent : 01F44390
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "scr_approach(pause_background_alpha,0,point_distance(0,pause_background_alpha,0,0)/1.5)"
			/// @DnDArgument : "var" "global.game_time"
			/// @DnDArgument : "var_1" "pause_background_alpha"
			global.game_time = 1;
			pause_background_alpha = scr_approach(pause_background_alpha,0,point_distance(0,pause_background_alpha,0,0)/1.5);}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5890DE25
	/// @DnDParent : 6539461D
	/// @DnDArgument : "const" "boss_0"
	case boss_0:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 34931790
		/// @DnDParent : 5890DE25
		/// @DnDArgument : "expr" "o_B_gunclaw"
		/// @DnDArgument : "var" "le_boss"
		le_boss = o_B_gunclaw;	break;}