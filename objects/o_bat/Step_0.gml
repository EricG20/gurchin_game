/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 57211A62
/// @DnDArgument : "var" "global.game_speed"
/// @DnDArgument : "not" "1"
if(!(global.game_speed == 0)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4BF0D8A0
	/// @DnDInput : 5
	/// @DnDParent : 57211A62
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
	/// @DnDParent : 57211A62
	/// @DnDArgument : "angle" "point_direction(x,y, mouse_x, mouse_y)"
	image_angle = point_direction(x,y, mouse_x, mouse_y);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
	/// @DnDVersion : 1.1
	/// @DnDHash : 4A01E919
	/// @DnDParent : 57211A62
	var l4A01E919_0;l4A01E919_0 = mouse_check_button_pressed(mb_left);if (l4A01E919_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F1E33E5
		/// @DnDParent : 4A01E919
		/// @DnDArgument : "var" "anim"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "stance.SHOT"
		if(!(anim == stance.SHOT)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2410F7CE
			/// @DnDParent : 5F1E33E5
			/// @DnDArgument : "soundid" "sfx_whoosh"
			/// @DnDArgument : "pitch" "random_range(.8,1)"
			/// @DnDSaveInfo : "soundid" "sfx_whoosh"
			audio_play_sound(sfx_whoosh, 0, 0, 1.0, undefined, random_range(.8,1));
		
			/// @DnDAction : YoYo Games.Data Structures.DS_Clear
			/// @DnDVersion : 1
			/// @DnDHash : 09138152
			/// @DnDParent : 5F1E33E5
			/// @DnDArgument : "var" "collided_with"
			ds_list_clear(collided_with);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0E5DEDE3
			/// @DnDInput : 4
			/// @DnDParent : 5F1E33E5
			/// @DnDArgument : "expr_2" "stance.SHOT"
			/// @DnDArgument : "var" "kickbackx"
			/// @DnDArgument : "var_1" "kickbacky"
			/// @DnDArgument : "var_2" "anim"
			/// @DnDArgument : "var_3" "image_index"
			kickbackx = 0;
			kickbacky = 0;
			anim = stance.SHOT;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 16DBD5E2
			/// @DnDInput : 2
			/// @DnDParent : 5F1E33E5
			/// @DnDArgument : "value" "1"
			/// @DnDArgument : "value_1" "1"
			/// @DnDArgument : "instvar" "15"
			/// @DnDArgument : "instvar_1" "16"
			image_xscale = 1;
			image_yscale = 1;}}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
	/// @DnDVersion : 1.1
	/// @DnDHash : 3F4C6B2D
	/// @DnDParent : 57211A62
	var l3F4C6B2D_0;l3F4C6B2D_0 = mouse_check_button(mb_left);if (l3F4C6B2D_0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 68F16B75
		/// @DnDParent : 3F4C6B2D
		/// @DnDArgument : "expr" "200"
		/// @DnDArgument : "var" "numbah"
		numbah = 200;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 628F30F9
		/// @DnDParent : 3F4C6B2D
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "242"
		if(charge < 242){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 47FE55B3
			/// @DnDParent : 628F30F9
			/// @DnDArgument : "expr" "(1.5*global.game_speed)*global.reload_bonus"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "charge"
			charge += (1.5*global.game_speed)*global.reload_bonus;
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 51F9EF0F
			/// @DnDParent : 628F30F9
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "50"
			if(charge >= 50){	/// @DnDAction : YoYo Games.Common.If_Variable
				/// @DnDVersion : 1
				/// @DnDHash : 3FB57F82
				/// @DnDParent : 51F9EF0F
				/// @DnDArgument : "var" "floor(charge) mod (5)"
				if(floor(charge) mod (5) == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
					/// @DnDVersion : 1
					/// @DnDHash : 22509B00
					/// @DnDParent : 3FB57F82
					/// @DnDArgument : "xpos_relative" "1"
					/// @DnDArgument : "ypos_relative" "1"
					/// @DnDArgument : "objectid" "e_bullet_light"
					/// @DnDArgument : "layer" ""Effects""
					/// @DnDSaveInfo : "objectid" "e_bullet_light"
					instance_create_layer(x + 0, y + 0, "Effects", e_bullet_light);}}
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4CA65136
			/// @DnDParent : 628F30F9
			/// @DnDArgument : "var" "floor(charge) mod 120"
			/// @DnDArgument : "op" "4"
			/// @DnDArgument : "value" "150"
			if(floor(charge) mod 120 >= 150){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 4BD47BAC
				/// @DnDInput : 2
				/// @DnDParent : 4CA65136
				/// @DnDArgument : "expr" "random_range(-3,3)"
				/// @DnDArgument : "expr_1" "random_range(-3,3)"
				/// @DnDArgument : "var" "shakex"
				/// @DnDArgument : "var_1" "shakey"
				shakex = random_range(-3,3);
				shakey = random_range(-3,3);}}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 26C464D4
		/// @DnDParent : 3F4C6B2D
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "100"
		if(charge >= 100){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 451F8EFB
			/// @DnDInput : 2
			/// @DnDParent : 26C464D4
			/// @DnDArgument : "expr" "random_range(-2,2)"
			/// @DnDArgument : "expr_1" "random_range(-2,2)"
			/// @DnDArgument : "var" "shakex"
			/// @DnDArgument : "var_1" "shakey"
			shakex = random_range(-2,2);
			shakey = random_range(-2,2);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73B0821B
		/// @DnDParent : 3F4C6B2D
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "240"
		if(charge < 240){	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
			/// @DnDVersion : 1
			/// @DnDHash : 3D704708
			/// @DnDParent : 73B0821B
			/// @DnDArgument : "soundid" "sfx_gilb_charge"
			/// @DnDArgument : "not" "1"
			/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
			var l3D704708_0 = sfx_gilb_charge;if (!audio_is_playing(l3D704708_0)){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 00047231
				/// @DnDParent : 3D704708
				/// @DnDArgument : "soundid" "sfx_gilb_charge"
				/// @DnDArgument : "gain" "1"
				/// @DnDArgument : "pitch" "1+charge/240"
				/// @DnDSaveInfo : "soundid" "sfx_gilb_charge"
				audio_play_sound(sfx_gilb_charge, 0, 0, 1, undefined, 1+charge/240);}
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5C343546
			/// @DnDDisabled : 1
			/// @DnDParent : 73B0821B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "e_charged"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_charged"
		
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2A94D719
			/// @DnDDisabled : 1
			/// @DnDParent : 73B0821B
			/// @DnDArgument : "soundid" "sfx_shotgun_cock"
			/// @DnDSaveInfo : "soundid" "sfx_shotgun_cock"
		
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 6CD9B319
			/// @DnDDisabled : 1
			/// @DnDParent : 73B0821B
			/// @DnDArgument : "soundid" "sfx_charge"
			/// @DnDSaveInfo : "soundid" "sfx_charge"}}

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
	/// @DnDVersion : 1.1
	/// @DnDHash : 50256385
	/// @DnDParent : 57211A62
	var l50256385_0;l50256385_0 = mouse_check_button_released(mb_left);if (l50256385_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 383404DC
		/// @DnDParent : 50256385
		/// @DnDArgument : "var" "anim"
		/// @DnDArgument : "not" "1"
		/// @DnDArgument : "value" "stance.SHOT"
		if(!(anim == stance.SHOT)){	/// @DnDAction : YoYo Games.Data Structures.DS_Clear
			/// @DnDVersion : 1
			/// @DnDHash : 46C960E8
			/// @DnDParent : 383404DC
			/// @DnDArgument : "var" "collided_with"
			ds_list_clear(collided_with);}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2A140032
		/// @DnDParent : 50256385
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "120"
		if(charge > 120){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3CCC61BA
			/// @DnDParent : 2A140032
			/// @DnDArgument : "var" "charge"
			/// @DnDArgument : "op" "2"
			/// @DnDArgument : "value" "240"
			if(charge > 240){	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 4755FB0E
				/// @DnDDisabled : 1
				/// @DnDParent : 3CCC61BA
				/// @DnDArgument : "soundid" "sfx_bigshott"
				/// @DnDSaveInfo : "soundid" "sfx_bigshott"
			
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3B25F6EE
				/// @DnDParent : 3CCC61BA
				/// @DnDArgument : "soundid" "sfx_whoosh"
				/// @DnDArgument : "offset" ".03"
				/// @DnDArgument : "pitch" "random_range(.4,.6)"
				/// @DnDSaveInfo : "soundid" "sfx_whoosh"
				audio_play_sound(sfx_whoosh, 0, 0, 1.0, .03, random_range(.4,.6));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 04635A2D
				/// @DnDInput : 4
				/// @DnDParent : 3CCC61BA
				/// @DnDArgument : "expr_2" "stance.SHOT"
				/// @DnDArgument : "expr_3" "3"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "anim"
				/// @DnDArgument : "var_3" "image_index"
				kickbackx = 0;
				kickbacky = 0;
				anim = stance.SHOT;
				image_index = 3;}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 3E8CC4D7
			/// @DnDParent : 2A140032
			else{	/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 5987845B
				/// @DnDDisabled : 1
				/// @DnDParent : 3E8CC4D7
				/// @DnDArgument : "soundid" "sfx_bigshott"
				/// @DnDArgument : "gain" ".4"
				/// @DnDSaveInfo : "soundid" "sfx_bigshott"
			
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1.1
				/// @DnDHash : 3370D440
				/// @DnDParent : 3E8CC4D7
				/// @DnDArgument : "soundid" "sfx_whoosh"
				/// @DnDArgument : "pitch" "random_range(.5,.8)"
				/// @DnDSaveInfo : "soundid" "sfx_whoosh"
				audio_play_sound(sfx_whoosh, 0, 0, 1.0, undefined, random_range(.5,.8));
			
				/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 2A7351D6
				/// @DnDInput : 4
				/// @DnDParent : 3E8CC4D7
				/// @DnDArgument : "expr_2" "stance.SHOT"
				/// @DnDArgument : "expr_3" "2"
				/// @DnDArgument : "var" "kickbackx"
				/// @DnDArgument : "var_1" "kickbacky"
				/// @DnDArgument : "var_2" "anim"
				/// @DnDArgument : "var_3" "image_index"
				kickbackx = 0;
				kickbacky = 0;
				anim = stance.SHOT;
				image_index = 2;}
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 4CDE9F9A
			/// @DnDInput : 2
			/// @DnDParent : 2A140032
			/// @DnDArgument : "value" "((charge/240)*1.2)+(global.ammo_bonus-1)"
			/// @DnDArgument : "value_relative" "1"
			/// @DnDArgument : "value_1" "(charge/240)*.4"
			/// @DnDArgument : "value_relative_1" "1"
			/// @DnDArgument : "instvar" "15"
			/// @DnDArgument : "instvar_1" "16"
			image_xscale += ((charge/240)*1.2)+(global.ammo_bonus-1);
			image_yscale += (charge/240)*.4;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 46B7E744
		/// @DnDParent : 50256385
		/// @DnDArgument : "var" "charge"
		charge = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0FCBECCA
		/// @DnDInput : 3
		/// @DnDDisabled : 1
		/// @DnDParent : 50256385
		/// @DnDArgument : "var" "image_index"
		/// @DnDArgument : "var_1" "shakex"
		/// @DnDArgument : "var_2" "shakey"}}