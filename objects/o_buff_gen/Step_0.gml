/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 56784625
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 32BB6660
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6994BD6C
/// @DnDInput : 2
/// @DnDArgument : "expr" "-1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "expr_1" "clamp(cooldown,0,9999)"
/// @DnDArgument : "var" "cooldown"
/// @DnDArgument : "var_1" "cooldown"
cooldown += -1*global.game_speed;
cooldown = clamp(cooldown,0,9999);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 12078F6E
/// @DnDArgument : "var" "distance_to_object(o_player)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "100"
if(distance_to_object(o_player) < 100){	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 30861461
	/// @DnDParent : 12078F6E
	/// @DnDArgument : "expr" "state"
	var l30861461_0 = state;switch(l30861461_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 14DE8011
		/// @DnDParent : 30861461
		/// @DnDArgument : "const" "ps.IDLE"
		case ps.IDLE:	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 54BA7CE8
			/// @DnDParent : 14DE8011
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "op" "3"
			if(cooldown <= 0){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
				/// @DnDVersion : 1
				/// @DnDHash : 50413893
				/// @DnDParent : 54BA7CE8
				/// @DnDArgument : "key" "ord("E")"
				var l50413893_0;l50413893_0 = keyboard_check_pressed(ord("E"));if (l50413893_0){	/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 38CD74CB
					/// @DnDParent : 50413893
					/// @DnDArgument : "var" "o_game.flub"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "900"
					if(o_game.flub >= 900){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7F89887C
						/// @DnDInput : 3
						/// @DnDParent : 38CD74CB
						/// @DnDArgument : "expr" "-900"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "expr_1" "ps.HIT"
						/// @DnDArgument : "expr_2" "400"
						/// @DnDArgument : "var" "o_game.flub"
						/// @DnDArgument : "var_1" "state"
						/// @DnDArgument : "var_2" "cooldown"
						o_game.flub += -900;
						state = ps.HIT;
						cooldown = 400;
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 02CAD6C3
						/// @DnDParent : 38CD74CB
						/// @DnDArgument : "soundid" "kaching_sound_fx"
						/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
						/// @DnDSaveInfo : "soundid" "kaching_sound_fx"
						audio_play_sound(kaching_sound_fx, 0, 0, 1.0, undefined, random_range(0.9,1.1));
					
						/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 507EA41D
						/// @DnDParent : 38CD74CB
						/// @DnDArgument : "soundid" "long_brain_fart"
						/// @DnDArgument : "gain" ".1"
						/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
						/// @DnDSaveInfo : "soundid" "long_brain_fart"
						audio_play_sound(long_brain_fart, 0, 0, .1, undefined, random_range(0.8,1.2));}}}	break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4FFBD8E0
	/// @DnDParent : 12078F6E
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "operate"
	operate = true;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7D52AB18
else{	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5D2CFE5E
	/// @DnDParent : 7D52AB18
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "operate"
	operate = false;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 4ACEE4AF
/// @DnDArgument : "expr" "state"
var l4ACEE4AF_0 = state;switch(l4ACEE4AF_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4E649E30
	/// @DnDParent : 4ACEE4AF
	/// @DnDArgument : "const" "ps.HIT"
	case ps.HIT:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26B74FB8
		/// @DnDParent : 4E649E30
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Audio.Stop_Audio
			/// @DnDVersion : 1
			/// @DnDHash : 0149410A
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "soundid" "long_brain_fart"
			/// @DnDSaveInfo : "soundid" "long_brain_fart"
			audio_stop_sound(long_brain_fart);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0A2342AE
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "soundid" "sfx_charge"
			/// @DnDArgument : "gain" "1.5"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_charge"
			audio_play_sound(sfx_charge, 0, 0, 1.5, undefined, random_range(.9,1.1));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3863E141
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "var" "buff_to_be_num"
			/// @DnDArgument : "var_temp" "1"
			var buff_to_be_num = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A2EF430
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "var" "buff_to_be_num"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" ".1"
			if(buff_to_be_num >= .1){	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 7959F18F
				/// @DnDInput : 4
				/// @DnDParent : 7A2EF430
				/// @DnDArgument : "var" "buff_to_be"
				/// @DnDArgument : "option" ""Reload Speed""
				/// @DnDArgument : "option_1" ""Fire Rate""
				/// @DnDArgument : "option_2" ""Boost Capacity""
				/// @DnDArgument : "option_3" ""Ammo Capacity""
				buff_to_be = choose("Reload Speed", "Fire Rate", "Boost Capacity", "Ammo Capacity");}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0D4B7569
			/// @DnDParent : 26B74FB8
			else{	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 5F7AE179
				/// @DnDParent : 0D4B7569
				/// @DnDArgument : "var" "buff_to_be"
				/// @DnDArgument : "option" ""Movement Speed""
				buff_to_be = choose("Movement Speed");}
		
			/// @DnDAction : YoYo Games.Switch.Switch
			/// @DnDVersion : 1
			/// @DnDHash : 6CB3DAE1
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "expr" "buff_to_be"
			var l6CB3DAE1_0 = buff_to_be;switch(l6CB3DAE1_0){	/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3AF03B8E
				/// @DnDParent : 6CB3DAE1
				/// @DnDArgument : "const" ""Movement Speed""
				case "Movement Speed":	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 086FA5D0
					/// @DnDParent : 3AF03B8E
					/// @DnDArgument : "expr" ".15"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.movementspeed_bonus"
					global.movementspeed_bonus += .15;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 26C6E493
				/// @DnDParent : 6CB3DAE1
				/// @DnDArgument : "const" ""Ammo Capacity""
				case "Ammo Capacity":	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 431D569E
					/// @DnDParent : 26C6E493
					/// @DnDArgument : "expr" ".15"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.ammo_bonus"
					global.ammo_bonus += .15;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 628E68B6
				/// @DnDParent : 6CB3DAE1
				/// @DnDArgument : "const" ""Boost Capacity""
				case "Boost Capacity":	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 78B71EBB
					/// @DnDParent : 628E68B6
					/// @DnDArgument : "expr" ".15"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.booster_bonus"
					global.booster_bonus += .15;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3D26A48B
				/// @DnDParent : 6CB3DAE1
				/// @DnDArgument : "const" ""Fire Rate""
				case "Fire Rate":	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 242BDBBB
					/// @DnDParent : 3D26A48B
					/// @DnDArgument : "expr" ".15"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.firerate_bonus"
					global.firerate_bonus += .15;	break;
			
				/// @DnDAction : YoYo Games.Switch.Case
				/// @DnDVersion : 1
				/// @DnDHash : 3709C780
				/// @DnDParent : 6CB3DAE1
				/// @DnDArgument : "const" ""Reload Speed""
				case "Reload Speed":	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5EF1570F
					/// @DnDParent : 3709C780
					/// @DnDArgument : "expr" ".15"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "global.reload_bonus"
					global.reload_bonus += .15;	break;}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12F15EBC
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "xpos" "o_player.x"
			/// @DnDArgument : "ypos" "o_player.y"
			/// @DnDArgument : "var" "buff_notif"
			/// @DnDArgument : "objectid" "e_notif"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_notif"
			buff_notif = instance_create_layer(o_player.x, o_player.y, "Effects", e_notif);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14E7680C
			/// @DnDInput : 3
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "expr" ""15% " + buff_to_be + " Increase!""
			/// @DnDArgument : "expr_1" "700"
			/// @DnDArgument : "expr_2" "ps.IDLE"
			/// @DnDArgument : "var" "buff_notif.dis_text"
			/// @DnDArgument : "var_1" "cooldown"
			/// @DnDArgument : "var_2" "state"
			buff_notif.dis_text = "15% " + buff_to_be + " Increase!";
			cooldown = 700;
			state = ps.IDLE;}	break;}