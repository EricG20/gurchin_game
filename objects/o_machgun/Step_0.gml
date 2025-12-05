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
	/// @DnDInput : 2
	/// @DnDParent : 5B389BFB
	/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
	/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = o_player.x-2*o_player.facing;
	y = o_player.y- 41+o_player.head_offset_y;

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
		var l0A48BAF7_0;l0A48BAF7_0 = mouse_check_button_pressed(mb_left);if (l0A48BAF7_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4B35E69C
			/// @DnDParent : 0A48BAF7
			/// @DnDArgument : "expr" "7"
			/// @DnDArgument : "var" "charge"
			charge = 7;}
	
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
			/// @DnDArgument : "value" "8/global.firerate_bonus"
			if(charge >= 8/global.firerate_bonus){	/// @DnDAction : YoYo Games.Audio.Play_Audio
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
					/// @DnDArgument : "xpos" "2*o_player.facing"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "mybb"
					/// @DnDArgument : "objectid" "o_bullet"
					/// @DnDSaveInfo : "objectid" "o_bullet"
					mybb = instance_create_layer(x + 2*o_player.facing, y + 0, "Instances", o_bullet);
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 40D4A136
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "var" "bulletrotation"
					/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3)"
					var bulletrotation = point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 35640E2A
					/// @DnDInput : 6
					/// @DnDApplyTo : mybb
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "value" "(41+random_range(-3,3))*global.game_speed"
					/// @DnDArgument : "value_1" "bulletrotation"
					/// @DnDArgument : "value_2" "s_ironbullet"
					/// @DnDArgument : "value_3" "(speed*.2)/global.game_speed"
					/// @DnDArgument : "value_4" "hspeed*(2.0/global.game_speed)"
					/// @DnDArgument : "value_relative_4" "1"
					/// @DnDArgument : "value_5" "vspeed*(2.0/global.game_speed)"
					/// @DnDArgument : "value_relative_5" "1"
					/// @DnDArgument : "instvar" "3"
					/// @DnDArgument : "instvar_1" "2"
					/// @DnDArgument : "instvar_2" "10"
					/// @DnDArgument : "instvar_3" "15"
					/// @DnDArgument : "instvar_5" "1"
					with(mybb) {
					speed = (41+random_range(-3,3))*global.game_speed;
					direction = bulletrotation;
					sprite_index = s_ironbullet;
					image_xscale = (speed*.2)/global.game_speed;
					x += hspeed*(2.0/global.game_speed);
					y += vspeed*(2.0/global.game_speed);
					}
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 44212C68
					/// @DnDApplyTo : mybb
					/// @DnDParent : 1F64EBF0
					/// @DnDArgument : "angle" "bulletrotation"
					with(mybb) image_angle = bulletrotation;
				
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
					/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
					with(frash) image_angle = point_direction(x,y,mouse_x,mouse_y);}
			
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
				/// @DnDArgument : "expr" "(mybb.hspeed)*-.2"
				/// @DnDArgument : "expr_1" "(mybb.vspeed)*-.2"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "expr_3" "1"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				/// @DnDArgument : "var_3" "charge"
				kickbackx = (mybb.hspeed)*-.2;
				kickbacky = (mybb.vspeed)*-.2;
				ammo += -1;
				charge = 1;
			
				/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 120390CF
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "var" "ammo"
				if(ammo == 0){	/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 5A60A81A
					/// @DnDInput : 2
					/// @DnDParent : 120390CF
					/// @DnDArgument : "expr" "stance.RELOAD"
					/// @DnDArgument : "expr_1" "180/global.reload_bonus"
					/// @DnDArgument : "var" "anim"
					/// @DnDArgument : "var_1" "charge"
					anim = stance.RELOAD;
					charge = 180/global.reload_bonus;
				
					/// @DnDAction : YoYo Games.Audio.Play_Audio
					/// @DnDVersion : 1.1
					/// @DnDHash : 1A2372D9
					/// @DnDParent : 120390CF
					/// @DnDArgument : "soundid" "sfx_reload"
					/// @DnDArgument : "pitch" "random_range(.9,1.1)"
					/// @DnDSaveInfo : "soundid" "sfx_reload"
					audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}
			
				/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
				/// @DnDVersion : 1.1
				/// @DnDHash : 22380F53
				/// @DnDParent : 3A9CC710
				var l22380F53_0;l22380F53_0 = mouse_check_button_released(mb_left);if (l22380F53_0){}}}
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 02B908F3
		/// @DnDParent : 040E57F8
		/// @DnDArgument : "key" "ord("R")"
		var l02B908F3_0;l02B908F3_0 = keyboard_check_pressed(ord("R"));if (l02B908F3_0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 158152F8
			/// @DnDInput : 2
			/// @DnDParent : 02B908F3
			/// @DnDArgument : "expr" "stance.RELOAD"
			/// @DnDArgument : "expr_1" "180/global.reload_bonus"
			/// @DnDArgument : "var" "anim"
			/// @DnDArgument : "var_1" "charge"
			anim = stance.RELOAD;
			charge = 180/global.reload_bonus;
		
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
			/// @DnDInput : 2
			/// @DnDParent : 3CBDD2E5
			/// @DnDArgument : "expr" "ammo_cap*global.ammo_bonus"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = ammo_cap*global.ammo_bonus;
			anim = stance.CASUAL;}}}