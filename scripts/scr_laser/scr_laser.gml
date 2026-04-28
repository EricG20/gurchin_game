/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 467D13D6
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 11
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
/// @DnDArgument : "arg_10" "target_tolerance=1"
function scr_laser(x_offset=0, y_offset=0, h_offset=10, collision_target=o_enemy, target_x=weilder.reticle.x, target_y=weilder.reticle.y, color_one=c_orange, color_two=c_yellow, color_three=c_white, damage=1, target_tolerance=1) {	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 55B0531F
	/// @DnDParent : 467D13D6
	/// @DnDArgument : "code" "/// scr_laser(x_offset, y_offset, h_offset, collision_target, target_x, target_y, color_one, color_two, color_three, damage, target_tolerance)$(13_10)$(13_10)var ox = x + x_offset;$(13_10)var oy = y + y_offset;$(13_10)$(13_10)var dir = point_direction(ox, oy, target_x, target_y);$(13_10)var max_len = 3800;$(13_10)var step = 6; // larger step = faster, still accurate$(13_10)var beam_halfwidth = h_offset; // your thickness$(13_10)$(13_10)var hit_x = ox;$(13_10)var hit_y = oy;$(13_10)$(13_10)for (var i = 0; i < max_len; i += step) {$(13_10)$(13_10)    // rectangle sweep segment$(13_10)    var lx1 = ox + lengthdir_x(i, dir) - beam_halfwidth;$(13_10)    var ly1 = oy + lengthdir_y(i, dir) - beam_halfwidth;$(13_10)    var lx2 = ox + lengthdir_x(i, dir) + beam_halfwidth;$(13_10)    var ly2 = oy + lengthdir_y(i, dir) + beam_halfwidth;$(13_10)$(13_10)    // special case: delete gurch bubbles only when targeting enemies$(13_10)    if (collision_target == o_enemy) {$(13_10)        var bub = collision_rectangle(lx1, ly1, lx2, ly2, o_gurch_bubble, false, true);$(13_10)        if (bub != noone) {$(13_10)            instance_destroy(bub);$(13_10)        }$(13_10)    }$(13_10)$(13_10)    // main collision$(13_10)    var sucker = collision_rectangle(lx1, ly1, lx2, ly2, collision_target, false, true);$(13_10)$(13_10)    if (sucker != noone) {$(13_10)$(13_10)        // prevent double-hits$(13_10)        if (ds_list_find_index(collided_with, sucker.id) == -1) {$(13_10)$(13_10)            ds_list_add(collided_with, sucker.id);$(13_10)$(13_10)            // damage logic$(13_10)            if (sucker.object_index == o_player) {$(13_10)                scr_damage_player(2, sucker);$(13_10)            }$(13_10)$(13_10)            sucker.hp -= damage;$(13_10)            sucker.flashAlpha = 1.2;$(13_10)$(13_10)            if (collision_target == o_enemy) {$(13_10)                weilder.special_meter += damage;$(13_10)                scr_damage_notifier(damage, sucker);$(13_10)                if (object_index == o_minion) weilder.special_meter -= damage / 2;$(13_10)            }$(13_10)        }$(13_10)$(13_10)        // stop if tolerance reached$(13_10)        if (ds_list_size(collided_with) >= target_tolerance) {$(13_10)            hit_x = ox + lengthdir_x(i, dir);$(13_10)            hit_y = oy + lengthdir_y(i, dir);$(13_10)            break;$(13_10)        }$(13_10)    }$(13_10)$(13_10)    // no hit yet → update hit point to current segment$(13_10)    hit_x = ox + lengthdir_x(i, dir);$(13_10)    hit_y = oy + lengthdir_y(i, dir);$(13_10)}$(13_10)var myLength = point_distance(ox, oy, hit_x, hit_y);$(13_10)$(13_10)draw_set_color(color_one);$(13_10)draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 20 * random_range(1,3)) + 0.1);$(13_10)$(13_10)draw_set_color(color_two);$(13_10)draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 9 * random_range(1,3)) + 0.1);$(13_10)$(13_10)draw_set_color(color_three);$(13_10)draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 5 * random_range(1,3)) + 0.1);$(13_10)$(13_10)draw_set_color(c_white);$(13_10)"
	/// scr_laser(x_offset, y_offset, h_offset, collision_target, target_x, target_y, color_one, color_two, color_three, damage, target_tolerance)
	
	var ox = x + x_offset;
	var oy = y + y_offset;
	
	var dir = point_direction(ox, oy, target_x, target_y);
	var max_len = 3800;
	var step = 6; // larger step = faster, still accurate
	var beam_halfwidth = h_offset; // your thickness
	
	var hit_x = ox;
	var hit_y = oy;
	
	for (var i = 0; i < max_len; i += step) {
	
	    // rectangle sweep segment
	    var lx1 = ox + lengthdir_x(i, dir) - beam_halfwidth;
	    var ly1 = oy + lengthdir_y(i, dir) - beam_halfwidth;
	    var lx2 = ox + lengthdir_x(i, dir) + beam_halfwidth;
	    var ly2 = oy + lengthdir_y(i, dir) + beam_halfwidth;
	
	    // special case: delete gurch bubbles only when targeting enemies
	    if (collision_target == o_enemy) {
	        var bub = collision_rectangle(lx1, ly1, lx2, ly2, o_gurch_bubble, false, true);
	        if (bub != noone) {
	            instance_destroy(bub);
	        }
	    }
	
	    // main collision
	    var sucker = collision_rectangle(lx1, ly1, lx2, ly2, collision_target, false, true);
	
	    if (sucker != noone) {
	
	        // prevent double-hits
	        if (ds_list_find_index(collided_with, sucker.id) == -1) {
	
	            ds_list_add(collided_with, sucker.id);
	
	            // damage logic
	            if (sucker.object_index == o_player) {
	                scr_damage_player(2, sucker);
	            }
	
	            sucker.hp -= damage;
	            sucker.flashAlpha = 1.2;
	
	            if (collision_target == o_enemy) {
	                weilder.special_meter += damage;
	                scr_damage_notifier(damage, sucker);
	                if (object_index == o_minion) weilder.special_meter -= damage / 2;
	            }
	        }
	
	        // stop if tolerance reached
	        if (ds_list_size(collided_with) >= target_tolerance) {
	            hit_x = ox + lengthdir_x(i, dir);
	            hit_y = oy + lengthdir_y(i, dir);
	            break;
	        }
	    }
	
	    // no hit yet → update hit point to current segment
	    hit_x = ox + lengthdir_x(i, dir);
	    hit_y = oy + lengthdir_y(i, dir);
	}
	var myLength = point_distance(ox, oy, hit_x, hit_y);
	
	draw_set_color(color_one);
	draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 20 * random_range(1,3)) + 0.1);
	
	draw_set_color(color_two);
	draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 9 * random_range(1,3)) + 0.1);
	
	draw_set_color(color_three);
	draw_line_width(ox, oy, hit_x, hit_y, (h_offset * 5 * random_range(1,3)) + 0.1);
	
	draw_set_color(c_white);}