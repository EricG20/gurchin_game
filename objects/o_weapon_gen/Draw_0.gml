/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 7C061364
draw_self();

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 3111867F
/// @DnDArgument : "expr" "state"
var l3111867F_0 = state;switch(l3111867F_0){	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0A9B800B
	/// @DnDParent : 3111867F
	/// @DnDArgument : "const" "ps.IDLE"
	case ps.IDLE:	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 37E68593
		/// @DnDParent : 0A9B800B
		/// @DnDArgument : "var" "operate"
		/// @DnDArgument : "value" "true"
		if(operate == true){	/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0CCC7B51
			/// @DnDParent : 37E68593
			/// @DnDArgument : "var" "cooldown"
			if(cooldown == 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 1BAFEE46
				/// @DnDParent : 0CCC7B51
				/// @DnDArgument : "script" "msg_static"
				/// @DnDArgument : "arg" ""WEAPON GENERATOR ONLINE. PRESS -E- TO GENERATE WEAPON. (REQUIRES 500 POINTS)""
				/// @DnDSaveInfo : "script" "msg_static"
				script_execute(msg_static, "WEAPON GENERATOR ONLINE. PRESS -E- TO GENERATE WEAPON. (REQUIRES 500 POINTS)");}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 01D05A2E
			/// @DnDParent : 37E68593
			else{	/// @DnDAction : YoYo Games.Common.Execute_Script
				/// @DnDVersion : 1.1
				/// @DnDHash : 6FCBE8E0
				/// @DnDParent : 01D05A2E
				/// @DnDArgument : "script" "msg_static"
				/// @DnDArgument : "arg" ""INTERNALS COOLING DOWN. ESTIMATED COOLING TIME: " + string(cooldown/60*global.game_speed) + " SECONDS""
				/// @DnDSaveInfo : "script" "msg_static"
				script_execute(msg_static, "INTERNALS COOLING DOWN. ESTIMATED COOLING TIME: " + string(cooldown/60*global.game_speed) + " SECONDS");}}	break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 4CA9CA7A
	/// @DnDParent : 3111867F
	/// @DnDArgument : "const" "ps.HIT"
	case ps.HIT:	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 27340C9C
		/// @DnDParent : 4CA9CA7A
		/// @DnDArgument : "script" "msg_dynamic"
		/// @DnDArgument : "arg" ""....""
		/// @DnDSaveInfo : "script" "msg_dynamic"
		script_execute(msg_dynamic, "....");
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1C6D2EBE
		/// @DnDParent : 4CA9CA7A
		/// @DnDArgument : "var" "floor(cooldown)%40"
		if(floor(cooldown)%40 == 0){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 3927E1B8
			/// @DnDParent : 1C6D2EBE
			/// @DnDArgument : "script" "msg_stop"
			/// @DnDSaveInfo : "script" "msg_stop"
			script_execute(msg_stop);}
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
		/// @DnDVersion : 1
		/// @DnDHash : 72D990FA
		/// @DnDParent : 4CA9CA7A
		/// @DnDArgument : "x1" "bbox_left"
		/// @DnDArgument : "y1" "bbox_bottom-20"
		/// @DnDArgument : "x2" "bbox_right"
		/// @DnDArgument : "y2" "bbox_bottom"
		/// @DnDArgument : "direction" "1"
		/// @DnDArgument : "value" "cooldown/4"
		/// @DnDArgument : "backcol" "$FF000000"
		/// @DnDArgument : "barcol" "$FF000000"
		draw_healthbar(bbox_left, bbox_bottom-20, bbox_right, bbox_bottom, cooldown/4, $FF000000 & $FFFFFF, $FFFFFF & $FFFFFF, $FFFFFF & $FFFFFF, 1, (($FF000000>>24) != 0), (($FF000000>>24) != 0));	break;}