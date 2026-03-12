/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DBF59C7
/// @DnDInput : 7
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "expr_relative_2" "1"
/// @DnDArgument : "expr_3" "clamp(melee_cooldown,0, 900)"
/// @DnDArgument : "expr_6" "clamp(hp,0,max_hp)"
/// @DnDArgument : "var" "head_offset_x"
/// @DnDArgument : "var_1" "head_offset_y"
/// @DnDArgument : "var_2" "melee_cooldown"
/// @DnDArgument : "var_3" "melee_cooldown"
/// @DnDArgument : "var_4" "walk_bob_height"
/// @DnDArgument : "var_5" "ear_bobbing"
/// @DnDArgument : "var_6" "hp"
head_offset_x = 0;
head_offset_y = 0;
melee_cooldown += -1;
melee_cooldown = clamp(melee_cooldown,0, 900);
walk_bob_height = 0;
ear_bobbing = 0;
hp = clamp(hp,0,max_hp);

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 54D13B90
/// @DnDArgument : "assignee" "weapon_iteration_num"
/// @DnDArgument : "assignee_temp" "1"
/// @DnDArgument : "var" "weapon_invo"
var weapon_iteration_num = ds_list_size(weapon_invo);

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 58E44ECC
/// @DnDArgument : "cond" "i < weapon_iteration_num"
for(i = 0; i < weapon_iteration_num; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 1A2F4646
	/// @DnDParent : 58E44ECC
	/// @DnDArgument : "assignee" "weapon_iteration"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "weapon_invo"
	/// @DnDArgument : "index" "i"
	var weapon_iteration = ds_list_find_value(weapon_invo, i);

	/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
	/// @DnDVersion : 1
	/// @DnDHash : 08084D46
	/// @DnDParent : 58E44ECC
	/// @DnDArgument : "assignee" "is_this_weapon_reloading"
	/// @DnDArgument : "assignee_temp" "1"
	/// @DnDArgument : "var" "weapon_reload_info"
	/// @DnDArgument : "key" "weapon_iteration"
	var is_this_weapon_reloading = ds_map_find_value(weapon_reload_info, weapon_iteration);

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 58365525
	/// @DnDComment : BRO THE WEAPON IS RELOADING!
	/// @DnDParent : 58E44ECC
	/// @DnDArgument : "var" "is_this_weapon_reloading"
	/// @DnDArgument : "not" "1"
	if(is_this_weapon_reloading != undefined){	/// @DnDAction : YoYo Games.Data Structures.Map_Set_Value
		/// @DnDVersion : 1
		/// @DnDHash : 4858E78F
		/// @DnDParent : 58365525
		/// @DnDArgument : "var" "weapon_reload_info"
		/// @DnDArgument : "key" "weapon_iteration"
		/// @DnDArgument : "value" "clamp(is_this_weapon_reloading - (.5)*global.game_speed, 0, 9999)"
		ds_map_replace(weapon_reload_info, weapon_iteration, clamp(is_this_weapon_reloading - (.5)*global.game_speed, 0, 9999));}}

/// @DnDAction : YoYo Games.Common.If_Undefined
/// @DnDVersion : 1
/// @DnDHash : 1DD67932
/// @DnDArgument : "var" "mount"
if(mount == undefined){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 48CC822E
	/// @DnDParent : 1DD67932
	/// @DnDArgument : "expr" "state"
	var l48CC822E_0 = state;switch(l48CC822E_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 6BA6BD89
		/// @DnDParent : 48CC822E
		/// @DnDArgument : "const" "ps.AIR"
		case ps.AIR:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 45C22029
			/// @DnDParent : 6BA6BD89
			/// @DnDArgument : "expr" "abs(vsp/55)"
			/// @DnDArgument : "var" "squashstretch"
			squashstretch = abs(vsp/55);	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 59359FA0
		/// @DnDParent : 48CC822E
		default:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 16F5D5BE
			/// @DnDParent : 59359FA0
			/// @DnDArgument : "expr" "squashstretch*power(.93,global.game_speed)"
			/// @DnDArgument : "var" "squashstretch"
			squashstretch = squashstretch*power(.93,global.game_speed);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 07EEE275
			/// @DnDParent : 59359FA0
			/// @DnDArgument : "expr" "on_ground"
			if(on_ground){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 654B0CED
				/// @DnDParent : 07EEE275
				/// @DnDArgument : "expr" "down"
				if(down){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 37E1FAFB
					/// @DnDParent : 654B0CED
					/// @DnDArgument : "expr" "lerp(squashstretch, -.5, .1*global.game_speed)"
					/// @DnDArgument : "var" "squashstretch"
					squashstretch = lerp(squashstretch, -.5, .1*global.game_speed);}}	break;}

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 33FA4604
	/// @DnDParent : 1DD67932
	/// @DnDArgument : "expr" "state"
	var l33FA4604_0 = state;switch(l33FA4604_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 2572907C
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.DIE"
		case ps.DIE:	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
			/// @DnDVersion : 1
			/// @DnDHash : 51841FF2
			/// @DnDParent : 2572907C
			/// @DnDArgument : "soundid" "sfx_hover_thing"
			/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
			var l51841FF2_0 = sfx_hover_thing;if (audio_is_playing(l51841FF2_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 5E499280
				/// @DnDParent : 51841FF2
				/// @DnDArgument : "soundid" "sfx_hover_thing"
				/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
				audio_stop_sound(sfx_hover_thing);}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 13AAADA0
			/// @DnDParent : 2572907C
			/// @DnDArgument : "expr" "1*global.game_time"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "death_counter"
			death_counter += 1*global.game_time;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 366C539D
			/// @DnDParent : 2572907C
			/// @DnDArgument : "var" "death_counter"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "60"
			if(death_counter > 60){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6A62FC65
				/// @DnDParent : 366C539D
				/// @DnDArgument : "expr" "scr_approach(x,o_pylon.x, point_distance(x,0,o_pylon.x,0)/(50/global.game_speed))"
				/// @DnDArgument : "var" "x"
				x = scr_approach(x,o_pylon.x, point_distance(x,0,o_pylon.x,0)/(50/global.game_speed));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 264C886C
				/// @DnDParent : 366C539D
				/// @DnDArgument : "expr" "scr_approach(y,o_pylon.y, point_distance(y,0,o_pylon.y,0)/(50/global.game_speed))"
				/// @DnDArgument : "var" "y"
				y = scr_approach(y,o_pylon.y, point_distance(y,0,o_pylon.y,0)/(50/global.game_speed));}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
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
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 439EA32C
			/// @DnDParent : 2572907C
			/// @DnDArgument : "var" "death_counter"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "480"
			if(death_counter >= 480){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 72958C7F
				/// @DnDInput : 4
				/// @DnDParent : 439EA32C
				/// @DnDArgument : "expr" "ps.IDLE"
				/// @DnDArgument : "expr_1" "max_hp"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "hp"
				/// @DnDArgument : "var_2" "iframes"
				/// @DnDArgument : "var_3" "death_counter"
				state = ps.IDLE;
				hp = max_hp;
				iframes = 0;
				death_counter = 0;
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 761CD819
				/// @DnDParent : 439EA32C
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "e_charged"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_charged"
				instance_create_layer(x + 0, y + 0, "Effects", e_charged);
			
				/// @DnDAction : YoYo Games.Instances.Change_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 2AF396EF
				/// @DnDApplyTo : mygurn
				/// @DnDParent : 439EA32C
				/// @DnDArgument : "objind" "other.default_gun"
				with(mygurn) instance_change(other.default_gun, true);
			
				/// @DnDAction : YoYo Games.Data Structures.Map_Get_Value
				/// @DnDVersion : 1
				/// @DnDHash : 1B0C94DC
				/// @DnDParent : 439EA32C
				/// @DnDArgument : "assignee" "curr_weapon_level"
				/// @DnDArgument : "var" "weapon_levels"
				/// @DnDArgument : "key" "mygurn.object_index"
				curr_weapon_level = ds_map_find_value(weapon_levels, mygurn.object_index);}	break;
	
		/// @DnDAction : YoYo Games.Switch.Default
		/// @DnDVersion : 1
		/// @DnDHash : 77BB61EB
		/// @DnDParent : 33FA4604
		default:	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4DECB22C
			/// @DnDParent : 77BB61EB
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "ps.AIR"
			if(state == ps.AIR){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 666B3C4B
				/// @DnDParent : 4DECB22C
				/// @DnDArgument : "script" "check_ground"
				/// @DnDSaveInfo : "script" "check_ground"
				script_execute(check_ground);
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 1CAD68ED
				/// @DnDParent : 4DECB22C
				/// @DnDArgument : "expr" "on_ground"
				if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5B500771
					/// @DnDParent : 1CAD68ED
					/// @DnDArgument : "expr" "-.3"
					/// @DnDArgument : "var" "squashstretch"
					squashstretch = -.3;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 6904D662
					/// @DnDParent : 1CAD68ED
					/// @DnDArgument : "soundid" "sfx_land"
					/// @DnDArgument : "gain" "1.9"
					/// @DnDArgument : "pitch" "random_range(.8,1.2)"
					/// @DnDSaveInfo : "soundid" "sfx_land"
					audio_play_sound(sfx_land, 0, 0, 1.9, undefined, random_range(.8,1.2));
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 057BCF71
					/// @DnDParent : 1CAD68ED
					/// @DnDArgument : "times" "8"
					repeat(8){	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 401EED6C
						/// @DnDParent : 057BCF71
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "joe"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "e_freedust"
						/// @DnDArgument : "layer" ""Effects""
						/// @DnDSaveInfo : "objectid" "e_freedust"
						var joe = instance_create_layer(x + 0, y + 0, "Effects", e_freedust);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3AC057FD
						/// @DnDParent : 057BCF71
						/// @DnDArgument : "expr" "random_range(-2,2)"
						/// @DnDArgument : "var" "joe.hspeed"
						joe.hspeed = random_range(-2,2);}}}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
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
					/// @DnDInput : 3
					/// @DnDParent : 74D85F9B
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					/// @DnDArgument : "var_2" "hair_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;
					hair_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3D68D9D5
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "1"
				case 1:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 425C2DD9
					/// @DnDInput : 3
					/// @DnDParent : 3D68D9D5
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					/// @DnDArgument : "var_2" "hair_offset_y"
					head_offset_x = 0;
					head_offset_y = 0;
					hair_offset_y = 0;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 21218983
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "2"
				case 2:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 305E684B
					/// @DnDInput : 3
					/// @DnDParent : 21218983
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "expr_2" "-1"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					/// @DnDArgument : "var_2" "hair_offset_y"
					head_offset_x = 0;
					head_offset_y = -1;
					hair_offset_y = -1;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 001042ED
				/// @DnDParent : 5A4910E0
				/// @DnDArgument : "const" "3"
				case 3:	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D69E91C
					/// @DnDInput : 3
					/// @DnDParent : 001042ED
					/// @DnDArgument : "expr_1" "-1"
					/// @DnDArgument : "expr_2" "-1"
					/// @DnDArgument : "var" "head_offset_x"
					/// @DnDArgument : "var_1" "head_offset_y"
					/// @DnDArgument : "var_2" "hair_offset_y"
					head_offset_x = 0;
					head_offset_y = -1;
					hair_offset_y = -1;	break;}	break;
	
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
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21329A3C
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "expr" "animcurve_channel_evaluate(walk_curve,((image_index)%4)/4)*(walk_bobbing_strength)"
			/// @DnDArgument : "var" "walk_bob_height"
			walk_bob_height = animcurve_channel_evaluate(walk_curve,((image_index)%4)/4)*(walk_bobbing_strength);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 02311FDD
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "expr" "animcurve_channel_evaluate(ear_bob_curve,((image_index+5)%4)/4)*(ear_bobbing_strength)"
			/// @DnDArgument : "var" "ear_bobbing"
			ear_bobbing = animcurve_channel_evaluate(ear_bob_curve,((image_index+5)%4)/4)*(ear_bobbing_strength);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 673EEEB7
			/// @DnDComment : lol
			/// @DnDInput : 4
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "expr" "3+squashstretch*2"
			/// @DnDArgument : "expr_2" "-animcurve_channel_evaluate(walk_curve,((image_index-1)%4)/4)*(5)+head_offset_y_offset"
			/// @DnDArgument : "expr_3" "-animcurve_channel_evaluate(ear_bob_curve,((image_index+3.5)%4)/4)*(4)"
			/// @DnDArgument : "var" "head_offset_y_offset"
			/// @DnDArgument : "var_1" "head_offset_x"
			/// @DnDArgument : "var_2" "head_offset_y"
			/// @DnDArgument : "var_3" "hair_offset_y"
			head_offset_y_offset = 3+squashstretch*2;
			head_offset_x = 0;
			head_offset_y = -animcurve_channel_evaluate(walk_curve,((image_index-1)%4)/4)*(5)+head_offset_y_offset;
			hair_offset_y = -animcurve_channel_evaluate(ear_bob_curve,((image_index+3.5)%4)/4)*(4);
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 1115F6B4
			/// @DnDDisabled : 1
			/// @DnDParent : 77AB7D3F
			/// @DnDArgument : "expr" "floor(image_index)"
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 097AC645
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 229C3599
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 097AC645
			/// @DnDArgument : "expr_1" "-3+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-8+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 1D2F05B1
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "1"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6DC9CCD5
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 1D2F05B1
			/// @DnDArgument : "expr_1" "-2+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-5+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 38AF4FAD
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "2"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C7F4CDF
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 38AF4FAD
			/// @DnDArgument : "expr_1" "-4+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-2+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 5D437956
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "3"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 37499B81
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 5D437956
			/// @DnDArgument : "expr_1" "-6+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-6+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 766EF7BF
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "4"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 01D803F6
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 766EF7BF
			/// @DnDArgument : "expr_1" "-3+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-8+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 756ACF02
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "5"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52794D98
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 756ACF02
			/// @DnDArgument : "expr_1" "-2+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-5+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 3669BC60
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "6"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4013098C
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 3669BC60
			/// @DnDArgument : "expr_1" "-4+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-2+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"
			
			/// @DnDAction : YoYo Games.Switch.Case
			/// @DnDVersion : 1
			/// @DnDHash : 53DDA55A
			/// @DnDDisabled : 1
			/// @DnDParent : 1115F6B4
			/// @DnDArgument : "const" "7"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1D7719FB
			/// @DnDInput : 3
			/// @DnDDisabled : 1
			/// @DnDParent : 53DDA55A
			/// @DnDArgument : "expr_1" "-6+head_offset_y_offset"
			/// @DnDArgument : "expr_2" "-6+head_offset_y_offset"
			/// @DnDArgument : "var" "head_offset_x"
			/// @DnDArgument : "var_1" "head_offset_y"
			/// @DnDArgument : "var_2" "hair_offset_y"	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 45E8B3C5
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.HIT"
		case ps.HIT:	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4FFFF336
			/// @DnDInput : 3
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "expr" "knockback_speed"
			/// @DnDArgument : "expr_1" "-1*global.game_speed"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "expr_2" "180"
			/// @DnDArgument : "var" "hsp"
			/// @DnDArgument : "var_1" "knockback_cooldown"
			/// @DnDArgument : "var_2" "iframes"
			hsp = knockback_speed;
			knockback_cooldown += -1*global.game_speed;
			iframes = 180;
		
			/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
			/// @DnDVersion : 1
			/// @DnDHash : 51190DF1
			/// @DnDParent : 45E8B3C5
			/// @DnDArgument : "soundid" "sfx_hover_thing"
			/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
			var l51190DF1_0 = sfx_hover_thing;if (audio_is_playing(l51190DF1_0)){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 20C96E5F
				/// @DnDParent : 51190DF1
				/// @DnDArgument : "soundid" "sfx_hover_thing"
				/// @DnDSaveInfo : "soundid" "sfx_hover_thing"
				audio_stop_sound(sfx_hover_thing);}
		
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
				room = map;}	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4FF7BE74
		/// @DnDParent : 33FA4604
		/// @DnDArgument : "const" "ps.THINK"
		case ps.THINK:	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 22D7E985
			/// @DnDParent : 4FF7BE74
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "value" "ps.AIR"
			if(state == ps.AIR){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 5885DE31
				/// @DnDParent : 22D7E985
				/// @DnDArgument : "script" "check_ground"
				/// @DnDSaveInfo : "script" "check_ground"
				script_execute(check_ground);
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 3B700195
				/// @DnDParent : 22D7E985
				/// @DnDArgument : "expr" "on_ground"
				if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 2C77BA5F
					/// @DnDParent : 3B700195
					/// @DnDArgument : "expr" "-.3"
					/// @DnDArgument : "var" "squashstretch"
					squashstretch = -.3;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0C538C54
					/// @DnDParent : 3B700195
					/// @DnDArgument : "soundid" "sfx_land"
					/// @DnDArgument : "gain" "1.9"
					/// @DnDArgument : "pitch" "random_range(.8,1.2)"
					/// @DnDSaveInfo : "soundid" "sfx_land"
					audio_play_sound(sfx_land, 0, 0, 1.9, undefined, random_range(.8,1.2));
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 73971ABF
					/// @DnDParent : 3B700195
					/// @DnDArgument : "times" "8"
					repeat(8){	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 52E509F9
						/// @DnDParent : 73971ABF
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "joe"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "e_freedust"
						/// @DnDArgument : "layer" ""Effects""
						/// @DnDSaveInfo : "objectid" "e_freedust"
						var joe = instance_create_layer(x + 0, y + 0, "Effects", e_freedust);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 6987B052
						/// @DnDParent : 73971ABF
						/// @DnDArgument : "expr" "random_range(-2,2)"
						/// @DnDArgument : "var" "joe.hspeed"
						joe.hspeed = random_range(-2,2);}}}
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 11806C3C
			/// @DnDParent : 4FF7BE74
			/// @DnDArgument : "script" "check_ground"
			/// @DnDSaveInfo : "script" "check_ground"
			script_execute(check_ground);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 298586A4
			/// @DnDParent : 4FF7BE74
			/// @DnDArgument : "script" "controlz"
			/// @DnDSaveInfo : "script" "controlz"
			script_execute(controlz);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5ED28C5B
			/// @DnDParent : 4FF7BE74
			/// @DnDArgument : "script" "movement_stuff"
			/// @DnDSaveInfo : "script" "movement_stuff"
			script_execute(movement_stuff);	break;}

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
/// @DnDHash : 47ED6D9E
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63070E9F
	/// @DnDParent : 47ED6D9E
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "3"
	if(hp <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6029DB85
		/// @DnDParent : 63070E9F
		/// @DnDArgument : "var" "state"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "ps.DIE"
		if(!(state == ps.DIE)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 514943D0
			/// @DnDInput : 2
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "expr" "ps.DIE"
			/// @DnDArgument : "expr_1" "9999"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "iframes"
			state = ps.DIE;
			iframes = 9999;
		
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 621E846B
			/// @DnDApplyTo : mygurn
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "objind" "o_emptyhanded"
			/// @DnDSaveInfo : "objind" "o_emptyhanded"
			with(mygurn) instance_change(o_emptyhanded, true);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4392FBBB
			/// @DnDInput : 4
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "script" "scr_makeexplosion"
			/// @DnDArgument : "arg" "x"
			/// @DnDArgument : "arg_1" "y"
			/// @DnDArgument : "arg_2" "on_ground"
			/// @DnDArgument : "arg_3" "1.5"
			/// @DnDSaveInfo : "script" "scr_makeexplosion"
			script_execute(scr_makeexplosion, x, y, on_ground, 1.5);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 603D16EC
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "script" "play_kill_sound"
			/// @DnDSaveInfo : "script" "play_kill_sound"
			script_execute(play_kill_sound);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 4CDE2FFE
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "script" "scr_zorb_voices"
			/// @DnDArgument : "arg" ""die""
			/// @DnDSaveInfo : "script" "scr_zorb_voices"
			script_execute(scr_zorb_voices, "die");
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0B217A28
			/// @DnDDisabled : 1
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "soundid" "gurchin_die"
			/// @DnDSaveInfo : "soundid" "gurchin_die"
		
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 65D2EB48
			/// @DnDParent : 6029DB85
			/// @DnDArgument : "soundid" "sfx_Complete_Destruction"
			/// @DnDArgument : "gain" ".5"
			/// @DnDSaveInfo : "soundid" "sfx_Complete_Destruction"
			audio_play_sound(sfx_Complete_Destruction, 0, 0, .5, undefined, 1.0);}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 436131CD
	/// @DnDParent : 47ED6D9E
	/// @DnDArgument : "var" "iframes"
	/// @DnDArgument : "op" "4"
	if(iframes >= 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 79420D1C
		/// @DnDParent : 436131CD
		/// @DnDArgument : "expr" "clamp(iframes-1*global.game_speed,0, 9990)"
		/// @DnDArgument : "var" "iframes"
		iframes = clamp(iframes-1*global.game_speed,0, 9990);}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C7F0ABF
	/// @DnDParent : 47ED6D9E
	/// @DnDArgument : "var" "reticle.x"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "x"
	if(reticle.x > x){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 472B47F9
		/// @DnDParent : 2C7F0ABF
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "facing"
		facing = 1;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1003172F
	/// @DnDParent : 47ED6D9E
	/// @DnDArgument : "var" "reticle.x"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "x"
	if(reticle.x < x){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 699A35A7
		/// @DnDParent : 1003172F
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "facing"
		facing = -1;}

	/// @DnDAction : YoYo Games.Common.If_Undefined
	/// @DnDVersion : 1
	/// @DnDHash : 4E62ACCC
	/// @DnDParent : 47ED6D9E
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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2C6D4611
	/// @DnDParent : 47ED6D9E
	/// @DnDArgument : "var" "control_type"
	/// @DnDArgument : "value" "cr.LOCAL"
	if(control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 7C839B1C
		/// @DnDParent : 2C6D4611
		/// @DnDArgument : "code" "// How many seconds between packets?$(13_10)var send_interval = 0.3; // 30 times per second$(13_10)$(13_10)send_timer += delta_time / 1000000;$(13_10)$(13_10)if (send_timer >= send_interval) {$(13_10)    send_timer -= send_interval;$(13_10)$(13_10)    send_movement_packet(socket, x, y);$(13_10)	fix_ammo_count(socket);$(13_10)	//send_input_packet(socket, inputs);$(13_10)	//send_velocity_packet(socket, hsp, vsp);$(13_10)	//send_aim_packet(socket, reticle.x, reticle.y, nav);$(13_10)}$(13_10)"
		// How many seconds between packets?
		var send_interval = 0.3; // 30 times per second
		
		send_timer += delta_time / 1000000;
		
		if (send_timer >= send_interval) {
		    send_timer -= send_interval;
		
		    send_movement_packet(socket, x, y);
			fix_ammo_count(socket);
			//send_input_packet(socket, inputs);
			//send_velocity_packet(socket, hsp, vsp);
			//send_aim_packet(socket, reticle.x, reticle.y, nav);
		}}}