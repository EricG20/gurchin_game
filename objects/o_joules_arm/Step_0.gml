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
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41+weilder.head_offset_y"
	/// @DnDArgument : "expr_2" "kickbackx*.7"
	/// @DnDArgument : "expr_3" "androtate*.5"
	/// @DnDArgument : "expr_4" "kickbacky*.7"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "kickbackx"
	/// @DnDArgument : "var_3" "androtate"
	/// @DnDArgument : "var_4" "kickbacky"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41+weilder.head_offset_y;
	kickbackx = kickbackx*.7;
	androtate = androtate*.5;
	kickbacky = kickbacky*.7;

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "angle" "point_direction(x,y, weilder.reticle.x, weilder.reticle.y)"
	image_angle = point_direction(x,y, weilder.reticle.x, weilder.reticle.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00370ED7
	/// @DnDInput : 5
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "weilder.x-7*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 15+weilder.head_offset_y"
	/// @DnDArgument : "expr_2" "lengthdir_x(82,image_angle)"
	/// @DnDArgument : "expr_3" "-25+lengthdir_y(82,image_angle)"
	/// @DnDArgument : "expr_4" "-1*global.game_speed"
	/// @DnDArgument : "expr_relative_4" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "glorb_x"
	/// @DnDArgument : "var_3" "glorb_y"
	/// @DnDArgument : "var_4" "spam_lockout"
	x = weilder.x-7*weilder.facing;
	y = weilder.y- 15+weilder.head_offset_y;
	glorb_x = lengthdir_x(82,image_angle);
	glorb_y = -25+lengthdir_y(82,image_angle);
	spam_lockout += -1*global.game_speed;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 040E57F8
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1A4577F9
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "var" "ammo"
		/// @DnDArgument : "op" "3"
		if(ammo <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 62B19B4B
			/// @DnDInput : 2
			/// @DnDParent : 1A4577F9
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "150/(global.reload_bonus*weilder.reload_bonus)"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 150/(global.reload_bonus*weilder.reload_bonus);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 59456CDA
			/// @DnDParent : 1A4577F9
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 49871671
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.shoot"
		if(weilder.shoot){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 208BAB8C
			/// @DnDInput : 2
			/// @DnDParent : 49871671
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "var_1" "charge_at_full"
			charge = 1;
			charge_at_full = false;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 543C3DA5
			/// @DnDParent : 49871671
			/// @DnDArgument : "var" "spam_lockout"
			/// @DnDArgument : "op" "3"
			if(spam_lockout <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Code
				/// @DnDVersion : 1
				/// @DnDHash : 64E31DAE
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dir = image_angle$(13_10)$(13_10)$(13_10)part_type_size(pt, 0, 3, -global.game_speed, 0);$(13_10)part_type_speed(pt, 3*global.game_speed, 10*global.game_speed, 0, 0)$(13_10)part_type_direction(pt, dir - 30, dir + 30, -global.game_speed, 0);$(13_10)$(13_10)// Emit burst at muzzle position$(13_10)part_particles_create(ps, x+glorb_x, y+glorb_y, pt, 10);"
				/// @description Execute Code
				var dir = image_angle
				
				
				part_type_size(pt, 0, 3, -global.game_speed, 0);
				part_type_speed(pt, 3*global.game_speed, 10*global.game_speed, 0, 0)
				part_type_direction(pt, dir - 30, dir + 30, -global.game_speed, 0);
				
				// Emit burst at muzzle position
				part_particles_create(ps, x+glorb_x, y+glorb_y, pt, 10);
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 69BBE683
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "xpos" "glorb_x"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "glorb_y"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "mybb"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_bullet"
				/// @DnDSaveInfo : "objectid" "o_bullet"
				var mybb = instance_create_layer(x + glorb_x, y + glorb_y, "Instances", o_bullet);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 78BA0F75
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "soundid" "sfx_laser"
				/// @DnDArgument : "gain" ".5"
				/// @DnDArgument : "pitch" "1.5*random_range(.9,1.1)"
				/// @DnDSaveInfo : "soundid" "sfx_laser"
				audio_play_sound(sfx_laser, 0, 0, .5, undefined, 1.5*random_range(.9,1.1));
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 36C08C8C
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "var" "projectile_sprite"
				/// @DnDArgument : "value" "s_joules_weakbeam"
				var projectile_sprite = s_joules_weakbeam;
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 035B8737
				/// @DnDInput : 5
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "script" "scr_adjust_projectile_params"
				/// @DnDArgument : "arg" "mybb"
				/// @DnDArgument : "arg_1" "image_angle"
				/// @DnDArgument : "arg_2" "30"
				/// @DnDArgument : "arg_3" "projectile_sprite"
				/// @DnDArgument : "arg_4" ".5"
				/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
				script_execute(scr_adjust_projectile_params, mybb, image_angle, 30, projectile_sprite, .5);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 21A1BDC5
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "expr" "(10/weilder.curr_weapon_level)/(global.firerate_bonus * weilder.firerate_bonus)"
				/// @DnDArgument : "var" "spam_lockout"
				spam_lockout = (10/weilder.curr_weapon_level)/(global.firerate_bonus * weilder.firerate_bonus);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 46663198
				/// @DnDParent : 543C3DA5
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "ammo"
				ammo += -1;}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1EF2DA4E
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.shooting"
		if(weilder.shooting){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2373F2A7
			/// @DnDParent : 1EF2DA4E
			/// @DnDArgument : "expr" "(1*global.game_speed)*(global.firerate_bonus * weilder.firerate_bonus)"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "charge"
			charge += (1*global.game_speed)*(global.firerate_bonus * weilder.firerate_bonus);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7CD28DC0
			/// @DnDParent : 1EF2DA4E
			/// @DnDArgument : "expr" "clamp(charge, 0, 200)"
			/// @DnDArgument : "var" "charge"
			charge = clamp(charge, 0, 200);
		
			/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 2FDB7A4E
			/// @DnDParent : 1EF2DA4E
			/// @DnDArgument : "expr" "charge_at_full"
			/// @DnDArgument : "not" "1"
			if(!(charge_at_full)){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 66A58487
				/// @DnDParent : 2FDB7A4E
				/// @DnDArgument : "var" "charge"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "200"
				if(charge >= 200){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5836838E
					/// @DnDParent : 66A58487
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "charge_at_full"
					charge_at_full = true;
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 317E6CBE
					/// @DnDParent : 66A58487
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
					/// @DnDHash : 56FA289C
					/// @DnDParent : 66A58487
					/// @DnDArgument : "expr" "s_fufuflash"
					/// @DnDArgument : "var" "start_flash.sprite_index"
					start_flash.sprite_index = s_fufuflash;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 581744AC
					/// @DnDParent : 66A58487
					/// @DnDArgument : "soundid" "sfx_shine"
					/// @DnDArgument : "gain" ".6"
					/// @DnDArgument : "pitch" "1.7"
					/// @DnDSaveInfo : "soundid" "sfx_shine"
					audio_play_sound(sfx_shine, 0, 0, .6, undefined, 1.7);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 16BBBF1D
					/// @DnDParent : 66A58487
					/// @DnDArgument : "soundid" "sfx_charge3"
					/// @DnDArgument : "pitch" "1.5"
					/// @DnDSaveInfo : "soundid" "sfx_charge3"
					audio_play_sound(sfx_charge3, 0, 0, 1.0, undefined, 1.5);}}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2F390927
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.shoot_release"
		if(weilder.shoot_release){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 32281607
			/// @DnDParent : 2F390927
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "25"
			if(charge >= 25){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 4D4787AC
				/// @DnDParent : 32281607
				/// @DnDArgument : "soundid" "sfx_laser"
				/// @DnDArgument : "gain" ".6"
				/// @DnDArgument : "pitch" "1.5*random_range(.9,1.1)"
				/// @DnDSaveInfo : "soundid" "sfx_laser"
				audio_play_sound(sfx_laser, 0, 0, .6, undefined, 1.5*random_range(.9,1.1));
			
				/// @DnDAction : YoYo Games.Common.Temp_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 78692E4A
				/// @DnDParent : 32281607
				/// @DnDArgument : "var" "projectile_sprite"
				/// @DnDArgument : "value" "s_joules_weakbeam"
				var projectile_sprite = s_joules_weakbeam;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 41BE3EED
				/// @DnDParent : 32281607
				/// @DnDArgument : "var" "charge"
				/// @DnDArgument : "op" "2"
				/// @DnDArgument : "value" "150"
				if(charge > 150){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 32491234
					/// @DnDParent : 41BE3EED
					/// @DnDArgument : "soundid" "sfx_bigshott"
					/// @DnDArgument : "gain" ".6"
					/// @DnDArgument : "pitch" "1.5*random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "sfx_bigshott"
					audio_play_sound(sfx_bigshott, 0, 0, .6, undefined, 1.5*random_range(.9,1.1));
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0BCD78B9
					/// @DnDParent : 41BE3EED
					/// @DnDArgument : "var" "projectile_sprite"
					/// @DnDArgument : "value" "s_joules_bigbeam"
					var projectile_sprite = s_joules_bigbeam;
				
					/// @DnDAction : YoYo Games.Common.Execute_Code
					/// @DnDVersion : 1
					/// @DnDHash : 126106D6
					/// @DnDParent : 41BE3EED
					/// @DnDArgument : "code" "/// @description Execute Code$(13_10)var dir = image_angle$(13_10)$(13_10)$(13_10)part_type_size(pt, 0, 5, 0, 0);$(13_10)part_type_speed(pt, 6*global.game_speed, 10*global.game_speed, -global.game_speed, 0)$(13_10)part_type_direction(pt, dir - 30, dir + 30, -global.game_speed, 0);$(13_10)$(13_10)// Emit burst at muzzle position$(13_10)part_particles_create(ps, x+glorb_x, y+glorb_y, pt, 40);"
					/// @description Execute Code
					var dir = image_angle
					
					
					part_type_size(pt, 0, 5, 0, 0);
					part_type_speed(pt, 6*global.game_speed, 10*global.game_speed, -global.game_speed, 0)
					part_type_direction(pt, dir - 30, dir + 30, -global.game_speed, 0);
					
					// Emit burst at muzzle position
					part_particles_create(ps, x+glorb_x, y+glorb_y, pt, 40);}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 0712D207
				/// @DnDParent : 32281607
				/// @DnDArgument : "xpos" "glorb_x"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos" "glorb_y"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "var" "mybb"
				/// @DnDArgument : "var_temp" "1"
				/// @DnDArgument : "objectid" "o_static_bullet"
				/// @DnDSaveInfo : "objectid" "o_static_bullet"
				var mybb = instance_create_layer(x + glorb_x, y + glorb_y, "Instances", o_static_bullet);
			
				/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 0219E56E
				/// @DnDInput : 5
				/// @DnDParent : 32281607
				/// @DnDArgument : "script" "scr_adjust_projectile_params"
				/// @DnDArgument : "arg" "mybb"
				/// @DnDArgument : "arg_1" "image_angle"
				/// @DnDArgument : "arg_2" "30 + (charge/200)*10"
				/// @DnDArgument : "arg_3" "projectile_sprite"
				/// @DnDArgument : "arg_4" "clamp((charge/200)*6, 1.5, 6)"
				/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
				script_execute(scr_adjust_projectile_params, mybb, image_angle, 30 + (charge/200)*10, projectile_sprite, clamp((charge/200)*6, 1.5, 6));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 163440D5
				/// @DnDParent : 32281607
				/// @DnDArgument : "expr" "weilder.curr_weapon_level"
				/// @DnDArgument : "var" "mybb.enemy_tolerance"
				mybb.enemy_tolerance = weilder.curr_weapon_level;
			
				/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 7B5BD2E4
				/// @DnDParent : 32281607
				/// @DnDArgument : "expr" "charge_at_full"
				if(charge_at_full){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 66516CF7
					/// @DnDInput : 3
					/// @DnDParent : 7B5BD2E4
					/// @DnDArgument : "expr" "15"
					/// @DnDArgument : "expr_1" "(mybb.hsp)/5"
					/// @DnDArgument : "expr_2" "(mybb.kb_vsp - 5)/5"
					/// @DnDArgument : "var" "mybb.stun_amount"
					/// @DnDArgument : "var_1" "mybb.kb_hsp"
					mybb.stun_amount = 15;
					mybb.kb_hsp = (mybb.hsp)/5;
					variable = (mybb.kb_vsp - 5)/5;}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 6C239C50
				/// @DnDParent : 32281607
				/// @DnDArgument : "expr" "-1"
				/// @DnDArgument : "expr_relative" "1"
				/// @DnDArgument : "var" "ammo"
				ammo += -1;}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 022B34DA
			/// @DnDInput : 2
			/// @DnDParent : 2F390927
			/// @DnDArgument : "expr_1" "false"
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "var_1" "charge_at_full"
			charge = 0;
			charge_at_full = false;}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6B816E67
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.reload"
		if(weilder.reload){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
			/// @DnDVersion : 1
			/// @DnDHash : 02B908F3
			/// @DnDDisabled : 1
			/// @DnDParent : 6B816E67
			/// @DnDArgument : "key" "ord("R")"
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 158152F8
			/// @DnDInput : 2
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "150/(global.reload_bonus*weilder.reload_bonus)"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 150/(global.reload_bonus*weilder.reload_bonus);
			
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5EA069DF
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}

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
			/// @DnDInput : 3
			/// @DnDParent : 3CBDD2E5
			/// @DnDArgument : "expr" "ammo_cap*global.ammo_bonus*weilder.ammo_bonus"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "expr_2" "false"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			/// @DnDArgument : "var_2" "charge_at_full"
			ammo = ammo_cap*global.ammo_bonus*weilder.ammo_bonus;
			anim = stance.CASUAL;
			charge_at_full = false;}}

	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 19EE2120
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if (!VISystemExists(system)) exit;$(13_10)$(13_10)// Simulate the system$(13_10)//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);$(13_10)system.Simulate(global.game_speed);$(13_10)if (weilder !=noone){$(13_10)	connector1.SetPosition(x, y-25);$(13_10)	connector2.SetPosition(x+lengthdir_x(70,image_angle), y-25+lengthdir_y(70,image_angle));$(13_10)}"
	/// @description Execute Code
	if (!VISystemExists(system)) exit;
	
	// Simulate the system
	//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
	system.Simulate(global.game_speed);
	if (weilder !=noone){
		connector1.SetPosition(x, y-25);
		connector2.SetPosition(x+lengthdir_x(70,image_angle), y-25+lengthdir_y(70,image_angle));
	}}