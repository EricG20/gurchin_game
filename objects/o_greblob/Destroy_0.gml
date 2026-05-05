/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 081AFCC3
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 698FAF0F
/// @DnDArgument : "code" "scr_makeexplosion(x,y,true,1.5)"
scr_makeexplosion(x,y,true,1.5)

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 2CE69FCB
/// @DnDArgument : "soundid" "sfx_shotgun"
/// @DnDArgument : "pitch" ".7"
/// @DnDSaveInfo : "soundid" "sfx_shotgun"
audio_play_sound(sfx_shotgun, 0, 0, 1.0, undefined, .7);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 326E5C70
/// @DnDInput : 2
/// @DnDArgument : "var" "aoe_radius"
/// @DnDArgument : "value" "300"
/// @DnDArgument : "var_1" "aoe_damage"
/// @DnDArgument : "value_1" "damage*2"
var aoe_radius = 300;
var aoe_damage = damage*2;

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 4E68E3B3
/// @DnDApplyTo : {o_enemy}
with(o_enemy) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7F79040E
	/// @DnDParent : 4E68E3B3
	/// @DnDArgument : "expr" "point_distance(x,y,other.x,other.y) < aoe_radius"
	if(point_distance(x,y,other.x,other.y) < aoe_radius){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7E2F0279
		/// @DnDInput : 2
		/// @DnDParent : 7F79040E
		/// @DnDArgument : "expr" "-aoe_damage"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" "1.2"
		/// @DnDArgument : "var" "hp"
		/// @DnDArgument : "var_1" "flashAlpha"
		hp += -aoe_damage;
		flashAlpha = 1.2;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61411E92
		/// @DnDParent : 7F79040E
		/// @DnDArgument : "var" "dir"
		/// @DnDArgument : "value" "point_direction(other.x,other.y,x,y)"
		var dir = point_direction(other.x,other.y,x,y);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 397E6E7C
		/// @DnDParent : 7F79040E
		/// @DnDArgument : "code" "/// @description Execute Code$(13_10)scr_damage_notifier(aoe_damage, id);"
		/// @description Execute Code
		scr_damage_notifier(aoe_damage, id);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5D66A41B
		/// @DnDParent : 7F79040E
		/// @DnDArgument : "expr" "lengthdir_x(6,dir)"
		/// @DnDArgument : "var" "knockback_speed"
		knockback_speed = lengthdir_x(6,dir);}
}