/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7299994B
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BF0D8A0
	/// @DnDInput : 9
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41-weilder.head_offset_y-(-abs(weilder.vsp)+weilder.squashstretch*30)"
	/// @DnDArgument : "expr_2" "kickbackx*power(.7,global.game_speed)"
	/// @DnDArgument : "expr_3" "androtate*power(.7,global.game_speed)"
	/// @DnDArgument : "expr_4" "kickbacky*power(.5,global.game_speed)"
	/// @DnDArgument : "expr_5" "(-1.6*weilder.curr_weapon_level)*global.game_speed"
	/// @DnDArgument : "expr_relative_5" "1"
	/// @DnDArgument : "expr_6" "clamp(charge,0,320)"
	/// @DnDArgument : "expr_7" "lengthdir_x(76+55, image_angle)"
	/// @DnDArgument : "expr_8" "lengthdir_y(76+55, image_angle)"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "kickbackx"
	/// @DnDArgument : "var_3" "androtate"
	/// @DnDArgument : "var_4" "kickbacky"
	/// @DnDArgument : "var_5" "charge"
	/// @DnDArgument : "var_6" "charge"
	/// @DnDArgument : "var_7" "glorp_x"
	/// @DnDArgument : "var_8" "glorp_y"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41-weilder.head_offset_y-(-abs(weilder.vsp)+weilder.squashstretch*30);
	kickbackx = kickbackx*power(.7,global.game_speed);
	androtate = androtate*power(.7,global.game_speed);
	kickbacky = kickbacky*power(.5,global.game_speed);
	charge += (-1.6*weilder.curr_weapon_level)*global.game_speed;
	charge = clamp(charge,0,320);
	glorp_x = lengthdir_x(76+55, image_angle);
	glorp_y = lengthdir_y(76+55, image_angle);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 7299994B
	/// @DnDArgument : "angle" "point_direction(x,y, o_cursor.x, o_cursor.y)"
	image_angle = point_direction(x,y, o_cursor.x, o_cursor.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 444EF335
	/// @DnDParent : 7299994B
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31F26555
		/// @DnDParent : 444EF335
		/// @DnDArgument : "expr" "clamp((clamp(180-charge,1,320)/180)*5,1,5)"
		/// @DnDArgument : "var" "shoot_power"
		shoot_power = clamp((clamp(180-charge,1,320)/180)*5,1,5);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 17CC8375
		/// @DnDParent : 444EF335
		/// @DnDArgument : "expr" "weilder.shoot"
		if(weilder.shoot){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A9CC710
			/// @DnDParent : 17CC8375
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "3"
			/// @DnDArgument : "value" "300"
			if(charge <= 300){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2373F2A7
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "320"
				/// @DnDArgument : "var" "charge"
				charge = 320;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 639C2C2B
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "full_shot_tokens"
				/// @DnDArgument : "op" "2"
				if(full_shot_tokens > 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 144A3D92
					/// @DnDInput : 2
					/// @DnDParent : 639C2C2B
					/// @DnDArgument : "expr" "-1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "full_shot_tokens"
					/// @DnDArgument : "var_1" "charge"
					full_shot_tokens += -1;
					charge = 0;}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 55E08394
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "weilder.curr_weapon_level"
				/// @DnDArgument : "op" "1"
				/// @DnDArgument : "value" "5"
				if(weilder.curr_weapon_level < 5){	/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 7F17A182
					/// @DnDParent : 55E08394
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "soundid" "sfx_xoopington"
					/// @DnDArgument : "gain" ".5+(shoot_power*.1)"
					/// @DnDArgument : "pitch" ".8+random_range(.8,1.2)-(shoot_power*.1)"
					/// @DnDSaveInfo : "soundid" "sfx_xoopington"
					audio_play_sound(sfx_xoopington, 0, 0, .5+(shoot_power*.1), undefined, .8+random_range(.8,1.2)-(shoot_power*.1));
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 7212CAF1
					/// @DnDParent : 55E08394
					/// @DnDArgument : "script" "scr_white_flash"
					/// @DnDArgument : "arg" "shoot_power*.05"
					/// @DnDSaveInfo : "script" "scr_white_flash"
					script_execute(scr_white_flash, shoot_power*.05);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 0ED5750E
					/// @DnDParent : 55E08394
					/// @DnDArgument : "var" "shoot_power"
					/// @DnDArgument : "op" "2"
					/// @DnDArgument : "value" "4"
					if(shoot_power > 4){	/// @DnDAction : YoYo Games.Audio.Play_Audio
						/// @DnDVersion : 1.1
						/// @DnDHash : 4E0BB222
						/// @DnDParent : 0ED5750E
						/// @DnDArgument : "soundid" "sfx_shotgun"
						/// @DnDArgument : "gain" ".7"
						/// @DnDArgument : "pitch" "shoot_power*.13"
						/// @DnDSaveInfo : "soundid" "sfx_shotgun"
						audio_play_sound(sfx_shotgun, 0, 0, .7, undefined, shoot_power*.13);
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 3EFE1764
						/// @DnDInput : 3
						/// @DnDParent : 0ED5750E
						/// @DnDArgument : "script" "scr_screenshake"
						/// @DnDArgument : "arg" "shoot_power"
						/// @DnDArgument : "arg_1" "shoot_power"
						/// @DnDArgument : "arg_2" "shoot_power*2"
						/// @DnDSaveInfo : "script" "scr_screenshake"
						script_execute(scr_screenshake, shoot_power, shoot_power, shoot_power*2);}
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 05D3A6F9
					/// @DnDParent : 55E08394
					{	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 0BCEFDD0
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "xpos" "1*weilder.facing+glorp_x"
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos" "-10+glorp_y"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "mybb"
						/// @DnDArgument : "objectid" "o_laser_emitting_projectile"
						/// @DnDSaveInfo : "objectid" "o_laser_emitting_projectile"
						mybb = instance_create_layer(x + 1*weilder.facing+glorp_x, y + -10+glorp_y, "Instances", o_laser_emitting_projectile);
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7CF4E90F
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "var" "bulletrotation"
						/// @DnDArgument : "value" "point_direction(x,y,o_cursor.x,o_cursor.y)"
						var bulletrotation = point_direction(x,y,o_cursor.x,o_cursor.y);
					
						/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 5705668B
						/// @DnDInput : 3
						/// @DnDDisabled : 1
						/// @DnDApplyTo : mybb
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "value" "(51+random_range(-3,3))*global.game_speed"
						/// @DnDArgument : "value_1" "bulletrotation"
						/// @DnDArgument : "value_2" "s_ironbullet"
						/// @DnDArgument : "instvar" "3"
						/// @DnDArgument : "instvar_1" "2"
						/// @DnDArgument : "instvar_2" "10"
					
					
						/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
						/// @DnDVersion : 1
						/// @DnDHash : 09F72F0E
						/// @DnDDisabled : 1
						/// @DnDApplyTo : mybb
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "angle" "bulletrotation"
					
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 2FDBBCC7
						/// @DnDInput : 5
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "script" "scr_adjust_projectile_params"
						/// @DnDArgument : "arg" "mybb"
						/// @DnDArgument : "arg_1" "bulletrotation"
						/// @DnDArgument : "arg_2" ".4"
						/// @DnDArgument : "arg_3" "spr_explosion"
						/// @DnDArgument : "arg_4" "shoot_power*2"
						/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
						script_execute(scr_adjust_projectile_params, mybb, bulletrotation, .4, spr_explosion, shoot_power*2);
					
						/// @DnDAction : YoYo Games.Loops.Repeat
						/// @DnDVersion : 1
						/// @DnDHash : 79EC2D04
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "times" "70"
						repeat(70){	/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 563EFF2B
							/// @DnDParent : 79EC2D04
							/// @DnDArgument : "xpos" "glorp_x"
							/// @DnDArgument : "xpos_relative" "1"
							/// @DnDArgument : "ypos" "glorp_y"
							/// @DnDArgument : "ypos_relative" "1"
							/// @DnDArgument : "var" "bruh"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "e_green_binary"
							/// @DnDArgument : "layer" ""Effects""
							/// @DnDSaveInfo : "objectid" "e_green_binary"
							var bruh = instance_create_layer(x + glorp_x, y + glorp_y, "Effects", e_green_binary);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6D0A5E16
							/// @DnDInput : 2
							/// @DnDParent : 79EC2D04
							/// @DnDArgument : "expr" "lengthdir_x(random_range(1,15),bulletrotation+random_range(-70,70))"
							/// @DnDArgument : "expr_1" "lengthdir_y(random_range(1,15),bulletrotation+random_range(-70,70))"
							/// @DnDArgument : "var" "bruh.hsp"
							/// @DnDArgument : "var_1" "bruh.vsp"
							bruh.hsp = lengthdir_x(random_range(1,15),bulletrotation+random_range(-70,70));
							bruh.vsp = lengthdir_y(random_range(1,15),bulletrotation+random_range(-70,70));}
					
						/// @DnDAction : YoYo Games.Loops.For_Loop
						/// @DnDVersion : 1
						/// @DnDHash : 50A16BC8
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "init" "i = 100"
						/// @DnDArgument : "cond" "i < 990*2"
						/// @DnDArgument : "expr" "i += 8"
						for(i = 100; i < 990*2; i += 8) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
							/// @DnDVersion : 1
							/// @DnDHash : 6786B2B7
							/// @DnDParent : 50A16BC8
							/// @DnDArgument : "xpos_relative" "1"
							/// @DnDArgument : "ypos_relative" "1"
							/// @DnDArgument : "var" "bruh"
							/// @DnDArgument : "var_temp" "1"
							/// @DnDArgument : "objectid" "e_green_binary"
							/// @DnDArgument : "layer" ""Effects""
							/// @DnDSaveInfo : "objectid" "e_green_binary"
							var bruh = instance_create_layer(x + 0, y + 0, "Effects", e_green_binary);
						
							/// @DnDAction : YoYo Games.Common.Temp_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6C97D762
							/// @DnDParent : 50A16BC8
							/// @DnDArgument : "var" "bruhrotate"
							/// @DnDArgument : "value" "bulletrotation+90*choose(-1,1)"
							var bruhrotate = bulletrotation+90*choose(-1,1);
						
							/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 58765820
							/// @DnDInput : 4
							/// @DnDParent : 50A16BC8
							/// @DnDArgument : "expr" "lengthdir_x(i,bulletrotation)"
							/// @DnDArgument : "expr_relative" "1"
							/// @DnDArgument : "expr_1" "lengthdir_y(i,bulletrotation)"
							/// @DnDArgument : "expr_relative_1" "1"
							/// @DnDArgument : "expr_2" "lengthdir_x(random_range(-2,2),bruhrotate)"
							/// @DnDArgument : "expr_3" "lengthdir_y(random_range(-2,2),bruhrotate)"
							/// @DnDArgument : "var" "bruh.x"
							/// @DnDArgument : "var_1" "bruh.y"
							/// @DnDArgument : "var_2" "bruh.hsp"
							/// @DnDArgument : "var_3" "bruh.vsp"
							bruh.x += lengthdir_x(i,bulletrotation);
							bruh.y += lengthdir_y(i,bulletrotation);
							bruh.hsp = lengthdir_x(random_range(-2,2),bruhrotate);
							bruh.vsp = lengthdir_y(random_range(-2,2),bruhrotate);}}
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5B9B4BC0
					/// @DnDDisabled : 1
					/// @DnDParent : 55E08394
					/// @DnDArgument : "xpos" "glorp_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "glorp_y-10"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "frash"
					/// @DnDArgument : "objectid" "e_small_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_small_flash"
				
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 59382E9B
					/// @DnDDisabled : 1
					/// @DnDApplyTo : frash
					/// @DnDParent : 55E08394
					/// @DnDArgument : "angle" "point_direction(x,y,o_cursor.x,o_cursor.y)"}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 134B6298
				/// @DnDInput : 4
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "(mybb.hsp)*5"
				/// @DnDArgument : "expr_1" "(mybb.vsp)*5"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "5*shoot_power"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				/// @DnDArgument : "var_3" "androtate"
				kickbackx = (mybb.hsp)*5;
				kickbacky = (mybb.vsp)*5;
				ammo += -1;
				androtate = 5*shoot_power;
			
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
			
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 120390CF
				/// @DnDParent : 3A9CC710
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
					/// @DnDArgument : "expr" "220"
					/// @DnDArgument : "var" "charge"
					charge = 220;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 116247A5
					/// @DnDParent : 120390CF
					/// @DnDArgument : "expr" "stance.RELOAD"
					/// @DnDArgument : "var" "anim"
					anim = stance.RELOAD;}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 5D1B489A
		/// @DnDDisabled : 1
		/// @DnDParent : 444EF335}

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
			/// @DnDInput : 4
			/// @DnDParent : 12FBD3EC
			/// @DnDArgument : "expr" "floor(ammo_cap*global.ammo_bonus)"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "expr_2" "300"
			/// @DnDArgument : "expr_3" "false"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			/// @DnDArgument : "var_2" "charge"
			/// @DnDArgument : "var_3" "awesome_lockout"
			ammo = floor(ammo_cap*global.ammo_bonus);
			anim = stance.CASUAL;
			charge = 300;
			awesome_lockout = false;}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2433E607
		/// @DnDParent : 529FD4F6
		/// @DnDArgument : "expr" "weilder.reload"
		if(weilder.reload){	/// @DnDAction : YoYo Games.Common.If_Expression
			/// @DnDVersion : 1
			/// @DnDHash : 4322CF5B
			/// @DnDParent : 2433E607
			/// @DnDArgument : "expr" "awesome_lockout"
			/// @DnDArgument : "not" "1"
			if(!(awesome_lockout)){	/// @DnDAction : YoYo Games.Common.If_Expression
				/// @DnDVersion : 1
				/// @DnDHash : 1D477A33
				/// @DnDParent : 4322CF5B
				/// @DnDArgument : "expr" "(charge <= reload_frame+(awesome_reload_width*global.reload_bonus)) && (charge >=reload_frame-(awesome_reload_width*global.reload_bonus))"
				if((charge <= reload_frame+(awesome_reload_width*global.reload_bonus)) && (charge >=reload_frame-(awesome_reload_width*global.reload_bonus))){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 50383241
					/// @DnDInput : 4
					/// @DnDParent : 1D477A33
					/// @DnDArgument : "expr" "floor(ammo_cap*global.ammo_bonus)"
					/// @DnDArgument : "expr_1" "stance.CASUAL"
					/// @DnDArgument : "expr_2" "3*weilder.curr_weapon_level"
					/// @DnDArgument : "var" "ammo"
					/// @DnDArgument : "var_1" "anim"
					/// @DnDArgument : "var_2" "full_shot_tokens"
					/// @DnDArgument : "var_3" "charge"
					ammo = floor(ammo_cap*global.ammo_bonus);
					anim = stance.CASUAL;
					full_shot_tokens = 3*weilder.curr_weapon_level;
					charge = 0;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 45BAA1A5
					/// @DnDParent : 1D477A33
					/// @DnDArgument : "expr" "full_shot_tokens+1"
					/// @DnDArgument : "expr_relative" "1"
					/// @DnDArgument : "var" "ammo"
					ammo += full_shot_tokens+1;
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 047FA2BA
					/// @DnDParent : 1D477A33
					/// @DnDArgument : "times" "20"
					repeat(20){	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 6BC93A50
						/// @DnDParent : 047FA2BA
						/// @DnDArgument : "xpos" "glorp_x"
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos" "glorp_y"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "bruh"
						/// @DnDArgument : "var_temp" "1"
						/// @DnDArgument : "objectid" "e_green_binary"
						/// @DnDArgument : "layer" ""Effects""
						/// @DnDSaveInfo : "objectid" "e_green_binary"
						var bruh = instance_create_layer(x + glorp_x, y + glorp_y, "Effects", e_green_binary);
					
						/// @DnDAction : YoYo Games.Common.Variable
						/// @DnDVersion : 1
						/// @DnDHash : 1F81186E
						/// @DnDInput : 2
						/// @DnDParent : 047FA2BA
						/// @DnDArgument : "expr" "lengthdir_x(random_range(-10,10),random_range(-360,360))"
						/// @DnDArgument : "expr_1" "lengthdir_y(random_range(-10,10),random_range(-360,360))"
						/// @DnDArgument : "var" "bruh.hsp"
						/// @DnDArgument : "var_1" "bruh.vsp"
						bruh.hsp = lengthdir_x(random_range(-10,10),random_range(-360,360));
						bruh.vsp = lengthdir_y(random_range(-10,10),random_range(-360,360));}
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0A93130A
					/// @DnDParent : 1D477A33
					/// @DnDArgument : "soundid" "charge_2"
					/// @DnDArgument : "pitch" "1.4"
					/// @DnDSaveInfo : "soundid" "charge_2"
					audio_play_sound(charge_2, 0, 0, 1.0, undefined, 1.4);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 3CB13C79
					/// @DnDParent : 1D477A33
					/// @DnDArgument : "soundid" "sfx_shotgun_cock"
					/// @DnDArgument : "pitch" "1.6"
					/// @DnDSaveInfo : "soundid" "sfx_shotgun_cock"
					audio_play_sound(sfx_shotgun_cock, 0, 0, 1.0, undefined, 1.6);
				
					/// @DnDAction : YoYo Games.Common.Exit_Event
					/// @DnDVersion : 1
					/// @DnDHash : 75FABA52
					/// @DnDParent : 1D477A33
					exit;}
			
				/// @DnDAction : YoYo Games.Common.Else
				/// @DnDVersion : 1
				/// @DnDHash : 6AE6A498
				/// @DnDParent : 4322CF5B
				else{	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 583D67CF
					/// @DnDParent : 6AE6A498
					/// @DnDArgument : "expr" "true"
					/// @DnDArgument : "var" "awesome_lockout"
					awesome_lockout = true;}}}}

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

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7828D4DB
	/// @DnDParent : 7299994B
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 05665C54
		/// @DnDParent : 7828D4DB
		/// @DnDArgument : "expr" "weilder.reload"
		if(weilder.reload){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3B2F9D24
			/// @DnDInput : 2
			/// @DnDParent : 05665C54
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "220"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 220;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 24EBB153
			/// @DnDParent : 05665C54
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}}