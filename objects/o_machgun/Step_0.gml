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

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 3F4C6B2D
var l3F4C6B2D_0;l3F4C6B2D_0 = mouse_check_button(mb_left);if (l3F4C6B2D_0){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3A9CC710
	/// @DnDParent : 3F4C6B2D
	/// @DnDArgument : "var" "charge mod 5"
	if(charge mod 5 == 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0BCEFDD0
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "mybb"
		/// @DnDArgument : "objectid" "o_bullet"
		/// @DnDSaveInfo : "objectid" "o_bullet"
		mybb = instance_create_layer(x + 0, y + 0, "Instances", o_bullet);
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1.1
		/// @DnDHash : 7F17A182
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "soundid" "sfx_shoot"
		/// @DnDArgument : "pitch" "random_range(.8,1.2)"
		/// @DnDSaveInfo : "soundid" "sfx_shoot"
		audio_play_sound(sfx_shoot, 0, 0, 1.0, undefined, random_range(.8,1.2));
	
		/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 5705668B
		/// @DnDInput : 6
		/// @DnDApplyTo : mybb
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "value" "27"
		/// @DnDArgument : "value_1" "point_direction(x,y,mouse_x,mouse_y)+random_range(-4,4)"
		/// @DnDArgument : "value_2" "hspeed*1.3"
		/// @DnDArgument : "value_relative_2" "1"
		/// @DnDArgument : "value_3" "vspeed*1.3"
		/// @DnDArgument : "value_relative_3" "1"
		/// @DnDArgument : "value_4" "s_ironbullet"
		/// @DnDArgument : "value_5" "speed*.2"
		/// @DnDArgument : "instvar" "3"
		/// @DnDArgument : "instvar_1" "2"
		/// @DnDArgument : "instvar_3" "1"
		/// @DnDArgument : "instvar_4" "10"
		/// @DnDArgument : "instvar_5" "15"
		with(mybb) {
		speed = 27;
		direction = point_direction(x,y,mouse_x,mouse_y)+random_range(-4,4);
		x += hspeed*1.3;
		y += vspeed*1.3;
		sprite_index = s_ironbullet;
		image_xscale = speed*.2;
		}
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 09F72F0E
		/// @DnDApplyTo : mybb
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "angle" "point_direction(x,y,mouse_x,mouse_y)+random_range(-2,2)"
		with(mybb) image_angle = point_direction(x,y,mouse_x,mouse_y)+random_range(-2,2);
	
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
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "xpos" "kickbackx"
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos" "kickbacky"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "shell"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "e_bulletshell"
		/// @DnDSaveInfo : "objectid" "e_bulletshell"
		var shell = instance_create_layer(x + kickbackx, y + kickbacky, "Instances", e_bulletshell);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0893C13E
		/// @DnDInput : 2
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "expr" "mybb.hspeed*random_range(-.5,-.3)"
		/// @DnDArgument : "expr_1" "mybb.vspeed*random_range(-.5,-.3) - 2"
		/// @DnDArgument : "var" "shell.hsp"
		/// @DnDArgument : "var_1" "shell.vsp"
		shell.hsp = mybb.hspeed*random_range(-.5,-.3);
		shell.vsp = mybb.vspeed*random_range(-.5,-.3) - 2;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 120390CF
		/// @DnDParent : 3A9CC710
		/// @DnDArgument : "var" "ammo"
		if(ammo == 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 75B4E0C4
			/// @DnDParent : 120390CF
			/// @DnDArgument : "expr" "s_machgun"
			/// @DnDArgument : "var" "shell.sprite_index"
			shell.sprite_index = s_machgun;}}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2373F2A7
	/// @DnDParent : 3F4C6B2D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "charge"
	charge += 1;}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 22380F53
var l22380F53_0;l22380F53_0 = mouse_check_button_released(mb_left);if (l22380F53_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4B35E69C
	/// @DnDParent : 22380F53
	/// @DnDArgument : "var" "charge"
	charge = 0;}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 076283B2
/// @DnDArgument : "var" "ammo"
/// @DnDArgument : "op" "3"
if(ammo <= 0){	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4DEFFB74
	/// @DnDParent : 076283B2
	/// @DnDArgument : "objind" "o_gun"
	/// @DnDSaveInfo : "objind" "o_gun"
	instance_change(o_gun, true);}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 00370ED7
/// @DnDInput : 2
/// @DnDArgument : "expr" "o_player.x-2*o_player.facing"
/// @DnDArgument : "expr_1" "o_player.y- 41+o_player.head_offset_y"
/// @DnDArgument : "var" "x"
/// @DnDArgument : "var_1" "y"
x = o_player.x-2*o_player.facing;
y = o_player.y- 41+o_player.head_offset_y;