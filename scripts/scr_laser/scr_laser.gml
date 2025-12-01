/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 467D13D6
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 4
/// @DnDArgument : "funcName" "scr_laser"
/// @DnDArgument : "arg" "x_offset=0"
/// @DnDArgument : "arg_1" "y_offset=0"
/// @DnDArgument : "arg_2" "h_offset=10"
/// @DnDArgument : "arg_3" "collision_target=o_enemy"
function scr_laser(x_offset=0, y_offset=0, h_offset=10, collision_target=o_enemy) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 55B0531F
	/// @DnDParent : 467D13D6
	/// @DnDArgument : "code" "//draw_circle(x+x_offset,y+y_offset,12, 1);$(13_10)$(13_10)direction = point_direction(x+x_offset,y+y_offset, mouse_x, mouse_y);$(13_10)$(13_10)var max_length = 1800;$(13_10)var solid_object = o_solid;$(13_10)$(13_10)for(var i = 0; i < max_length; i++){$(13_10)$(13_10)    var lx = x + lengthdir_x(i, direction);$(13_10)    var ly = y + lengthdir_y(i, direction);$(13_10)$(13_10)    if(collision_point(lx, ly, solid_object, false, true)){$(13_10)		$(13_10)        break;$(13_10)    }$(13_10)	if(collision_point(lx, ly, collision_target, false, true)){$(13_10)		sucker = collision_point(lx, ly, collision_target, false, true)$(13_10)		if(ds_list_find_index(collided_with,sucker.id) == -1)$(13_10){$(13_10)	// Function Call$(13_10)	ds_list_add(collided_with, sucker.id);$(13_10)$(13_10)	// Assign Variable$(13_10)	// other.hp += -1;$(13_10)$(13_10)	// Assign Variable$(13_10)	//other.hsp = facing*12;$(13_10)	//other.vsp += -10;$(13_10)	//other.on_ground = false;$(13_10)$(13_10)	// Play Audio$(13_10)	audio_play_sound(sfx_hit, 0, 0, 1.0, undefined, random_range(0.8,1.2));$(13_10)$(13_10)	// Assign Variable$(13_10)	sucker.hp += -1;$(13_10)	sucker.flashAlpha = 1.2;$(13_10)}$(13_10)       // break;$(13_10)	}$(13_10)$(13_10)}$(13_10)$(13_10)shootingAngle = direction;$(13_10)myLength = point_distance(x+x_offset,y+y_offset,lx,ly);$(13_10)//gpu_set_blendmode(bm_add);$(13_10)draw_set_color(c_orange);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 20*random_range(1,3)) + 0.1);$(13_10)draw_set_color(c_yellow);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 9*random_range(1,3)) + 0.1);$(13_10)draw_set_color(c_white);$(13_10)draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 5*random_range(1,3)) + 0.1);"
	//draw_circle(x+x_offset,y+y_offset,12, 1);
	
	direction = point_direction(x+x_offset,y+y_offset, mouse_x, mouse_y);
	
	var max_length = 1800;
	var solid_object = o_solid;
	
	for(var i = 0; i < max_length; i++){
	
	    var lx = x + lengthdir_x(i, direction);
	    var ly = y + lengthdir_y(i, direction);
	
	    if(collision_point(lx, ly, solid_object, false, true)){
			
	        break;
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
	
		// Assign Variable
		sucker.hp += -1;
		sucker.flashAlpha = 1.2;
	}
	       // break;
		}
	
	}
	
	shootingAngle = direction;
	myLength = point_distance(x+x_offset,y+y_offset,lx,ly);
	//gpu_set_blendmode(bm_add);
	draw_set_color(c_orange);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 20*random_range(1,3)) + 0.1);
	draw_set_color(c_yellow);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 9*random_range(1,3)) + 0.1);
	draw_set_color(c_white);
	draw_line_width(x+x_offset, y+y_offset, x+x_offset + lengthdir_x(myLength, shootingAngle), y + lengthdir_y(myLength, shootingAngle), (h_offset * 5*random_range(1,3)) + 0.1);}