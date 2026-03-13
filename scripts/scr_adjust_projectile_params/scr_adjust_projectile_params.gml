/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B0A9FBE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 5
/// @DnDArgument : "funcName" "scr_adjust_projectile_params"
/// @DnDArgument : "arg" "projectile"
/// @DnDArgument : "arg_1" "proj_angle"
/// @DnDArgument : "arg_2" "proj_speed"
/// @DnDArgument : "arg_3" "proj_sprite=projectile.sprite_index"
/// @DnDArgument : "arg_4" "proj_damage=1"
function scr_adjust_projectile_params(projectile, proj_angle, proj_speed, proj_sprite=projectile.sprite_index, proj_damage=1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F1C5A2D
	/// @DnDInput : 8
	/// @DnDParent : 3B0A9FBE
	/// @DnDArgument : "expr" "lengthdir_x(proj_speed, proj_angle)"
	/// @DnDArgument : "expr_1" "lengthdir_y(proj_speed,proj_angle)"
	/// @DnDArgument : "expr_2" "proj_sprite"
	/// @DnDArgument : "expr_3" "proj_angle"
	/// @DnDArgument : "expr_4" "weilder"
	/// @DnDArgument : "expr_5" "proj_damage"
	/// @DnDArgument : "expr_6" "1"
	/// @DnDArgument : "expr_relative_6" "1"
	/// @DnDArgument : "expr_7" "weilder.bullets_shot"
	/// @DnDArgument : "var" "projectile.hsp"
	/// @DnDArgument : "var_1" "projectile.vsp"
	/// @DnDArgument : "var_2" "projectile.sprite_index"
	/// @DnDArgument : "var_3" "projectile.direction"
	/// @DnDArgument : "var_4" "projectile.sender"
	/// @DnDArgument : "var_5" "projectile.damage"
	/// @DnDArgument : "var_6" "weilder.bullets_shot"
	/// @DnDArgument : "var_7" "projectile.bullet_number"
	projectile.hsp = lengthdir_x(proj_speed, proj_angle);
	projectile.vsp = lengthdir_y(proj_speed,proj_angle);
	projectile.sprite_index = proj_sprite;
	projectile.direction = proj_angle;
	projectile.sender = weilder;
	projectile.damage = proj_damage;
	weilder.bullets_shot += 1;
	projectile.bullet_number = weilder.bullets_shot;}