/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B389BFB
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BF0D8A0
	/// @DnDInput : 5
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
	/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
	/// @DnDArgument : "expr_2" "kickbackx*.7"
	/// @DnDArgument : "expr_3" "androtate*.5"
	/// @DnDArgument : "expr_4" "kickbacky*.7"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "kickbackx"
	/// @DnDArgument : "var_3" "androtate"
	/// @DnDArgument : "var_4" "kickbacky"
	x = o_player.x-2*o_player.facing;
	y = o_player.y- 41+o_player.head_offset_y;
	kickbackx = kickbackx*.7;
	androtate = androtate*.5;
	kickbacky = kickbacky*.7;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "angle" "point_direction(x,y, mouse_x, mouse_y)"
	image_angle = point_direction(x,y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00370ED7
	/// @DnDInput : 4
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
	/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
	/// @DnDArgument : "expr_2" "lengthdir_x(50,image_angle)"
	/// @DnDArgument : "expr_3" "lengthdir_y(50,image_angle+20*o_player.facing)"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "glorb_x"
	/// @DnDArgument : "var_3" "glorb_y"
	x = o_player.x-2*o_player.facing;
	y = o_player.y- 41+o_player.head_offset_y;
	glorb_x = lengthdir_x(50,image_angle);
	glorb_y = lengthdir_y(50,image_angle+20*o_player.facing);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 040E57F8
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 0A48BAF7
		/// @DnDParent : 040E57F8
		var l0A48BAF7_0;l0A48BAF7_0 = mouse_check_button_pressed(mb_left);if (l0A48BAF7_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 0580B91D
			/// @DnDParent : 0A48BAF7
			/// @DnDArgument : "soundid" "sfx_stress"
			/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_stress"
			audio_play_sound(sfx_stress, 0, 0, 1.0, undefined, random_range(0.9,1.1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 208BAB8C
			/// @DnDParent : 0A48BAF7
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "charge"
			charge = 1;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
		/// @DnDVersion : 1.1
		/// @DnDHash : 3F4C6B2D
		/// @DnDParent : 040E57F8
		var l3F4C6B2D_0;l3F4C6B2D_0 = mouse_check_button(mb_left);if (l3F4C6B2D_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2373F2A7
			/// @DnDParent : 3F4C6B2D
			/// @DnDArgument : "expr" "1*global.game_speed"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "charge"
			charge += 1*global.game_speed;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A9CC710
			/// @DnDParent : 3F4C6B2D
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "120"
			if(charge >= 120){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A4B330F
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "laser_out"
				/// @DnDArgument : "value" "false"
				if(laser_out == false){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 396F61BE
					/// @DnDParent : 2A4B330F
					/// @DnDArgument : "soundid" "cablew"
					/// @DnDArgument : "pitch" "random_range(.8,1.2)"
					/// @DnDSaveInfo : "soundid" "cablew"
					audio_play_sound(cablew, 0, 0, 1.0, undefined, random_range(.8,1.2));
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3A703D0C
					/// @DnDParent : 2A4B330F
					/// @DnDArgument : "script" "scr_white_flash"
					/// @DnDArgument : "arg" ".7"
					/// @DnDSaveInfo : "script" "scr_white_flash"
					script_execute(scr_white_flash, .7);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 3341FEAD
					/// @DnDInput : 2
					/// @DnDParent : 2A4B330F
					/// @DnDArgument : "script" "scr_screenshake"
					/// @DnDArgument : "arg" "15"
					/// @DnDArgument : "arg_1" "15"
					/// @DnDSaveInfo : "script" "scr_screenshake"
					script_execute(scr_screenshake, 15, 15);}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2862AD96
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "true"
				/// @DnDArgument : "var" "laser_out"
				laser_out = true;
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 1F64EBF0
				/// @DnDParent : 3A9CC710
				{	/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 2EB2AE9A
					/// @DnDInput : 2
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "script" "scr_laser"
					/// @DnDArgument : "arg" "glorb_x"
					/// @DnDArgument : "arg_1" "glorb_y"
					/// @DnDSaveInfo : "script" "scr_laser"
					script_execute(scr_laser, glorb_x, glorb_y);}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5B3772CE
				/// @DnDDisabled : 1
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "xpos" "kickbackx"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "kickbacky"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "shell"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "e_bulletshell"
				/// @DnDSaveInfo : "objectid" "e_bulletshell"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0893C13E
				/// @DnDInput : 2
				/// @DnDDisabled : 1
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "mybb.hspeed*random_range(-.5,-.3)"
				/// @DnDArgument : "expr_1" "mybb.vspeed*random_range(-.5,-.3) - 2"
				/// @DnDArgument : "var" "shell.hsp"
				/// @DnDArgument : "var_1" "shell.vsp"
			
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 134B6298
				/// @DnDInput : 4
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr_2" "-1*global.game_speed"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "125"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				/// @DnDArgument : "var_3" "charge"
				kickbackx = 0;
				kickbacky = 0;
				ammo += -1*global.game_speed;
				charge = 125;
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 3CE3CBE6
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "soundid" "laser_loop"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "laser_loop"
				var l3CE3CBE6_0 = laser_loop;if (!audio_is_playing(l3CE3CBE6_0)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 2AD1ED2A
					/// @DnDParent : 3CE3CBE6
					/// @DnDArgument : "xpos" "glorb_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "glorb_y"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "start_flash"
					/// @DnDArgument : "var_temp" "1"
					/// @DnDArgument : "objectid" "e_hoop"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_hoop"
					var start_flash = instance_create_layer(x + glorb_x, y + glorb_y, "Effects", e_hoop);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5D790827
					/// @DnDParent : 3CE3CBE6
					/// @DnDArgument : "expr" "s_fufuflash"
					/// @DnDArgument : "var" "start_flash.sprite_index"
					start_flash.sprite_index = s_fufuflash;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 140998AC
					/// @DnDParent : 3CE3CBE6
					/// @DnDArgument : "soundid" "laser_loop"
					/// @DnDArgument : "pitch" ".7 + (ammo/ammo_cap)*1.2"
					/// @DnDSaveInfo : "soundid" "laser_loop"
					audio_play_sound(laser_loop, 0, 0, 1.0, undefined, .7 + (ammo/ammo_cap)*1.2);}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 120390CF
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "ammo"
				/// @DnDArgument : "op" "3"
				if(ammo <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 3D9B387A
					/// @DnDParent : 120390CF
					/// @DnDArgument : "soundid" "laser"
					/// @DnDArgument : "pitch" "random_range(0.8,1.2)"
					/// @DnDSaveInfo : "soundid" "laser"
					audio_play_sound(laser, 0, 0, 1.0, undefined, random_range(0.8,1.2));
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5A60A81A
					/// @DnDInput : 3
					/// @DnDParent : 120390CF
					/// @DnDArgument : "expr" "stance.RELOAD"
					/// @DnDArgument : "expr_1" "200"
					/// @DnDArgument : "expr_2" "false"
					/// @DnDArgument : "var" "anim"
					/// @DnDArgument : "var_1" "charge"
					/// @DnDArgument : "var_2" "laser_out"
					anim = stance.RELOAD;
					charge = 200;
					laser_out = false;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1A2372D9
					/// @DnDParent : 120390CF
					/// @DnDArgument : "soundid" "sfx_reload"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "sfx_reload"
					audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));
				
					/// @DnDAction : YoYo Games.Random.Choose
					/// @DnDVersion : 1
					/// @DnDHash : 6A6C53BA
					/// @DnDInput : 13
					/// @DnDParent : 120390CF
					/// @DnDArgument : "var" "blessage"
					/// @DnDArgument : "option" ""I can fire more lasers... if you ask nicely.""
					/// @DnDArgument : "option_1" ""Fodder.""
					/// @DnDArgument : "option_2" ""You got anything to eat, buddy?""
					/// @DnDArgument : "option_3" ""Zzz...""
					/// @DnDArgument : "option_4" ""HEY! Ease up on the grip!""
					/// @DnDArgument : "option_5" ""YO! Tighten your grip, will you?""
					/// @DnDArgument : "option_6" ""Any chance you got a sister?""
					/// @DnDArgument : "option_7" ""You make for a good sidekick!""
					/// @DnDArgument : "option_8" ""Give me a sec...""
					/// @DnDArgument : "option_9" ""What can I say? I'm just the best!""
					/// @DnDArgument : "option_10" ""I think all the time, sometimes!""
					/// @DnDArgument : "option_11" ""Hey, so... do I get clothes too?""
					/// @DnDArgument : "option_12" ""So... me, or the screaming thing?""
					blessage = choose("I can fire more lasers... if you ask nicely.", "Fodder.", "You got anything to eat, buddy?", "Zzz...", "HEY! Ease up on the grip!", "YO! Tighten your grip, will you?", "Any chance you got a sister?", "You make for a good sidekick!", "Give me a sec...", "What can I say? I'm just the best!", "I think all the time, sometimes!", "Hey, so... do I get clothes too?", "So... me, or the screaming thing?");
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0DC5ED87
					/// @DnDParent : 120390CF
					/// @DnDArgument : "script" "msg_stop"
					/// @DnDSaveInfo : "script" "msg_stop"
					script_execute(msg_stop);}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 48AF556A
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "floor(ammo) mod 4"
				if(floor(ammo) mod 4 == 0){	/// @DnDAction : YoYo Games.Data Structures.DS_Clear
					/// @DnDVersion : 1
					/// @DnDHash : 27C3180E
					/// @DnDParent : 48AF556A
					/// @DnDArgument : "var" "collided_with"
					ds_list_clear(collided_with);}}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 5C50E99C
			/// @DnDParent : 3F4C6B2D
			else{	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 53D9D978
				/// @DnDParent : 5C50E99C
				/// @DnDArgument : "expr" "false"
				/// @DnDArgument : "var" "laser_out"
				laser_out = false;
			
				/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
				/// @DnDVersion : 1
				/// @DnDHash : 2136A587
				/// @DnDParent : 5C50E99C
				/// @DnDArgument : "soundid" "sfx_gilb_charge"
				/// @DnDArgument : "not" "1"
				/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
				var l2136A587_0 = sfx_gilb_charge;if (!audio_is_playing(l2136A587_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0E520108
					/// @DnDParent : 2136A587
					/// @DnDArgument : "soundid" "sfx_gilb_charge"
					/// @DnDArgument : "pitch" "1+(charge/120)*.9"
					/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
					audio_play_sound(sfx_gilb_charge, 0, 0, 1.0, undefined, 1+(charge/120)*.9);}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 12E79635
				/// @DnDParent : 5C50E99C
				/// @DnDArgument : "var" "floor(charge) mod 3"
				if(floor(charge) mod 3 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 71352D9D
					/// @DnDParent : 12E79635
					/// @DnDArgument : "xpos" "glorb_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "glorb_y"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "brah"
					/// @DnDArgument : "objectid" "e_bullet_light"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_bullet_light"
					brah = instance_create_layer(x + glorb_x, y + glorb_y, "Effects", e_bullet_light);
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 486A099B
					/// @DnDParent : 12E79635
					/// @DnDArgument : "expr" "o_gilbert_gun"
					/// @DnDArgument : "var" "brah.gun_index"
					brah.gun_index = o_gilbert_gun;}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
		/// @DnDVersion : 1.1
		/// @DnDHash : 22380F53
		/// @DnDParent : 040E57F8
		var l22380F53_0;l22380F53_0 = mouse_check_button_released(mb_left);if (l22380F53_0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 7E4961BE
			/// @DnDParent : 22380F53
			/// @DnDArgument : "soundid" "sfx_relax"
			/// @DnDArgument : "pitch" "random_range(0.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_relax"
			audio_play_sound(sfx_relax, 0, 0, 1.0, undefined, random_range(0.9,1.1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 231F16B4
			/// @DnDParent : 22380F53
			/// @DnDArgument : "expr" "false"
			/// @DnDArgument : "var" "laser_out"
			laser_out = false;}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 02B908F3
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "key" "ord("R")"
		var l02B908F3_0;l02B908F3_0 = keyboard_check_pressed(ord("R"));if (l02B908F3_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 158152F8
			/// @DnDInput : 3
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "200"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			/// @DnDArgument : "var_2" "laser_out"
			anim = stance.RELOAD;
			charge = 200;
			laser_out = false;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5EA069DF
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5536DB98
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "script" "msg_stop"
			/// @DnDSaveInfo : "script" "msg_stop"
			script_execute(msg_stop);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 678A8378
	/// @DnDParent : 5B389BFB
	else{	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47BA1F49
		/// @DnDParent : 678A8378
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge"
		charge += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CBDD2E5
		/// @DnDParent : 678A8378
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "3"
		if(charge <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2E11666B
			/// @DnDInput : 2
			/// @DnDParent : 3CBDD2E5
			/// @DnDArgument : "expr" "ammo_cap"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = ammo_cap;
			anim = stance.CASUAL;}}}