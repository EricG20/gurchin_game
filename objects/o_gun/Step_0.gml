/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4BF0D8A0
/// @DnDInput : 5
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
/// @DnDArgument : "angle" "point_direction(x,y, mouse_x, mouse_y)"
image_angle = point_direction(x,y, mouse_x, mouse_y);

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 4A01E919
var l4A01E919_0;
l4A01E919_0 = mouse_check_button_pressed(mb_left);
if (l4A01E919_0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2410F7CE
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "soundid" "sfx_shoot"
	/// @DnDSaveInfo : "soundid" "sfx_shoot"
	audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, 1.0);

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 0C1C5BD8
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "soundid" "sfx_laser"
	/// @DnDArgument : "gain" ".5"
	/// @DnDArgument : "pitch" "random_range(.9,1.1)"
	/// @DnDSaveInfo : "soundid" "sfx_laser"
	audio_play_sound(sfx_laser, 0, 0, .5, undefined, random_range(.9,1.1));

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 3EBCD4EC
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos" "-5"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "var" "mybb"
	/// @DnDArgument : "objectid" "o_bullet"
	/// @DnDSaveInfo : "objectid" "o_bullet"
	mybb = instance_create_layer(x + 0, y + -5, "Instances", o_bullet);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 69747C13
	/// @DnDInput : 4
	/// @DnDApplyTo : mybb
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "value" "20"
	/// @DnDArgument : "value_1" "point_direction(x,y,mouse_x,mouse_y)"
	/// @DnDArgument : "value_2" "hspeed*2.3"
	/// @DnDArgument : "value_relative_2" "1"
	/// @DnDArgument : "value_3" "vspeed*2.3"
	/// @DnDArgument : "value_relative_3" "1"
	/// @DnDArgument : "instvar" "3"
	/// @DnDArgument : "instvar_1" "2"
	/// @DnDArgument : "instvar_3" "1"
	with(mybb) {
	speed = 20;
	direction = point_direction(x,y,mouse_x,mouse_y);
	x += hspeed*2.3;
	y += vspeed*2.3;
	}

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 67471F87
	/// @DnDApplyTo : mybb
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
	with(mybb) image_angle = point_direction(x,y,mouse_x,mouse_y);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1282C332
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "xpos" "mybb.x"
	/// @DnDArgument : "ypos" "mybb.y"
	/// @DnDArgument : "var" "frash"
	/// @DnDArgument : "objectid" "e_small_flash"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_small_flash"
	frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);

	/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
	/// @DnDVersion : 1
	/// @DnDHash : 29EF37D4
	/// @DnDApplyTo : frash
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
	with(frash) image_angle = point_direction(x,y,mouse_x,mouse_y);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0E5DEDE3
	/// @DnDInput : 4
	/// @DnDParent : 4A01E919
	/// @DnDArgument : "expr_2" "stance.SHOT"
	/// @DnDArgument : "expr_3" "1"
	/// @DnDArgument : "var" "kickbackx"
	/// @DnDArgument : "var_1" "kickbacky"
	/// @DnDArgument : "var_2" "anim"
	/// @DnDArgument : "var_3" "image_index"
	kickbackx = 0;
	kickbacky = 0;
	anim = stance.SHOT;
	image_index = 1;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3F4C6B2D
var l3F4C6B2D_0;
l3F4C6B2D_0 = mouse_check_button(mb_left);
if (l3F4C6B2D_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 628F30F9
	/// @DnDParent : 3F4C6B2D
	/// @DnDArgument : "var" "charge"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "120"
	if(charge < 120)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47FE55B3
		/// @DnDParent : 628F30F9
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "charge"
		charge += 1;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 51F9EF0F
		/// @DnDParent : 628F30F9
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "50"
		if(charge >= 50)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3FB57F82
			/// @DnDParent : 51F9EF0F
			/// @DnDArgument : "var" "charge mod 5"
			if(charge mod 5 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 22509B00
				/// @DnDParent : 3FB57F82
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "e_bullet_light"
				/// @DnDArgument : "layer" ""Effects""
				/// @DnDSaveInfo : "objectid" "e_bullet_light"
				instance_create_layer(x + 0, y + 0, "Effects", e_bullet_light);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2DCA9C5C
			/// @DnDParent : 51F9EF0F
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "image_index"
			image_index = 1;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4CA65136
		/// @DnDParent : 628F30F9
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "4"
		/// @DnDArgument : "value" "100"
		if(charge >= 100)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4BD47BAC
			/// @DnDInput : 2
			/// @DnDParent : 4CA65136
			/// @DnDArgument : "expr" "random_range(-3,3)"
			/// @DnDArgument : "expr_1" "random_range(-3,3)"
			/// @DnDArgument : "var" "shakex"
			/// @DnDArgument : "var_1" "shakey"
			shakex = random_range(-3,3);
			shakey = random_range(-3,3);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7E129EAF
			/// @DnDParent : 4CA65136
			/// @DnDArgument : "expr" "2"
			/// @DnDArgument : "var" "image_index"
			image_index = 2;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 26C464D4
	/// @DnDParent : 3F4C6B2D
	/// @DnDArgument : "var" "charge"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "100"
	if(charge >= 100)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 451F8EFB
		/// @DnDInput : 2
		/// @DnDParent : 26C464D4
		/// @DnDArgument : "expr" "random_range(-2,2)"
		/// @DnDArgument : "expr_1" "random_range(-2,2)"
		/// @DnDArgument : "var" "shakex"
		/// @DnDArgument : "var_1" "shakey"
		shakex = random_range(-2,2);
		shakey = random_range(-2,2);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73B0821B
	/// @DnDParent : 3F4C6B2D
	/// @DnDArgument : "var" "charge"
	/// @DnDArgument : "value" "100"
	if(charge == 100)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5C343546
		/// @DnDParent : 73B0821B
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "e_charged"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_charged"
		instance_create_layer(x + 0, y + 0, "Effects", e_charged);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 2A94D719
		/// @DnDParent : 73B0821B
		/// @DnDArgument : "soundid" "sfx_shotgun_cock"
		/// @DnDSaveInfo : "soundid" "sfx_shotgun_cock"
		audio_play_sound(sfx_shotgun_cock, 0, 0, 1.0, undefined, 1.0);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 6CD9B319
		/// @DnDParent : 73B0821B
		/// @DnDArgument : "soundid" "sfx_charge"
		/// @DnDSaveInfo : "soundid" "sfx_charge"
		audio_play_sound(sfx_charge, 0, 0, 1.0, undefined, 1.0);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 50256385
var l50256385_0;
l50256385_0 = mouse_check_button_released(mb_left);
if (l50256385_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A140032
	/// @DnDParent : 50256385
	/// @DnDArgument : "var" "charge"
	/// @DnDArgument : "op" "2"
	/// @DnDArgument : "value" "20"
	if(charge > 20)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3CCC61BA
		/// @DnDParent : 2A140032
		/// @DnDArgument : "var" "charge"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "100"
		if(charge > 100)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 74F32914
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "mybb"
			/// @DnDArgument : "objectid" "o_big_bullet"
			/// @DnDSaveInfo : "objectid" "o_big_bullet"
			mybb = instance_create_layer(x + 0, y + 0, "Instances", o_big_bullet);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 2A042934
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "soundid" "sfx_shotgun"
			/// @DnDSaveInfo : "soundid" "sfx_shotgun"
			audio_play_sound(sfx_shotgun, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 4755FB0E
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "soundid" "sfx_bigshott"
			/// @DnDSaveInfo : "soundid" "sfx_bigshott"
			audio_play_sound(sfx_bigshott, 0, 0, 1.0, undefined, 1.0);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7004D83F
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "expr" "20"
			/// @DnDArgument : "var" "androtate"
			androtate = 20;
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 3BE7EC66
			/// @DnDInput : 4
			/// @DnDApplyTo : mybb
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "value" "28"
			/// @DnDArgument : "value_1" "point_direction(x,y,mouse_x,mouse_y)"
			/// @DnDArgument : "value_2" "hspeed*2"
			/// @DnDArgument : "value_relative_2" "1"
			/// @DnDArgument : "value_3" "vspeed*2"
			/// @DnDArgument : "value_relative_3" "1"
			/// @DnDArgument : "instvar" "3"
			/// @DnDArgument : "instvar_1" "2"
			/// @DnDArgument : "instvar_3" "1"
			with(mybb) {
			speed = 28;
			direction = point_direction(x,y,mouse_x,mouse_y);
			x += hspeed*2;
			y += vspeed*2;
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 1FFEDB39
			/// @DnDInput : 4
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "expr_2" "stance.SHOT"
			/// @DnDArgument : "expr_3" "1"
			/// @DnDArgument : "var" "kickbackx"
			/// @DnDArgument : "var_1" "kickbacky"
			/// @DnDArgument : "var_2" "anim"
			/// @DnDArgument : "var_3" "image_index"
			kickbackx = 0;
			kickbacky = 0;
			anim = stance.SHOT;
			image_index = 1;
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 7C3EAE90
			/// @DnDApplyTo : mybb
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
			with(mybb) image_angle = point_direction(x,y,mouse_x,mouse_y);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 24684662
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "xpos" "bbox_right"
			/// @DnDArgument : "ypos" "mybb.y"
			/// @DnDArgument : "var" "frash"
			/// @DnDArgument : "objectid" "e_gun_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_gun_flash"
			frash = instance_create_layer(bbox_right, mybb.y, "Effects", e_gun_flash);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 6C03F35E
			/// @DnDApplyTo : frash
			/// @DnDParent : 3CCC61BA
			/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
			with(frash) image_angle = point_direction(x,y,mouse_x,mouse_y);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3E8CC4D7
		/// @DnDParent : 2A140032
		else
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 104A805A
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "mybb"
			/// @DnDArgument : "objectid" "o_bullet"
			/// @DnDSaveInfo : "objectid" "o_bullet"
			mybb = instance_create_layer(x + 0, y + 0, "Instances", o_bullet);
		
			/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 7C02D61D
			/// @DnDInput : 4
			/// @DnDApplyTo : mybb
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "value" "20"
			/// @DnDArgument : "value_1" "point_direction(x,y,mouse_x,mouse_y)"
			/// @DnDArgument : "value_2" "hspeed*2"
			/// @DnDArgument : "value_relative_2" "1"
			/// @DnDArgument : "value_3" "vspeed*2"
			/// @DnDArgument : "value_relative_3" "1"
			/// @DnDArgument : "instvar" "3"
			/// @DnDArgument : "instvar_1" "2"
			/// @DnDArgument : "instvar_3" "1"
			with(mybb) {
			speed = 20;
			direction = point_direction(x,y,mouse_x,mouse_y);
			x += hspeed*2;
			y += vspeed*2;
			}
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 0B8C37C1
			/// @DnDApplyTo : mybb
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
			with(mybb) image_angle = point_direction(x,y,mouse_x,mouse_y);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 46323E2F
			/// @DnDInput : 2
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "expr" "mybb.hspeed*-.5*o_player.facing"
			/// @DnDArgument : "expr_1" "mybb.vspeed*-.5"
			/// @DnDArgument : "var" "kickbackx"
			/// @DnDArgument : "var_1" "kickbacky"
			kickbackx = mybb.hspeed*-.5*o_player.facing;
			kickbacky = mybb.vspeed*-.5;
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1303BD7B
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "xpos" "bbox_right"
			/// @DnDArgument : "ypos" "mybb.y"
			/// @DnDArgument : "var" "frash"
			/// @DnDArgument : "objectid" "e_gun_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_gun_flash"
			frash = instance_create_layer(bbox_right, mybb.y, "Effects", e_gun_flash);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 4B081894
			/// @DnDApplyTo : frash
			/// @DnDParent : 3E8CC4D7
			/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)"
			with(frash) image_angle = point_direction(x,y,mouse_x,mouse_y);
		}
	}

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
	/// @DnDArgument : "var_2" "shakey"
}