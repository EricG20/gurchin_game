/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 55C26D1A
/// @DnDArgument : "var" "other.iframes"
/// @DnDArgument : "op" "3"
if(other.iframes <= 0){	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 7EC41C10
	/// @DnDParent : 55C26D1A
	/// @DnDArgument : "soundid" "sfx_hit"
	/// @DnDArgument : "gain" "1.5"
	/// @DnDArgument : "pitch" "random_range(.6,.8)"
	/// @DnDSaveInfo : "soundid" "sfx_hit"
	audio_play_sound(sfx_hit, 0, 0, 1.5, undefined, random_range(.6,.8));

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 3CF702CA
	/// @DnDParent : 55C26D1A
	/// @DnDArgument : "soundid" "gurch_hurt"
	/// @DnDArgument : "pitch" "1.0+random_range(0,.2)"
	/// @DnDSaveInfo : "soundid" "gurch_hurt"
	audio_play_sound(gurch_hurt, 0, 0, 1.0, undefined, 1.0+random_range(0,.2));

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 1A4F27B3
	/// @DnDParent : 55C26D1A
	/// @DnDArgument : "script" "scr_screenshake"
	/// @DnDSaveInfo : "script" "scr_screenshake"
	script_execute(scr_screenshake);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D10877C
	/// @DnDInput : 5
	/// @DnDParent : 55C26D1A
	/// @DnDArgument : "expr" "ps.HIT"
	/// @DnDArgument : "expr_1" "hsp/1.4"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "expr_3" "-9"
	/// @DnDArgument : "expr_4" "false"
	/// @DnDArgument : "var" "other.state"
	/// @DnDArgument : "var_1" "other.knockback_speed"
	/// @DnDArgument : "var_2" "other.hp"
	/// @DnDArgument : "var_3" "other.vsp"
	/// @DnDArgument : "var_4" "other.tick"
	other.state = ps.HIT;
	other.knockback_speed = hsp/1.4;
	other.hp += -1;
	other.vsp = -9;
	other.tick = false;

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4A1257A4
	/// @DnDParent : 55C26D1A
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "e_explosion"
	/// @DnDArgument : "layer" ""Effects""
	/// @DnDSaveInfo : "objectid" "e_explosion"
	instance_create_layer(x + 0, y + 0, "Effects", e_explosion);}