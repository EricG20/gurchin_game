/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3CFB82B5
/// @DnDArgument : "var" "ds_list_find_index(collided_with,other.id)"
/// @DnDArgument : "value" "-1"
if(ds_list_find_index(collided_with,other.id) == -1){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 5593FC7A
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "script" "scr_stun_logic"
	/// @DnDSaveInfo : "script" "scr_stun_logic"
	script_execute(scr_stun_logic);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 28675648
	/// @DnDInput : 2
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "function" "ds_list_add"
	/// @DnDArgument : "arg" "collided_with"
	/// @DnDArgument : "arg_1" "other.id"
	ds_list_add(collided_with, other.id);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 66D39569
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "var" "polyphamy_num"
	polyphamy_num = 0;

	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 377DD371
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "soundid" "sfx_hit"
	/// @DnDSaveInfo : "soundid" "sfx_hit"
	var l377DD371_0 = sfx_hit;if (audio_is_playing(l377DD371_0)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5EAE9C84
		/// @DnDParent : 377DD371
		/// @DnDArgument : "expr" ".6"
		/// @DnDArgument : "var" "polyphamy_num"
		polyphamy_num = .6;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 39DA32BE
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "expr" "other.tagged"
	if(other.tagged){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 541B3CA1
		/// @DnDInput : 4
		/// @DnDParent : 39DA32BE
		/// @DnDArgument : "expr" "string(damage+real(other.damage_counter.dis_text))"
		/// @DnDArgument : "expr_1" "(.2/other.damage_counter.size)*damage"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "10"
		/// @DnDArgument : "expr_3" "real(other.damage_counter.dis_text)*.02"
		/// @DnDArgument : "var" "other.damage_counter.dis_text"
		/// @DnDArgument : "var_1" "other.damage_counter.size"
		/// @DnDArgument : "var_2" "other.damage_counter.alpher"
		/// @DnDArgument : "var_3" "hit_pitch"
		other.damage_counter.dis_text = string(damage+real(other.damage_counter.dis_text));
		other.damage_counter.size += (.2/other.damage_counter.size)*damage;
		other.damage_counter.alpher = 10;
		hit_pitch = real(other.damage_counter.dis_text)*.02;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 25F3DC0C
		/// @DnDParent : 39DA32BE
		/// @DnDArgument : "var" "distance_to_object(other.damage_counter)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "15"
		if(distance_to_object(other.damage_counter) > 15){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 61F5675B
			/// @DnDInput : 3
			/// @DnDApplyTo : other.damage_counter
			/// @DnDParent : 25F3DC0C
			/// @DnDArgument : "script" "scr_homing"
			/// @DnDArgument : "arg" "other"
			/// @DnDArgument : "arg_1" "1"
			/// @DnDArgument : "arg_2" "999"
			/// @DnDSaveInfo : "script" "scr_homing"
			with(other.damage_counter) {
				script_execute(scr_homing, other, 1, 999);
			}}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 34716410
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "expr" "other.tagged"
	/// @DnDArgument : "not" "1"
	if(!(other.tagged)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 3022478C
		/// @DnDParent : 34716410
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "damage_notif"
		/// @DnDArgument : "objectid" "e_other_notif"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_other_notif"
		damage_notif = instance_create_layer(x + 0, y + 0, "Effects", e_other_notif);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F60317D
		/// @DnDInput : 5
		/// @DnDParent : 34716410
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "damage_notif"
		/// @DnDArgument : "expr_2" "string(damage)"
		/// @DnDArgument : "expr_3" "other"
		/// @DnDArgument : "expr_4" "damage*.5"
		/// @DnDArgument : "var" "other.tagged"
		/// @DnDArgument : "var_1" "other.damage_counter"
		/// @DnDArgument : "var_2" "damage_notif.dis_text"
		/// @DnDArgument : "var_3" "damage_notif.tagged_guy"
		/// @DnDArgument : "var_4" "damage_notif.size"
		other.tagged = true;
		other.damage_counter = damage_notif;
		damage_notif.dis_text = string(damage);
		damage_notif.tagged_guy = other;
		damage_notif.size = damage*.5;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 422B73C4
	/// @DnDInput : 3
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "expr" "-damage"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "1.2"
	/// @DnDArgument : "expr_2" "-1"
	/// @DnDArgument : "expr_relative_2" "1"
	/// @DnDArgument : "var" "other.hp"
	/// @DnDArgument : "var_1" "other.flashAlpha"
	/// @DnDArgument : "var_2" "enemy_tolerance"
	other.hp += -damage;
	other.flashAlpha = 1.2;
	enemy_tolerance += -1;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1.1
	/// @DnDHash : 2976FED5
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "soundid" "sfx_hit"
	/// @DnDArgument : "gain" ".8"
	/// @DnDArgument : "pitch" "clamp(random_range(.9,1.1)+hit_pitch,0,1.8)"
	/// @DnDSaveInfo : "soundid" "sfx_hit"
	audio_play_sound(sfx_hit, 0, 0, .8, undefined, clamp(random_range(.9,1.1)+hit_pitch,0,1.8));

	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 4045DBAC
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "obj" "sender"
	var l4045DBAC_0 = false;l4045DBAC_0 = instance_exists(sender);if(l4045DBAC_0){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4264BEA1
		/// @DnDParent : 4045DBAC
		/// @DnDArgument : "var" "sender.object_index"
		/// @DnDArgument : "value" "o_player"
		if(sender.object_index == o_player){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69BC97AB
			/// @DnDParent : 4264BEA1
			/// @DnDArgument : "expr" "clamp(sender.special_meter+damage,0,sender.special_meter_cap)"
			/// @DnDArgument : "var" "sender.special_meter"
			sender.special_meter = clamp(sender.special_meter+damage,0,sender.special_meter_cap);}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C4C27E7
	/// @DnDParent : 3CFB82B5
	/// @DnDArgument : "var" "enemy_tolerance"
	/// @DnDArgument : "op" "3"
	if(enemy_tolerance <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 61D29FF4
		/// @DnDParent : 5C4C27E7
		instance_destroy();}}