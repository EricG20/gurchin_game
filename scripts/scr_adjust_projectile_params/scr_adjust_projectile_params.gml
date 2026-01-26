/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 3B0A9FBE
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 4
/// @DnDArgument : "funcName" "scr_adjust_projectile_params"
/// @DnDArgument : "arg" "projectile"
/// @DnDArgument : "arg_1" "proj_angle"
/// @DnDArgument : "arg_2" "proj_speed"
/// @DnDArgument : "arg_3" "proj_sprite=projectile.sprite_index"
function scr_adjust_projectile_params(projectile, proj_angle, proj_speed, proj_sprite=projectile.sprite_index) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7F1C5A2D
	/// @DnDInput : 4
	/// @DnDParent : 3B0A9FBE
	/// @DnDArgument : "expr" "lengthdir_x(proj_speed, proj_angle)"
	/// @DnDArgument : "expr_1" "lengthdir_y(proj_speed,proj_angle)"
	/// @DnDArgument : "expr_2" "proj_sprite"
	/// @DnDArgument : "expr_3" "proj_angle"
	/// @DnDArgument : "var" "projectile.hsp"
	/// @DnDArgument : "var_1" "projectile.vsp"
	/// @DnDArgument : "var_2" "projectile.sprite_index"
	/// @DnDArgument : "var_3" "projectile.direction"
	projectile.hsp = lengthdir_x(proj_speed, proj_angle);
	projectile.vsp = lengthdir_y(proj_speed,proj_angle);
	projectile.sprite_index = proj_sprite;
	projectile.direction = proj_angle;}