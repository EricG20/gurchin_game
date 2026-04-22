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
	/// @DnDArgument : "expr_5" "-1*global.game_speed"
	/// @DnDArgument : "expr_relative_5" "1"
	/// @DnDArgument : "expr_6" "clamp(charge,0,120)"
	/// @DnDArgument : "expr_7" "lengthdir_x(76, image_angle)"
	/// @DnDArgument : "expr_8" "lengthdir_y(76, image_angle)"
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
	charge += -1*global.game_speed;
	charge = clamp(charge,0,120);
	glorp_x = lengthdir_x(76, image_angle);
	glorp_y = lengthdir_y(76, image_angle);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 7299994B
	/// @DnDArgument : "angle" "point_direction(x,y, weilder.reticle.x, weilder.reticle.y)"
	image_angle = point_direction(x,y, weilder.reticle.x, weilder.reticle.y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 444EF335
	/// @DnDParent : 7299994B
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.If_Expression
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
			if(charge <= 0){	/// @DnDAction : YoYo Games.Common.If_Variable
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
					/// @DnDArgument : "soundid" "sfx_shoot"
					/// @DnDArgument : "pitch" "random_range(.8,1.2)"
					/// @DnDSaveInfo : "soundid" "sfx_shoot"
					audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, random_range(.8,1.2));
				
					/// @DnDAction : YoYo Games.Loops.Repeat
					/// @DnDVersion : 1
					/// @DnDHash : 05D3A6F9
					/// @DnDParent : 55E08394
					/// @DnDArgument : "times" "weilder.curr_weapon_level"
					repeat(weilder.curr_weapon_level){	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 0BCEFDD0
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "xpos" "1*weilder.facing+glorp_x"
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos" "-10+glorp_y"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "mybb"
						/// @DnDArgument : "objectid" "o_bullet"
						/// @DnDSaveInfo : "objectid" "o_bullet"
						mybb = instance_create_layer(x + 1*weilder.facing+glorp_x, y + -10+glorp_y, "Instances", o_bullet);
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 7CF4E90F
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "var" "bulletrotation"
						/// @DnDArgument : "value" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-40,40)"
						var bulletrotation = point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-40,40);
					
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
						/// @DnDInput : 4
						/// @DnDParent : 05D3A6F9
						/// @DnDArgument : "script" "scr_adjust_projectile_params"
						/// @DnDArgument : "arg" "mybb"
						/// @DnDArgument : "arg_1" "bulletrotation"
						/// @DnDArgument : "arg_2" "3+random_range(-3,3)"
						/// @DnDArgument : "arg_3" "s_ironbullet"
						/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
						script_execute(scr_adjust_projectile_params, mybb, bulletrotation, 3+random_range(-3,3), s_ironbullet);}
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 5B9B4BC0
					/// @DnDParent : 55E08394
					/// @DnDArgument : "xpos" "glorp_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "glorp_y-10"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "frash"
					/// @DnDArgument : "objectid" "e_small_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_small_flash"
					frash = instance_create_layer(x + glorp_x, y + glorp_y-10, "Effects", e_small_flash);
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 59382E9B
					/// @DnDApplyTo : frash
					/// @DnDParent : 55E08394
					/// @DnDArgument : "angle" "point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y)"
					with(frash) image_angle = point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y);}
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0505C266
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "weilder.curr_weapon_level"
				/// @DnDArgument : "op" "4"
				/// @DnDArgument : "value" "5"
				if(weilder.curr_weapon_level >= 5){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 091133FD
					/// @DnDParent : 0505C266
					/// @DnDArgument : "xpos" "8*weilder.facing+glorp_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-10+glorp_y"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "mybb"
					/// @DnDArgument : "objectid" "o_big_bullet"
					/// @DnDSaveInfo : "objectid" "o_big_bullet"
					mybb = instance_create_layer(x + 8*weilder.facing+glorp_x, y + -10+glorp_y, "Instances", o_big_bullet);
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 0D177C4E
					/// @DnDParent : 0505C266
					/// @DnDArgument : "target_temp" "1"
					/// @DnDArgument : "soundid" "sfx_bigshott"
					/// @DnDArgument : "pitch" "random_range(.8,1.2)"
					/// @DnDSaveInfo : "soundid" "sfx_bigshott"
					audio_play_sound(sfx_bigshott, 0, 0, 1.0, undefined, random_range(.8,1.2));
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 75387632
					/// @DnDParent : 0505C266
					/// @DnDArgument : "var" "bulletrotation"
					/// @DnDArgument : "value" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3)"
					var bulletrotation = point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3);
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 488616A6
					/// @DnDInput : 2
					/// @DnDParent : 0505C266
					/// @DnDArgument : "script" "scr_screenshake"
					/// @DnDArgument : "arg" "2"
					/// @DnDArgument : "arg_1" "2"
					/// @DnDSaveInfo : "script" "scr_screenshake"
					script_execute(scr_screenshake, 2, 2);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 2BBEBE6E
					/// @DnDInput : 2
					/// @DnDDisabled : 1
					/// @DnDApplyTo : mybb
					/// @DnDParent : 0505C266
					/// @DnDArgument : "value" "(51+random_range(-3,3))*global.game_speed"
					/// @DnDArgument : "value_1" "bulletrotation"
					/// @DnDArgument : "instvar" "3"
					/// @DnDArgument : "instvar_1" "2"
				
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 27BB0C2B
					/// @DnDDisabled : 1
					/// @DnDApplyTo : mybb
					/// @DnDParent : 0505C266
					/// @DnDArgument : "angle" "bulletrotation"
				
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 0580221C
					/// @DnDInput : 5
					/// @DnDParent : 0505C266
					/// @DnDArgument : "script" "scr_adjust_projectile_params"
					/// @DnDArgument : "arg" "mybb"
					/// @DnDArgument : "arg_1" "bulletrotation"
					/// @DnDArgument : "arg_2" "51+random_range(-3,3)"
					/// @DnDArgument : "arg_3" "mybb.sprite_index"
					/// @DnDArgument : "arg_4" "5"
					/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
					script_execute(scr_adjust_projectile_params, mybb, bulletrotation, 51+random_range(-3,3), mybb.sprite_index, 5);
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 6DDC5D9D
					/// @DnDParent : 0505C266
					/// @DnDArgument : "xpos" "mybb.x"
					/// @DnDArgument : "ypos" "mybb.y"
					/// @DnDArgument : "var" "frash"
					/// @DnDArgument : "objectid" "e_gun_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_gun_flash"
					frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_gun_flash);
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 452C1F4F
					/// @DnDApplyTo : frash
					/// @DnDParent : 0505C266
					/// @DnDArgument : "angle" "point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y)"
					with(frash) image_angle = point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y);}
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 134B6298
				/// @DnDInput : 4
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "(mybb.hsp)*-.2"
				/// @DnDArgument : "expr_1" "(mybb.vsp)*-.2"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "3.6"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				/// @DnDArgument : "var_3" "androtate"
				kickbackx = (mybb.hsp)*-.2;
				kickbacky = (mybb.vsp)*-.2;
				ammo += -1;
				androtate = 3.6;
			
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
				/// @DnDHash : 2373F2A7
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "10 / (global.firerate_bonus * weilder.firerate_bonus)"
				/// @DnDArgument : "var" "charge"
				charge = 10 / (global.firerate_bonus * weilder.firerate_bonus);
			
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
					/// @DnDArgument : "expr" "120/global.reload_bonus*weilder.reload_bonus"
					/// @DnDArgument : "var" "charge"
					charge = 120/global.reload_bonus*weilder.reload_bonus;
				
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
			/// @DnDInput : 2
			/// @DnDParent : 12FBD3EC
			/// @DnDArgument : "expr" "ammo_cap*global.ammo_bonus*weilder.ammo_bonus"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = ammo_cap*global.ammo_bonus*weilder.ammo_bonus;
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
			/// @DnDArgument : "expr_1" "120/global.reload_bonus*weilder.reload_bonus"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 120/global.reload_bonus*weilder.reload_bonus;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 24EBB153
			/// @DnDParent : 05665C54
			/// @DnDArgument : "soundid" "sfx_reload"
			/// @DnDArgument : "pitch" "random_range(.9,1.1)"
			/// @DnDSaveInfo : "soundid" "sfx_reload"
			audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}}