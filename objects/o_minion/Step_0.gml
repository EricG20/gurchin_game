/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7B815413
/// @DnDArgument : "expr" "clamp(-1*global.game_speed,0,90)"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "iframes"
iframes += clamp(-1*global.game_speed,0,90);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3202E978
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 725D179D
	/// @DnDParent : 3202E978
	/// @DnDArgument : "script" "scr_makeexplosion"
	/// @DnDSaveInfo : "script" "scr_makeexplosion"
	script_execute(scr_makeexplosion);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5E32CB57
	/// @DnDParent : 3202E978
	instance_destroy();}

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 5025ADA7
/// @DnDArgument : "script" "check_ground"
/// @DnDSaveInfo : "script" "check_ground"
script_execute(check_ground);

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 0BC92D89
/// @DnDArgument : "script" "movement_stuff"
/// @DnDSaveInfo : "script" "movement_stuff"
script_execute(movement_stuff);

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 1488A020
/// @DnDArgument : "expr" "state"
var l1488A020_0 = state;switch(l1488A020_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 3E8A5A9A
	/// @DnDParent : 1488A020
	/// @DnDArgument : "const" "TURRET.IDLE"
	case TURRET.IDLE:	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 429752ED
		/// @DnDParent : 3E8A5A9A
		/// @DnDArgument : "expr" "distance_to_object(o_enemy) <= 400"
		if(distance_to_object(o_enemy) <= 400){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5EF0BC47
			/// @DnDParent : 429752ED
			/// @DnDArgument : "expr" "instance_nearest(x,y,o_enemy)"
			/// @DnDArgument : "var" "victim"
			victim = instance_nearest(x,y,o_enemy);
		
			/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
			/// @DnDVersion : 1
			/// @DnDHash : 2C04D7F2
			/// @DnDParent : 429752ED
			/// @DnDArgument : "obj" "victim"
			var l2C04D7F2_0 = false;l2C04D7F2_0 = instance_exists(victim);if(l2C04D7F2_0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 0A535C2D
				/// @DnDInput : 3
				/// @DnDParent : 2C04D7F2
				/// @DnDArgument : "expr" "victim.x"
				/// @DnDArgument : "expr_1" "victim.y"
				/// @DnDArgument : "expr_2" "(-1*global.firerate_bonus)*global.game_speed"
				/// @DnDArgument : "expr_relative_2" "1"
				/// @DnDArgument : "var" "target_x"
				/// @DnDArgument : "var_1" "target_y"
				/// @DnDArgument : "var_2" "cooldown"
				target_x = victim.x;
				target_y = victim.y;
				cooldown += (-1*global.firerate_bonus)*global.game_speed;}}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1BA680E0
		/// @DnDParent : 3E8A5A9A
		/// @DnDArgument : "expr" "distance_to_object(o_enemy) <= 400"
		/// @DnDArgument : "not" "1"
		if(!(distance_to_object(o_enemy) <= 400)){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 06B79A39
			/// @DnDParent : 1BA680E0
			/// @DnDArgument : "expr" "12"
			/// @DnDArgument : "var" "cooldown"
			cooldown = 12;}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BB54556
		/// @DnDInput : 2
		/// @DnDParent : 3E8A5A9A
		/// @DnDArgument : "expr" "lengthdir_x(40,point_direction(x,y,target_x,target_y))"
		/// @DnDArgument : "expr_1" "-40+lengthdir_y(40,point_direction(x,y,target_x,target_y))"
		/// @DnDArgument : "var" "glorp_x"
		/// @DnDArgument : "var_1" "glorp_y"
		glorp_x = lengthdir_x(40,point_direction(x,y,target_x,target_y));
		glorp_y = -40+lengthdir_y(40,point_direction(x,y,target_x,target_y));
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3D97ACDE
		/// @DnDParent : 3E8A5A9A
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 3AE3CCC3
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "xpos" "glorp_x"
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos" "glorp_y"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "mybb"
			/// @DnDArgument : "objectid" "o_bullet"
			/// @DnDSaveInfo : "objectid" "o_bullet"
			mybb = instance_create_layer(x + glorp_x, y + glorp_y, "Instances", o_bullet);
		
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C7B316A
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "var" "bulletrotation"
			/// @DnDArgument : "value" "point_direction(x,y,target_x,target_y)+random_range(-5,5)"
			var bulletrotation = point_direction(x,y,target_x,target_y)+random_range(-5,5);
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 2C4A73D4
			/// @DnDInput : 4
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "script" "scr_adjust_projectile_params"
			/// @DnDArgument : "arg" "mybb"
			/// @DnDArgument : "arg_1" "bulletrotation"
			/// @DnDArgument : "arg_2" "30+random_range(-3,3)"
			/// @DnDArgument : "arg_3" "s_ironbullet"
			/// @DnDSaveInfo : "script" "scr_adjust_projectile_params"
			script_execute(scr_adjust_projectile_params, mybb, bulletrotation, 30+random_range(-3,3), s_ironbullet);
		
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6FD26EB1
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "xpos" "mybb.x"
			/// @DnDArgument : "ypos" "mybb.y"
			/// @DnDArgument : "var" "frash"
			/// @DnDArgument : "objectid" "e_small_flash"
			/// @DnDArgument : "layer" ""Effects""
			/// @DnDSaveInfo : "objectid" "e_small_flash"
			frash = instance_create_layer(mybb.x, mybb.y, "Effects", e_small_flash);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5446D809
			/// @DnDInput : 2
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "expr" "12"
			/// @DnDArgument : "expr_1" "-1"
			/// @DnDArgument : "expr_relative_1" "1"
			/// @DnDArgument : "var" "cooldown"
			/// @DnDArgument : "var_1" "ammo"
			cooldown = 12;
			ammo += -1;
		
			/// @DnDAction : YoYo Games.Audio.Play_Audio
			/// @DnDVersion : 1.1
			/// @DnDHash : 1B4A13D6
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "soundid" "sfx_shoot"
			/// @DnDArgument : "gain" ".6"
			/// @DnDArgument : "pitch" "random_range(.8,1.2)-.4"
			/// @DnDSaveInfo : "soundid" "sfx_shoot"
			audio_play_sound(sfx_shoot, 0, 0, .6, undefined, random_range(.8,1.2)-.4);
		
			/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
			/// @DnDVersion : 1
			/// @DnDHash : 597975DF
			/// @DnDApplyTo : frash
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "angle" "point_direction(x,y,other.target_x,other.target_y)"
			with(frash) image_angle = point_direction(x,y,other.target_x,other.target_y);
		
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0A41B5D5
			/// @DnDParent : 3D97ACDE
			/// @DnDArgument : "var" "ammo"
			/// @DnDArgument : "op" "3"
			if(ammo <= 0){	/// @DnDAction : YoYo Games.Common.Variable
				/// @DnDVersion : 1
				/// @DnDHash : 304D6CDF
				/// @DnDInput : 2
				/// @DnDParent : 0A41B5D5
				/// @DnDArgument : "expr" "TURRET.RELOAD"
				/// @DnDArgument : "expr_1" "320"
				/// @DnDArgument : "var" "state"
				/// @DnDArgument : "var_1" "cooldown"
				state = TURRET.RELOAD;
				cooldown = 320;}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0F02D3FF
	/// @DnDParent : 1488A020
	/// @DnDArgument : "const" "TURRET.RELOAD"
	case TURRET.RELOAD:	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6BC181F4
		/// @DnDParent : 0F02D3FF
		/// @DnDArgument : "expr" "-1*global.game_speed"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "cooldown"
		cooldown += -1*global.game_speed;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3A96204E
		/// @DnDParent : 0F02D3FF
		/// @DnDArgument : "var" "cooldown"
		/// @DnDArgument : "op" "3"
		if(cooldown <= 0){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5ED21557
			/// @DnDInput : 2
			/// @DnDParent : 3A96204E
			/// @DnDArgument : "expr" "TURRET.IDLE"
			/// @DnDArgument : "expr_1" "ammo_cap"
			/// @DnDArgument : "var" "state"
			/// @DnDArgument : "var_1" "ammo"
			state = TURRET.IDLE;
			ammo = ammo_cap;}	break;}