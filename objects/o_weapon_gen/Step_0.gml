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
					/// @DnDArgument : "value" "300"
					if(o_game.flub >= 300){	/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7F89887C
						/// @DnDInput : 3
						/// @DnDParent : 38CD74CB
						/// @DnDArgument : "expr" "-300"
						/// @DnDArgument : "expr_relative" "1"
						/// @DnDArgument : "expr_1" "ps.HIT"
						/// @DnDArgument : "expr_2" "400"
						/// @DnDArgument : "var" "o_game.flub"
						/// @DnDArgument : "var_1" "state"
						/// @DnDArgument : "var_2" "cooldown"
						o_game.flub += -300;
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
			/// @DnDArgument : "soundid" "dry_fart"
			/// @DnDArgument : "gain" "1.5"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "dry_fart"
			audio_play_sound(dry_fart, 0, 0, 1.5, undefined, random_range(.9,1.1));
		
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 3863E141
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "var" "gun_to_be_num"
			/// @DnDArgument : "var_temp" "1"
			var gun_to_be_num = (random_range(0, 1));
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7A2EF430
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "var" "gun_to_be_num"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" ".05"
			if(gun_to_be_num >= .05){	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 7959F18F
				/// @DnDInput : 4
				/// @DnDParent : 7A2EF430
				/// @DnDArgument : "var" "gun_to_be"
				/// @DnDArgument : "option" "o_gon"
				/// @DnDArgument : "option_1" "o_machgun"
				/// @DnDArgument : "option_2" "o_shottgun"
				/// @DnDArgument : "option_3" "o_bat"
				gun_to_be = choose(o_gon, o_machgun, o_shottgun, o_bat);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0D4B7569
			/// @DnDParent : 26B74FB8
			else{	/// @DnDAction : YoYo Games.Random.Choose
				/// @DnDVersion : 1
				/// @DnDHash : 5F7AE179
				/// @DnDParent : 0D4B7569
				/// @DnDArgument : "var" "gun_to_be"
				/// @DnDArgument : "option" "o_gilbert_gun"
				gun_to_be = choose(o_gilbert_gun);}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 12F15EBC
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "the_gun_to_be"
			/// @DnDArgument : "objectid" "o_pickup"
			/// @DnDSaveInfo : "objectid" "o_pickup"
			the_gun_to_be = instance_create_layer(x + 0, y + 0, "Instances", o_pickup);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 14E7680C
			/// @DnDInput : 3
			/// @DnDParent : 26B74FB8
			/// @DnDArgument : "expr" "gun_to_be"
			/// @DnDArgument : "expr_1" "700"
			/// @DnDArgument : "expr_2" "ps.IDLE"
			/// @DnDArgument : "var" "the_gun_to_be.weapon_index"
			/// @DnDArgument : "var_1" "cooldown"
			/// @DnDArgument : "var_2" "state"
			the_gun_to_be.weapon_index = gun_to_be;
			cooldown = 700;
			state = ps.IDLE;}	break;}