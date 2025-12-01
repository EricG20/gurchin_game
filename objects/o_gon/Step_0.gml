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
	/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
	/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
	/// @DnDArgument : "expr_2" "kickbackx*.7"
	/// @DnDArgument : "expr_3" "androtate*.5"
	/// @DnDArgument : "expr_4" "kickbacky*.7"
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
	x = o_player.x-2*o_player.facing;
	y = o_player.y- 41+o_player.head_offset_y;
	kickbackx = kickbackx*.7;
	androtate = androtate*.5;
	kickbacky = kickbacky*.7;
	charge += -1*global.game_speed;
	charge = clamp(charge,0,120);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 3780D062
	/// @DnDParent : 7299994B
	/// @DnDArgument : "angle" "point_direction(x,y, mouse_x, mouse_y)"
	image_angle = point_direction(x,y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 444EF335
	/// @DnDParent : 7299994B
	/// @DnDArgument : "var" "anim"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "stance.RELOAD"
	if(!(anim == stance.RELOAD)){	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
		/// @DnDVersion : 1.1
		/// @DnDHash : 5D1B489A
		/// @DnDParent : 444EF335
		var l5D1B489A_0;l5D1B489A_0 = mouse_check_button_pressed(mb_left);if (l5D1B489A_0){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3A9CC710
			/// @DnDParent : 5D1B489A
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "3"
			if(charge <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 7F17A182
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "target_temp" "1"
				/// @DnDArgument : "soundid" "sfx_shoot"
				/// @DnDArgument : "pitch" "random_range(.8,1.2)"
				/// @DnDSaveInfo : "soundid" "sfx_shoot"
				audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, random_range(.8,1.2));
			
				/// @DnDAction : YoYo Games.Loops.Repeat
				/// @DnDVersion : 1
				/// @DnDHash : 05D3A6F9
				/// @DnDParent : 3A9CC710
				{	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 0BCEFDD0
					/// @DnDParent : 05D3A6F9
					/// @DnDArgument : "xpos" "8*o_player.facing"
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos" "-10"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "var" "mybb"
					/// @DnDArgument : "objectid" "o_bullet"
					/// @DnDSaveInfo : "objectid" "o_bullet"
					mybb = instance_create_layer(x + 8*o_player.facing, y + -10, "Instances", o_bullet);
				
					/// @DnDAction : YoYo Games.Common.Temp_Variable
					/// @DnDVersion : 1
					/// @DnDHash : 7CF4E90F
					/// @DnDParent : 05D3A6F9
					/// @DnDArgument : "var" "bulletrotation"
					/// @DnDArgument : "value" "point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3)"
					var bulletrotation = point_direction(x,y,mouse_x,mouse_y)+random_range(-3,3);
				
					/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
					/// @DnDVersion : 1
					/// @DnDHash : 5705668B
					/// @DnDInput : 6
					/// @DnDApplyTo : mybb
					/// @DnDParent : 05D3A6F9
					/// @DnDArgument : "value" "(51+random_range(-3,3))*global.game_speed"
					/// @DnDArgument : "value_1" "bulletrotation"
					/// @DnDArgument : "value_2" "s_ironbullet"
					/// @DnDArgument : "value_3" "(speed*.2)/global.game_speed"
					/// @DnDArgument : "value_4" "hspeed*(1.5/global.game_speed)"
					/// @DnDArgument : "value_relative_4" "1"
					/// @DnDArgument : "value_5" "vspeed*(1.5/global.game_speed)"
					/// @DnDArgument : "value_relative_5" "1"
					/// @DnDArgument : "instvar" "3"
					/// @DnDArgument : "instvar_1" "2"
					/// @DnDArgument : "instvar_2" "10"
					/// @DnDArgument : "instvar_3" "15"
					/// @DnDArgument : "instvar_5" "1"
					with(mybb) {
					speed = (51+random_range(-3,3))*global.game_speed;
					direction = bulletrotation;
					sprite_index = s_ironbullet;
					image_xscale = (speed*.2)/global.game_speed;
					x += hspeed*(1.5/global.game_speed);
					y += vspeed*(1.5/global.game_speed);
					}
				
					/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
					/// @DnDVersion : 1
					/// @DnDHash : 09F72F0E
					/// @DnDApplyTo : mybb
					/// @DnDParent : 05D3A6F9
					/// @DnDArgument : "angle" "bulletrotation"
					with(mybb) image_angle = bulletrotation;}
			
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 5B9B4BC0
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "xpos" "mybb.x"
				/// @DnDArgument : "ypos" "mybb.y"
				/// @DnDArgument : "var" "frash"
				/// @DnDArgument : "objectid" "e_small_flash"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_small_flash"
				frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);
			
				/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
				/// @DnDVersion : 1
				/// @DnDHash : 59382E9B
				/// @DnDApplyTo : frash
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
				with(frash) image_angle = point_direction(x,y,mouse_x,mouse_y);
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 134B6298
				/// @DnDInput : 3
				/// @DnDParent : 3A9CC710
				/// @DnDArgument : "expr" "(mybb.hspeed)*-.2"
				/// @DnDArgument : "expr_1" "(mybb.vspeed)*-.2"
				/// @DnDArgument : "expr_2" "-1"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "ammo"
				kickbackx = (mybb.hspeed)*-.2;
				kickbacky = (mybb.vspeed)*-.2;
				ammo += -1;
			
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
				/// @DnDArgument : "expr" "10"
				/// @DnDArgument : "var" "charge"
				charge = 10;
			
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
					/// @DnDArgument : "expr" "120"
					/// @DnDArgument : "var" "charge"
					charge = 120;
				
					/// @DnDAction : YoYo Games.Common.Variable
					/// @DnDVersion : 1
					/// @DnDHash : 116247A5
					/// @DnDParent : 120390CF
					/// @DnDArgument : "expr" "stance.RELOAD"
					/// @DnDArgument : "var" "anim"
					anim = stance.RELOAD;}}}}

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
			/// @DnDArgument : "expr" "ammo_cap"
			/// @DnDArgument : "expr_1" "stance.CASUAL"
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "var_1" "anim"
			ammo = ammo_cap;
			anim = stance.CASUAL;}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00370ED7
	/// @DnDInput : 2
	/// @DnDParent : 7299994B
	/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
	/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x = o_player.x-2*o_player.facing;
	y = o_player.y- 41+o_player.head_offset_y;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 380F6208
	/// @DnDParent : 7299994B
	/// @DnDArgument : "key" "ord("R")"
	var l380F6208_0;l380F6208_0 = keyboard_check_pressed(ord("R"));if (l380F6208_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B2F9D24
		/// @DnDInput : 2
		/// @DnDParent : 380F6208
		/// @DnDArgument : "expr" "stance.RELOAD"
		/// @DnDArgument : "expr_1" "180"
		/// @DnDArgument : "var" "anim"
		/// @DnDArgument : "var_1" "charge"
		anim = stance.RELOAD;
		charge = 180;
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 24EBB153
		/// @DnDParent : 380F6208
		/// @DnDArgument : "soundid" "sfx_reload"
		/// @DnDArgument : "pitch" "random_range(.9,1.1)"
		/// @DnDSaveInfo : "soundid" "sfx_reload"
		audio_play_sound(sfx_reload, 0, 0, 1.0, undefined, random_range(.9,1.1));}}