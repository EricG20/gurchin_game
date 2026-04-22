/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5B389BFB
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BF0D8A0
	/// @DnDInput : 7
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41+weilder.head_offset_y"
	/// @DnDArgument : "expr_2" "kickbackx*.7"
	/// @DnDArgument : "expr_3" "androtate*.5"
	/// @DnDArgument : "expr_4" "kickbacky*.7"
	/// @DnDArgument : "expr_5" "lengthdir_x(82, image_angle)"
	/// @DnDArgument : "expr_6" "lengthdir_y(82, image_angle)"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	/// @DnDArgument : "var_2" "kickbackx"
	/// @DnDArgument : "var_3" "androtate"
	/// @DnDArgument : "var_4" "kickbacky"
	/// @DnDArgument : "var_5" "glorp_x"
	/// @DnDArgument : "var_6" "glorp_y"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41+weilder.head_offset_y;
	kickbackx = kickbackx*.7;
	androtate = androtate*.5;
	kickbacky = kickbacky*.7;
	glorp_x = lengthdir_x(82, image_angle);
	glorp_y = lengthdir_y(82, image_angle);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "angle" "point_direction(x,y, weilder.reticle.x, weilder.reticle.y)"
	image_angle = point_direction(x,y, weilder.reticle.x, weilder.reticle.y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00370ED7
	/// @DnDInput : 2
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "weilder.x-2*weilder.facing"
	/// @DnDArgument : "expr_1" "weilder.y- 41+weilder.head_offset_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = weilder.x-2*weilder.facing;
	y = weilder.y- 41+weilder.head_offset_y;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 040E57F8
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 27C611FE
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.shoot"
		if(weilder.shoot){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B35E69C
			/// @DnDParent : 27C611FE
			/// @DnDArgument : "expr" "7"
			/// @DnDArgument : "var" "charge"
			charge = 7;}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 4E8ECBB1
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.shooting"
		if(weilder.shooting){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
			/// @DnDVersion : 1.1
			/// @DnDHash : 3F4C6B2D
			/// @DnDDisabled : 1
			/// @DnDParent : 4E8ECBB1
			/// @DnDAction : YoYo Games.Common.Variable
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
			/// @DnDArgument : "value" "8/global.firerate_bonus*weilder.firerate_bonus"
			if(charge >= 8/global.firerate_bonus*weilder.firerate_bonus){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 30B085F3
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "soundid" "sfx_shoot"
				/// @DnDArgument : "pitch" "random_range(.8,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_shoot"
				audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, random_range(.8,1.2));
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 1F64EBF0
				/// @DnDParent : 3A9CC710
				{	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 7F1994F5
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "xpos" "2*weilder.facing+glorp_x"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-5+glorp_y"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "mybb"
					/// @DnDArgument : "objectid" "o_bullet"
					/// @DnDSaveInfo : "objectid" "o_bullet"
					mybb = instance_create_layer(x + 2*weilder.facing+glorp_x, y + -5+glorp_y, "Instances", o_bullet);
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 40D4A136
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "var" "bulletrotation"
					/// @DnDArgument : "value" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3)"
					var bulletrotation = point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 791F4D1F
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "var" "weilder.curr_weapon_level"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "2"
					if(weilder.curr_weapon_level >= 2){	/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 2CFD61F9
						/// @DnDParent : 791F4D1F
						/// @DnDArgument : "var" "random_range(0,1)"
						/// @DnDArgument : "op" "2"
						/// @DnDArgument : "value" ".4"
						if(random_range(0,1) > .4){	/// @DnDAction : YoYo Games.Common.Variable
							/// @DnDVersion : 1
							/// @DnDHash : 6EB8941F
							/// @DnDParent : 2CFD61F9
							/// @DnDArgument : "expr" "true"
							/// @DnDArgument : "var" "mybb.homing"
							mybb.homing = true;}}
				
					/// @DnDAction : YoYo Games.Common.Execute_Script
					/// @DnDVersion : 1.1
					/// @DnDHash : 61CB9388
					/// @DnDInput : 4
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "script" "scr_adjust_projectile_params"
					/// @DnDArgument : "arg" "mybb"
					/// @DnDArgument : "arg_1" "bulletrotation"
					/// @DnDArgument : "arg_2" "44+random_range(-3,3)"
					/// @DnDArgument : "arg_3" "s_ironbullet"
					/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
					script_execute(scr_adjust_projectile_params, mybb, bulletrotation, 44+random_range(-3,3), s_ironbullet);
				
					/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 7C2CB895
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "xpos" "mybb.x"
					/// @DnDArgument : "ypos" "mybb.y"
					/// @DnDArgument : "var" "frash"
					/// @DnDArgument : "objectid" "e_small_flash"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_small_flash"
					frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 214492C3
					/// @DnDApplyTo : frash
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "angle" "point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y)"
					with(frash) image_angle = point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y);
				
					/// @DnDAction : YoYo Games.Common.If_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5DF80671
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "var" "weilder.curr_weapon_level"
					/// @DnDArgument : "op" "4"
					/// @DnDArgument : "value" "3"
					if(weilder.curr_weapon_level >= 3){	/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 2171E728
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "xpos" "2*weilder.facing+glorp_x"
						/// @DnDArgument : "xpos_relative" "1"
						/// @DnDArgument : "ypos" "-13+glorp_y"
						/// @DnDArgument : "ypos_relative" "1"
						/// @DnDArgument : "var" "mybb"
						/// @DnDArgument : "objectid" "o_bullet"
						/// @DnDSaveInfo : "objectid" "o_bullet"
						mybb = instance_create_layer(x + 2*weilder.facing+glorp_x, y + -13+glorp_y, "Instances", o_bullet);
					
						/// @DnDAction : YoYo Games.Common.Temp_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 3DCED427
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "var" "bulletrotation"
						/// @DnDArgument : "value" "point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3)"
						var bulletrotation = point_direction(x,y,weilder.reticle.x,weilder.reticle.y)+random_range(-3,3);
					
						/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
						/// @DnDVersion : 1
						/// @DnDHash : 79C456B5
						/// @DnDInput : 4
						/// @DnDDisabled : 1
						/// @DnDApplyTo : mybb
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "value" "(41+random_range(-3,3))*global.game_speed"
						/// @DnDArgument : "value_1" "bulletrotation"
						/// @DnDArgument : "value_2" "s_ironbullet"
						/// @DnDArgument : "value_3" "(speed*.2)/global.game_speed"
						/// @DnDArgument : "instvar" "3"
						/// @DnDArgument : "instvar_1" "2"
						/// @DnDArgument : "instvar_2" "10"
						/// @DnDArgument : "instvar_3" "15"
					
					
						/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
						/// @DnDVersion : 1
						/// @DnDHash : 1F60FE70
						/// @DnDDisabled : 1
						/// @DnDApplyTo : mybb
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "angle" "bulletrotation"
					
					
						/// @DnDAction : YoYo Games.Common.If_Variable
						/// @DnDVersion : 1
						/// @DnDHash : 5321FC02
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "var" "weilder.curr_weapon_level"
						/// @DnDArgument : "op" "4"
						/// @DnDArgument : "value" "2"
						if(weilder.curr_weapon_level >= 2){	/// @DnDAction : YoYo Games.Common.If_Variable
							/// @DnDVersion : 1
							/// @DnDHash : 061DBBB3
							/// @DnDParent : 5321FC02
							/// @DnDArgument : "var" "random_range(0,1)"
							/// @DnDArgument : "op" "2"
							/// @DnDArgument : "value" ".4"
							if(random_range(0,1) > .4){	/// @DnDAction : YoYo Games.Common.Variable
								/// @DnDVersion : 1
								/// @DnDHash : 66084F03
								/// @DnDParent : 061DBBB3
								/// @DnDArgument : "expr" "true"
								/// @DnDArgument : "var" "mybb.homing"
								mybb.homing = true;}}
					
						/// @DnDAction : YoYo Games.Common.Execute_Script
						/// @DnDVersion : 1.1
						/// @DnDHash : 6FC61310
						/// @DnDInput : 4
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "script" "scr_adjust_projectile_params"
						/// @DnDArgument : "arg" "mybb"
						/// @DnDArgument : "arg_1" "bulletrotation"
						/// @DnDArgument : "arg_2" "44+random_range(-3,3)"
						/// @DnDArgument : "arg_3" "s_ironbullet"
						/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
						script_execute(scr_adjust_projectile_params, mybb, bulletrotation, 44+random_range(-3,3), s_ironbullet);
					
						/// @DnDAction : YoYo Games.Instances.Create_Instance
						/// @DnDVersion : 1
						/// @DnDHash : 1893B58D
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "xpos" "mybb.x"
						/// @DnDArgument : "ypos" "mybb.y"
						/// @DnDArgument : "var" "frash"
						/// @DnDArgument : "objectid" "e_small_flash"
						/// @DnDArgument : "layer" ""Effects""
						/// @DnDSaveInfo : "objectid" "e_small_flash"
						frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);
					
						/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
						/// @DnDVersion : 1
						/// @DnDHash : 0CBDB406
						/// @DnDApplyTo : frash
						/// @DnDParent : 5DF80671
						/// @DnDArgument : "angle" "point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y)"
						with(frash) image_angle = point_direction(x,y,other.weilder.reticle.x,other.weilder.reticle.y);}}
			
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
				/// @DnDArgument : "expr" "(mybb.hsp)*-.2"
				/// @DnDArgument : "expr_1" "(mybb.vsp)*-.2"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "1"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				/// @DnDArgument : "var_3" "charge"
				kickbackx = (mybb.hsp)*-.2;
				kickbacky = (mybb.vsp)*-.2;
				ammo += -1;
				charge = 1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 120390CF
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "ammo"
				/// @DnDArgument : "op" "3"
				if(ammo <= 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5A60A81A
					/// @DnDInput : 2
					/// @DnDParent : 120390CF
					/// @DnDArgument : "expr" "stance.RELOAD"
					/// @DnDArgument : "expr_1" "180/global.reload_bonus*weilder.reload_bonus"
					/// @DnDArgument : "var" "anim"
					/// @DnDArgument : "var_1" "charge"
					anim = stance.RELOAD;
					charge = 180/global.reload_bonus*weilder.reload_bonus;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1A2372D9
					/// @DnDParent : 120390CF
					/// @DnDArgument : "soundid" "sfx_reload"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "sfx_reload"
					audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 41F5BBEE
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "expr" "weilder.reload"
		if(weilder.reload){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 158152F8
			/// @DnDInput : 2
			/// @DnDParent : 41F5BBEE
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "180/global.reload_bonus*weilder.reload_bonus"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 180/global.reload_bonus*weilder.reload_bonus;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 5EA069DF
			/// @DnDParent : 41F5BBEE
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
			/// @DnDInput : 2
			/// @DnDParent : 3CBDD2E5
			/// @DnDArgument : "expr" "floor(ammo_cap*global.ammo_bonus*weilder.ammo_bonus)"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = floor(ammo_cap*global.ammo_bonus*weilder.ammo_bonus);
			anim = stance.CASUAL;}}}