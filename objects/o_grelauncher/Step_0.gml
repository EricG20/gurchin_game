/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7299994B
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BF0D8A0
	/// @DnDInput : 7
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41+weilder.head_offset_y"
	/// @DnDArgument : "expr_2" "kickbackx*power(.7,global.game_speed)"
	/// @DnDArgument : "expr_3" "androtate*power(.5,global.game_speed)"
	/// @DnDArgument : "expr_4" "kickbacky*power(.7,global.game_speed)"
	/// @DnDArgument : "expr_5" "-1*global.game_speed"
	/// @DnDArgument : "expr_relative_5" "1"
	/// @DnDArgument : "expr_6" "clamp(charge,0,120)"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "kickbackx"
	/// @DnDArgument : "var_3" "androtate"
	/// @DnDArgument : "var_4" "kickbacky"
	/// @DnDArgument : "var_5" "charge"
	/// @DnDArgument : "var_6" "charge"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41+weilder.head_offset_y;
	kickbackx = kickbackx*power(.7,global.game_speed);
	androtate = androtate*power(.5,global.game_speed);
	kickbacky = kickbacky*power(.7,global.game_speed);
	charge += -1*global.game_speed;
	charge = clamp(charge,0,120);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 7299994B
	/// @DnDArgument : "angle" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)"
	image_angle = point_direction(x,y,weilder.reticle.x,weilder.reticle.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 444EF335
	/// @DnDParent : 7299994B
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 120390CF
		/// @DnDParent : 444EF335
		/// @DnDArgument : "var" "ammo"
		/// @DnDArgument : "op" "3"
		if(ammo <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 002D3725
			/// @DnDParent : 120390CF
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "gain" "4"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 4, undefined, random_range(.9,1.1));
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3EBD9619
			/// @DnDParent : 120390CF
			/// @DnDArgument : "expr" "120/global.reload_bonus*weilder.reload_bonus"
			/// @DnDArgument : "var" "charge"
			charge = 120/global.reload_bonus*weilder.reload_bonus;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 116247A5
			/// @DnDParent : 120390CF
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "var" "anim"
			anim = stance.RELOAD;}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 59225A31
		/// @DnDParent : 444EF335
		/// @DnDArgument : "expr" "weilder.shoot"
		if(weilder.shoot){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
			/// @DnDVersion : 1.1
			/// @DnDHash : 5D1B489A
			/// @DnDDisabled : 1
			/// @DnDParent : 59225A31
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A9CC710
			/// @DnDParent : 5D1B489A
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "3"
			if(charge <= 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2373F2A7
				/// @DnDInput : 4
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "50  / (global.firerate_bonus * weilder.firerate_bonus)"
				/// @DnDArgument : "expr_1" "weilder.curr_weapon_level"
				/// @DnDArgument : "expr_3" "-1"
				/// @DnDArgument : "expr_relative_3" "1"
				/// @DnDArgument : "var" "charge"
				/// @DnDArgument : "var_1" "burst_count"
				/// @DnDArgument : "var_2" "burst_timer"
				/// @DnDArgument : "var_3" "ammo"
				charge = 50  / (global.firerate_bonus * weilder.firerate_bonus);
				burst_count = weilder.curr_weapon_level;
				burst_timer = 0;
				ammo += -1;}}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 529FD4F6
	/// @DnDParent : 7299994B
	else{	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 12FBD3EC
		/// @DnDParent : 529FD4F6
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "3"
		if(charge <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 630C2FAD
			/// @DnDInput : 2
			/// @DnDParent : 12FBD3EC
			/// @DnDArgument : "expr" "floor(ammo_cap*global.ammo_bonus*weilder.ammo_bonus)"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = floor(ammo_cap*global.ammo_bonus*weilder.ammo_bonus);
			anim = stance.CASUAL;}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00370ED7
	/// @DnDInput : 2
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41+weilder.head_offset_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41+weilder.head_offset_y;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7E171F69
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "burst_count > 0"
	if(burst_count > 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 602B62DB
		/// @DnDParent : 7E171F69
		/// @DnDArgument : "expr" "-global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "burst_timer"
		burst_timer += -global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1FC7944A
		/// @DnDParent : 7E171F69
		/// @DnDArgument : "expr" "burst_timer <= 0"
		if(burst_timer <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 19EF0F05
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "target_temp" "1"
			/// @DnDArgument : "soundid" "sfx_shotgun"
			/// @DnDArgument : "gain" ".6"
			/// @DnDArgument : "pitch" "random_range(.8,1.2)"
			/// @DnDSaveInfo : "soundid" "sfx_shotgun"
			audio_play_sound(sfx_shotgun, 0, 0, .6, undefined, random_range(.8,1.2));
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 6ED99568
			/// @DnDInput : 2
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "script" "scr_screenshake"
			/// @DnDArgument : "arg" "2"
			/// @DnDArgument : "arg_1" "2"
			/// @DnDSaveInfo : "script" "scr_screenshake"
			script_execute(scr_screenshake, 2, 2);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2E2AE4E5
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "script" "scr_white_flash"
			/// @DnDArgument : "arg" ".08"
			/// @DnDSaveInfo : "script" "scr_white_flash"
			script_execute(scr_white_flash, .08);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 316049FC
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "expr" "lengthdir_x(40, image_angle)"
			/// @DnDArgument : "var" "glorp_x"
			glorp_x = lengthdir_x(40, image_angle);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 719417AB
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "expr" "lengthdir_y(40, image_angle)"
			/// @DnDArgument : "var" "glorp_y"
			glorp_y = lengthdir_y(40, image_angle);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 75269000
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "xpos" "glorp_x"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "glorp_y+20"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "mybb"
			/// @DnDArgument : "objectid" "o_greblob"
			/// @DnDSaveInfo : "objectid" "o_greblob"
			mybb = instance_create_layer(x + glorp_x, y + glorp_y+20, "Instances", o_greblob);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 161DEC26
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "var" "grenade_dir"
			/// @DnDArgument : "value" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)"
			var grenade_dir = point_direction(x,y,weilder.reticle.x,weilder.reticle.y);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 76237680
			/// @DnDInput : 5
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "script" "scr_adjust_projectile_params"
			/// @DnDArgument : "arg" "mybb"
			/// @DnDArgument : "arg_1" "grenade_dir"
			/// @DnDArgument : "arg_2" "30"
			/// @DnDArgument : "arg_3" "s_greblob"
			/// @DnDArgument : "arg_4" "1"
			/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
			script_execute(scr_adjust_projectile_params, mybb, grenade_dir, 30, s_greblob, 1);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 386FF043
			/// @DnDInput : 3
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "expr" "(mybb.hsp)*-.2"
			/// @DnDArgument : "expr_1" "(mybb.vsp)*-.2"
			/// @DnDArgument : "expr_2" "18"
			/// @DnDArgument : "var" "kickbackx"
			/// @DnDArgument : "var_1" "kickbacky"
			/// @DnDArgument : "var_2" "androtate"
			kickbackx = (mybb.hsp)*-.2;
			kickbacky = (mybb.vsp)*-.2;
			androtate = 18;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 65E1A6CC
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "xpos" "mybb.x"
			/// @DnDArgument : "ypos" "mybb.y"
			/// @DnDArgument : "var" "frash"
			/// @DnDArgument : "objectid" "e_small_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_small_flash"
			frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 7E88186C
			/// @DnDApplyTo : frash
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "angle" "point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y)"
			with(frash) image_angle = point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0DD227C1
			/// @DnDInput : 3
			/// @DnDParent : 1FC7944A
			/// @DnDArgument : "expr" "-4"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "expr_1" "-1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "expr_2" "15 / (global.firerate_bonus * weilder.firerate_bonus)"
			/// @DnDArgument : "var" "mybb.vsp"
			/// @DnDArgument : "var_1" "burst_count"
			/// @DnDArgument : "var_2" "burst_timer"
			mybb.vsp += -4;
			burst_count += -1;
			burst_timer = 15 / (global.firerate_bonus * weilder.firerate_bonus);}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 2AE8C655
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "weilder.reload"
	if(weilder.reload){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B2F9D24
		/// @DnDInput : 2
		/// @DnDParent : 2AE8C655
		/// @DnDArgument : "expr" "stance.RELOAD"
		/// @DnDArgument : "expr_1" "180/global.reload_bonus*weilder.reload_bonus"
		/// @DnDArgument : "var" "anim"
		/// @DnDArgument : "var_1" "charge"
		anim = stance.RELOAD;
		charge = 180/global.reload_bonus*weilder.reload_bonus;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 24EBB153
		/// @DnDParent : 2AE8C655
		/// @DnDArgument : "soundid" "sfx_reload"
		/// @DnDArgument : "pitch" "random_range(.9,1.1)"
		/// @DnDSaveInfo : "soundid" "sfx_reload"
		audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}