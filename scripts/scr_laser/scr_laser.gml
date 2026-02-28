/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 467D13D6
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 10
/// @DnDArgument : "funcName" "scr_laser"
/// @DnDArgument : "arg" "x_offset=0"
/// @DnDArgument : "arg_1" "y_offset=0"
/// @DnDArgument : "arg_2" "h_offset=10"
/// @DnDArgument : "arg_3" "collision_target=o_enemy"
/// @DnDArgument : "arg_4" "target_x=weilder.reticle.x"
/// @DnDArgument : "arg_5" "target_y=weilder.reticle.y"
/// @DnDArgument : "arg_6" "color_one=c_orange"
/// @DnDArgument : "arg_7" "color_two=c_yellow"
/// @DnDArgument : "arg_8" "color_three=c_white"
/// @DnDArgument : "arg_9" "damage=1"
function scr_laser(x_offset=0, y_offset=0, h_offset=10, collision_target=o_enemy, target_x=weilder.reticle.x, target_y=weilder.reticle.y, color_one=c_orange, color_two=c_yellow, color_three=c_white, damage=1) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 55B0531F
	/// @DnDParent : 467D13D6
	/// @DnDArgument : "code" "//draw_circle(x+x_offset,y+y_offset,12, 1);$(13_10)$(13_10)direction = point_direction(x+x_offset,y+y_offset, target_x, target_y);$(13_10)$(13_10)var max_length = 3800;$(13_10)var solid_object = o_solid;$(13_10)$(13_10)for(var i = 0; i < max_length; i++){$(13_10)$(13_10)    var lx = x + lengthdir_x(i, direction);$(13_10)    var ly = y + lengthdir_y(i, direction);$(13_10)$(13_10)    if(collision_point(lx, ly, solid_object, false, true)){$(13_10)		$(13_10)        //break;$(13_10)    }$(13_10)	if(collision_target == o_enemy){$(13_10)		if(collision_point(lx, ly, o_gurch_bubble, false, true)){$(13_10)			sucker = collision_point(lx, ly, o_gurch_bubble, false, true);$(13_10)			instance_destroy(sucker);$(13_10)		}$(13_10)	}$(13_10)	if(collision_point(lx, ly, collision_target, false, true)){$(13_10)		sucker = collision_point(lx, ly, collision_target, false, true)$(13_10)		if(ds_list_find_index(collided_with,sucker.id) == -1)$(13_10){$(13_10)	// Function Call$(13_10)	ds_list_add(collided_with, sucker.id);$(13_10)$(13_10)	// Assign Variable$(13_10)	// other.hp += -1;$(13_10)$(13_10)	// Assign Variable$(13_10)	//other.hsp = facing*12;$(13_10)	//other.vsp += -10;$(13_10)	//other.on_ground = false;$(13_10)$(13_10)	// Play Audio$(13_10)	audio_play_sound(sfx_hit, 0, 0, 1.0, undefined, random_range(0.8,1.2));$(13_10)	if (sucker.object_index == o_player){$(13_10)		scr_damage_player(2,sucker);$(13_10)	}$(13_10)	// Assign Variable$(13_10)	sucker.hp += -damage;$(13_10)	sucker.flashAlpha = 1.2;$(13_10)	if (collision_target == o_enemy){$(13_10)		weilder.special_meter += damage;$(13_10)		scr_damage_notifier(damage, sucker);$(13_10)	}$(13_10)}$(13_10)       if!(object_index == o_laser_emitting_projectile)break;$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)shootingAngle = direction;$(13_10)myLength = point_distance(x+x_offset,y+y_offset,lx,ly);$(13_10)//gpu_set_blendmode(bm_add);$(13_10)draw_set_color(color_one);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 20*random_range(1,3)) + 0.1);$(13_10)draw_set_color(color_two);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 9*random_range(1,3)) + 0.1);$(13_10)draw_set_color(color_three);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 5*random_range(1,3)) + 0.1);$(13_10)draw_set_color(c_white);"
	//draw_circle(x+x_offset,y+y_offset,12, 1);
	
	direction = point_direction(x+x_offset,y+y_offset, target_x, target_y);
	
	var max_length = 3800;
	var solid_object = o_solid;
	
	for(var i = 0; i < max_length; i++){
	
	    var lx = x + lengthdir_x(i, direction);
	    var ly = y + lengthdir_y(i, direction);
	
	    if(collision_point(lx, ly, solid_object, false, true)){
			
	        //break;
	    }
		if(collision_target == o_enemy){
			if(collision_point(lx, ly, o_gurch_bubble, false, true)){
				sucker = collision_point(lx, ly, o_gurch_bubble, false, true);
				instance_destroy(sucker);
			}
		}
		if(collision_point(lx, ly, collision_target, false, true)){
			sucker = collision_point(lx, ly, collision_target, false, true)
			if(ds_list_find_index(collided_with,sucker.id) == -1)
	{
		// Function Call
		ds_list_add(collided_with, sucker.id);
	
		// Assign Variable
		// other.hp += -1;
	
		// Assign Variable
		//other.hsp = facing*12;
		//other.vsp += -10;
		//other.on_ground = false;
	
		// Play Audio
		audio_play_sound(sfx_hit, 0, 0, 1.0, undefined, random_range(0.8,1.2));
		if (sucker.object_index == o_player){
			scr_damage_player(2,sucker);
		}
		// Assign Variable
		sucker.hp += -damage;
		sucker.flashAlpha = 1.2;
		if (collision_target == o_enemy){
			weilder.special_meter += damage;
			scr_damage_notifier(damage, sucker);
		}
	}
	       if!(object_index == o_laser_emitting_projectile)break;
		}
	
	}
	
	shootingAngle = direction;
	myLength = point_distance(x+x_offset,y+y_offset,lx,ly);
	//gpu_set_blendmode(bm_add);
	draw_set_color(color_one);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 20*random_range(1,3)) + 0.1);
	draw_set_color(color_two);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 9*random_range(1,3)) + 0.1);
	draw_set_color(color_three);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 5*random_range(1,3)) + 0.1);
	draw_set_color(c_white);}