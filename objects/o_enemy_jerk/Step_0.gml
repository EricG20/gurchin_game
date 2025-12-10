/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 25E14A30
/// @DnDArgument : "script" "flash_reduce"
/// @DnDSaveInfo : "script" "flash_reduce"
script_execute(flash_reduce);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7E0C497E
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 23E4E00E
	/// @DnDParent : 7E0C497E
	/// @DnDArgument : "expr" "es.DEATH"
	/// @DnDArgument : "var" "state"
	state = es.DEATH;}

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 5517DD1C
/// @DnDArgument : "expr" "state"
var l5517DD1C_0 = state;switch(l5517DD1C_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 05384411
	/// @DnDParent : 5517DD1C
	/// @DnDArgument : "const" "es.IDLE"
	case es.IDLE:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 413F428D
		/// @DnDParent : 05384411
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 3BDA623D
		/// @DnDParent : 05384411
		/// @DnDArgument : "script" "hmm_player_or_pylon"
		/// @DnDSaveInfo : "script" "hmm_player_or_pylon"
		script_execute(hmm_player_or_pylon);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 1C4BC87A
		/// @DnDParent : 05384411
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 77853D38
		/// @DnDParent : 05384411
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5408E8C1
		/// @DnDParent : 05384411
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 004ED145
			/// @DnDParent : 5408E8C1
			/// @DnDArgument : "var" "distance_to_object(target)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "600"
			if(distance_to_object(target) < 600){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 24520D3B
				/// @DnDParent : 004ED145
				/// @DnDArgument : "soundid" "charge_2"
				/// @DnDSaveInfo : "soundid" "charge_2"
				audio_play_sound(charge_2, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 254D827A
				/// @DnDParent : 004ED145
				/// @DnDArgument : "expr" "es.CHARGE"
				/// @DnDArgument : "var" "state"
				state = es.CHARGE;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 0E1EFD4F
			/// @DnDParent : 5408E8C1
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 147C927F
				/// @DnDInput : 2
				/// @DnDParent : 0E1EFD4F
				/// @DnDArgument : "expr" "es.WALK"
				/// @DnDArgument : "expr_1" "240"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "cooldown"
				state = es.WALK;
				cooldown = 240;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3FA65EE5
	/// @DnDParent : 5517DD1C
	/// @DnDArgument : "const" "es.WALK"
	case es.WALK:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 7672B5E7
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "script" "hmm_player_or_pylon"
		/// @DnDSaveInfo : "script" "hmm_player_or_pylon"
		script_execute(hmm_player_or_pylon);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 15EC3D7F
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 16B95F41
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 661D3959
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16FEEA93
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "expr" "move_speed*facing"
		/// @DnDArgument : "var" "hsp"
		hsp = move_speed*facing;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D13A4FA
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "var" "floor(image_index)"
		/// @DnDArgument : "value" "1"
		if(floor(image_index) == 1){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 52453753
			/// @DnDParent : 5D13A4FA
			/// @DnDArgument : "var" "xprevious"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "x"
			if(!(xprevious == x)){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 26F9C525
				/// @DnDInput : 2
				/// @DnDParent : 52453753
				/// @DnDArgument : "script" "scr_screenshake"
				/// @DnDArgument : "arg" "0"
				/// @DnDArgument : "arg_1" "2"
				/// @DnDSaveInfo : "script" "scr_screenshake"
				script_execute(scr_screenshake, 0, 2);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3B2A11F9
				/// @DnDParent : 52453753
				/// @DnDArgument : "soundid" "sfx_footstep"
				/// @DnDArgument : "gain" ".8"
				/// @DnDArgument : "pitch" "random_range(.3,.4)"
				/// @DnDSaveInfo : "soundid" "sfx_footstep"
				audio_play_sound(sfx_footstep, 0, 0, .8, undefined, random_range(.3,.4));
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 356234D0
				/// @DnDParent : 52453753
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
				/// @DnDHash : 196349D1
				/// @DnDParent : 52453753
				/// @DnDArgument : "expr" "-facing*.3"
				/// @DnDArgument : "var" "joe.hspeed"
				joe.hspeed = -facing*.3;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 21FBC046
			/// @DnDParent : 5D13A4FA
			/// @DnDArgument : "var" "hsp"
			hsp = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 622B4A59
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "var" "floor(image_index)"
		/// @DnDArgument : "value" "3"
		if(floor(image_index) == 3){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3D223531
			/// @DnDParent : 622B4A59
			/// @DnDArgument : "var" "xprevious"
			/// @DnDArgument : "not" "1"
			/// @DnDArgument : "value" "x"
			if(!(xprevious == x)){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 01AB00C9
				/// @DnDInput : 2
				/// @DnDParent : 3D223531
				/// @DnDArgument : "script" "scr_screenshake"
				/// @DnDArgument : "arg" "0"
				/// @DnDArgument : "arg_1" "2"
				/// @DnDSaveInfo : "script" "scr_screenshake"
				script_execute(scr_screenshake, 0, 2);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 528E4585
				/// @DnDParent : 3D223531
				/// @DnDArgument : "script" "face_gunna"
				/// @DnDSaveInfo : "script" "face_gunna"
				script_execute(face_gunna);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5B45D073
				/// @DnDParent : 3D223531
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
				/// @DnDHash : 1E630B8C
				/// @DnDParent : 3D223531
				/// @DnDArgument : "expr" "-facing*.3"
				/// @DnDArgument : "var" "joe.hspeed"
				joe.hspeed = -facing*.3;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3192A253
			/// @DnDParent : 622B4A59
			/// @DnDArgument : "var" "hsp"
			hsp = 0;}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2ED58AC2
		/// @DnDParent : 3FA65EE5
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75A65E77
			/// @DnDParent : 2ED58AC2
			/// @DnDArgument : "var" "distance_to_object(target)"
			/// @DnDArgument : "op" "1"
			/// @DnDArgument : "value" "600"
			if(distance_to_object(target) < 600){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 5779DD07
				/// @DnDParent : 75A65E77
				/// @DnDArgument : "soundid" "charge_2"
				/// @DnDSaveInfo : "soundid" "charge_2"
				audio_play_sound(charge_2, 0, 0, 1.0, undefined, 1.0);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2DDE0897
				/// @DnDParent : 75A65E77
				/// @DnDArgument : "expr" "es.CHARGE"
				/// @DnDArgument : "var" "state"
				state = es.CHARGE;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 1B5EDDEC
				/// @DnDParent : 75A65E77
				/// @DnDArgument : "script" "hmm_player_or_pylon"
				/// @DnDSaveInfo : "script" "hmm_player_or_pylon"
				script_execute(hmm_player_or_pylon);}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3F0BA9F6
			/// @DnDParent : 2ED58AC2
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 412FF892
				/// @DnDParent : 3F0BA9F6
				/// @DnDArgument : "expr" "es.IDLE"
				/// @DnDArgument : "var" "state"
				state = es.IDLE;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 7025C1DF
	/// @DnDParent : 5517DD1C
	/// @DnDArgument : "const" "es.CHARGE"
	case es.CHARGE:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B7B27AC
		/// @DnDParent : 7025C1DF
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge_hold"
		charge_hold += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 00EF01E6
		/// @DnDParent : 7025C1DF
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 04BCB460
		/// @DnDParent : 7025C1DF
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5E85BCFC
		/// @DnDParent : 7025C1DF
		/// @DnDArgument : "var" "charge_hold"
		/// @DnDArgument : "op" "3"
		if(charge_hold <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2F36F235
			/// @DnDInput : 2
			/// @DnDParent : 5E85BCFC
			/// @DnDArgument : "expr" "es.ATTACK"
			/// @DnDArgument : "expr_1" "40"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "charge_hold"
			state = es.ATTACK;
			charge_hold = 40;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 56E003B1
			/// @DnDParent : 5E85BCFC
			/// @DnDArgument : "soundid" "sfx_smash"
			/// @DnDSaveInfo : "soundid" "sfx_smash"
			audio_play_sound(sfx_smash, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 073F8CAD
			/// @DnDInput : 2
			/// @DnDParent : 5E85BCFC
			/// @DnDArgument : "script" "scr_screenshake"
			/// @DnDArgument : "arg" "10"
			/// @DnDArgument : "arg_1" "10"
			/// @DnDSaveInfo : "script" "scr_screenshake"
			script_execute(scr_screenshake, 10, 10);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1974B788
			/// @DnDParent : 5E85BCFC
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "gloza"
			/// @DnDArgument : "objectid" "o_geyser_maker"
			/// @DnDSaveInfo : "objectid" "o_geyser_maker"
			gloza = instance_create_layer(x + 0, y + 0, "Instances", o_geyser_maker);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 639EBA4F
			/// @DnDParent : 5E85BCFC
			/// @DnDArgument : "expr" "facing"
			/// @DnDArgument : "var" "gloza.facing"
			gloza.facing = facing;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 5833F513
	/// @DnDParent : 5517DD1C
	/// @DnDArgument : "const" "es.ATTACK"
	case es.ATTACK:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 219AC238
		/// @DnDParent : 5833F513
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge_hold"
		charge_hold += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 224F3608
		/// @DnDParent : 5833F513
		/// @DnDArgument : "script" "check_ground"
		/// @DnDSaveInfo : "script" "check_ground"
		script_execute(check_ground);
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 70B68D7E
		/// @DnDParent : 5833F513
		/// @DnDArgument : "script" "movement_stuff"
		/// @DnDSaveInfo : "script" "movement_stuff"
		script_execute(movement_stuff);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42FDC83B
		/// @DnDParent : 5833F513
		/// @DnDArgument : "var" "charge_hold"
		/// @DnDArgument : "op" "3"
		if(charge_hold <= 0){	/// @DnDAction : YoYo Games.Random.Choose
			/// @DnDVersion : 1
			/// @DnDHash : 34932E61
			/// @DnDInput : 3
			/// @DnDParent : 42FDC83B
			/// @DnDArgument : "var" "blup"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "option" "es.IDLE"
			/// @DnDArgument : "option_1" "es.WALK"
			/// @DnDArgument : "option_2" "es.WALK"
			var blup = choose(es.IDLE, es.WALK, es.WALK);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1EF27CB3
			/// @DnDInput : 3
			/// @DnDParent : 42FDC83B
			/// @DnDArgument : "expr" "blup"
			/// @DnDArgument : "expr_1" "40"
			/// @DnDArgument : "expr_2" "180"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "charge_hold"
			/// @DnDArgument : "var_2" "cooldown"
			state = blup;
			charge_hold = 40;
			cooldown = 180;}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 149F826D
	/// @DnDParent : 5517DD1C
	/// @DnDArgument : "const" "es.DEATH"
	case es.DEATH:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 780D55D6
		/// @DnDParent : 149F826D
		/// @DnDArgument : "var" "floor(destruct_time) mod 5"
		if(floor(destruct_time) mod 5 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 2160D8E7
			/// @DnDParent : 780D55D6
			/// @DnDArgument : "xpos" "irandom_range(-40,40)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "irandom_range(-60,0)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "o_vermin_explosion"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "o_vermin_explosion"
			instance_create_layer(x + irandom_range(-40,40), y + irandom_range(-60,0), "Effects", o_vermin_explosion);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 7BAF5042
			/// @DnDParent : 780D55D6
			/// @DnDArgument : "xpos" "irandom_range(-40,40)"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "irandom_range(-60,0)"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
			instance_create_layer(x + irandom_range(-40,40), y + irandom_range(-60,0), "Effects", e_enemy_walkah_shit);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 34A87CCF
			/// @DnDParent : 780D55D6
			/// @DnDArgument : "soundid" "sfx_smallboom"
			/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_smallboom"
			audio_play_sound(sfx_smallboom, 0, 0, 1.0, undefined, random_range(0.9,1.1));}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5395B47B
		/// @DnDParent : 149F826D
		/// @DnDArgument : "var" "destruct_time"
		/// @DnDArgument : "op" "3"
		if(destruct_time <= 0){	/// @DnDAction : YoYo Games.Loops.Repeat
			/// @DnDVersion : 1
			/// @DnDHash : 50F6DDA7
			/// @DnDParent : 5395B47B
			/// @DnDArgument : "times" "25"
			repeat(25){	/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 059AFFDB
				/// @DnDParent : 50F6DDA7
				/// @DnDArgument : "xpos" "irandom_range(bbox_left,bbox_right)"
				/// @DnDArgument : "ypos" "irandom_range(bbox_bottom,bbox_top)"
				/// @DnDArgument : "objectid" "e_enemy_walkah_shit"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_enemy_walkah_shit"
				instance_create_layer(irandom_range(bbox_left,bbox_right), irandom_range(bbox_bottom,bbox_top), "Effects", e_enemy_walkah_shit);
			
				/// @DnDAction : YoYo Games.Instances.Destroy_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 67A6CFA1
				/// @DnDParent : 50F6DDA7
				instance_destroy();}}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 42A261B4
		/// @DnDParent : 149F826D
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "destruct_time"
		destruct_time += -1*global.game_speed;	break;}