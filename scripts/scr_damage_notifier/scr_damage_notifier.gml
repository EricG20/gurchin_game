/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 55D8D62B
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDInput : 2
/// @DnDArgument : "funcName" "scr_damage_notifier"
/// @DnDArgument : "arg" "damage"
/// @DnDArgument : "arg_1" "victim=other"
function scr_damage_notifier(damage, victim=other) {	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 5F1FF393
	/// @DnDParent : 55D8D62B
	/// @DnDArgument : "expr" "victim.tagged"
	if(victim.tagged){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 67BF4A9C
		/// @DnDInput : 4
		/// @DnDParent : 5F1FF393
		/// @DnDArgument : "expr" "string(damage+real(victim.damage_counter.dis_text))"
		/// @DnDArgument : "expr_1" "(.2/victim.damage_counter.size)*damage"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" "10"
		/// @DnDArgument : "expr_3" "real(victim.damage_counter.dis_text)*.02"
		/// @DnDArgument : "var" "victim.damage_counter.dis_text"
		/// @DnDArgument : "var_1" "victim.damage_counter.size"
		/// @DnDArgument : "var_2" "victim.damage_counter.alpher"
		/// @DnDArgument : "var_3" "hit_pitch"
		victim.damage_counter.dis_text = string(damage+real(victim.damage_counter.dis_text));
		victim.damage_counter.size += (.2/victim.damage_counter.size)*damage;
		victim.damage_counter.alpher = 10;
		hit_pitch = real(victim.damage_counter.dis_text)*.02;
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6F9236E5
		/// @DnDParent : 5F1FF393
		/// @DnDArgument : "var" "distance_to_object(victim.damage_counter)"
		/// @DnDArgument : "op" "2"
		/// @DnDArgument : "value" "15"
		if(distance_to_object(victim.damage_counter) > 15){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 44DE9046
			/// @DnDInput : 3
			/// @DnDApplyTo : victim.damage_counter
			/// @DnDParent : 6F9236E5
			/// @DnDArgument : "script" "scr_homing"
			/// @DnDArgument : "arg" "victim"
			/// @DnDArgument : "arg_1" "1"
			/// @DnDArgument : "arg_2" "999"
			/// @DnDSaveInfo : "script" "scr_homing"
			with(victim.damage_counter) {
				script_execute(scr_homing, victim, 1, 999);
			}}}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 7D3618A3
	/// @DnDParent : 55D8D62B
	/// @DnDArgument : "expr" "victim.tagged"
	/// @DnDArgument : "not" "1"
	if(!(victim.tagged)){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 14A78A6B
		/// @DnDParent : 7D3618A3
		/// @DnDArgument : "xpos" "victim.x"
		/// @DnDArgument : "ypos" "victim.y"
		/// @DnDArgument : "var" "damage_notif"
		/// @DnDArgument : "objectid" "e_other_notif"
		/// @DnDArgument : "layer" ""Effects""
		/// @DnDSaveInfo : "objectid" "e_other_notif"
		damage_notif = instance_create_layer(victim.x, victim.y, "Effects", e_other_notif);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 61DEF7EA
		/// @DnDInput : 5
		/// @DnDParent : 7D3618A3
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "damage_notif"
		/// @DnDArgument : "expr_2" "string(damage)"
		/// @DnDArgument : "expr_3" "victim"
		/// @DnDArgument : "expr_4" "damage*.5"
		/// @DnDArgument : "var" "victim.tagged"
		/// @DnDArgument : "var_1" "victim.damage_counter"
		/// @DnDArgument : "var_2" "damage_notif.dis_text"
		/// @DnDArgument : "var_3" "damage_notif.tagged_guy"
		/// @DnDArgument : "var_4" "victim.damage_counter.size"
		victim.tagged = true;
		victim.damage_counter = damage_notif;
		damage_notif.dis_text = string(damage);
		damage_notif.tagged_guy = victim;
		victim.damage_counter.size = damage*.5;}}