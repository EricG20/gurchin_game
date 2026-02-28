/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 08246DAD
draw_self();

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 023D4600
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "target" "thisdude"
/// @DnDArgument : "object" "o_player"
/// @DnDSaveInfo : "object" "o_player"
var l023D4600_0 = instance_place(x + 0, y + 0, [o_player]);
thisdude = l023D4600_0;if ((l023D4600_0 > 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 108E9819
	/// @DnDParent : 023D4600
	/// @DnDArgument : "var" "displaying_info"
	/// @DnDArgument : "value" "false"
	if(displaying_info == false){	/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 2F3FC746
		/// @DnDParent : 108E9819
		/// @DnDArgument : "script" "msg_static"
		/// @DnDArgument : "arg" ""Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal""
		/// @DnDSaveInfo : "script" "msg_static"
		script_execute(msg_static, "Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal");}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 06CEF500
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude.accept"
	if(thisdude.accept){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C462262
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "expr" "ps.THINK"
		/// @DnDArgument : "var" "thisdude.state"
		thisdude.state = ps.THINK;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0762EE67
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "expr" "displaying_info"
		if(displaying_info){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
			/// @DnDVersion : 1
			/// @DnDHash : 04013FD9
			/// @DnDParent : 0762EE67
			/// @DnDArgument : "room" "ds_map_find_value(mission_details, ds_list_find_value(missions,mission_index)+"_room")"
			room_goto(ds_map_find_value(mission_details, ds_list_find_value(missions,mission_index)+"_room"));}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7BE49684
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "displaying_info"
		displaying_info = true;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 431E2D47
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude.cancel"
	if(thisdude.cancel){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1020BCA9
		/// @DnDInput : 2
		/// @DnDParent : 431E2D47
		/// @DnDArgument : "expr" "ps.IDLE"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "var" "thisdude.state"
		/// @DnDArgument : "var_1" "displaying_info"
		thisdude.state = ps.IDLE;
		displaying_info = false;}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 79D7EE1D
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude.up_tap"
	if(thisdude.up_tap){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 701F5C20
		/// @DnDParent : 79D7EE1D
		/// @DnDArgument : "expr" "clamp(mission_index-1,0,ds_list_size(missions)-1)"
		/// @DnDArgument : "var" "mission_index"
		mission_index = clamp(mission_index-1,0,ds_list_size(missions)-1);}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 73C03E84
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude.down_tap"
	if(thisdude.down_tap){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17168D8F
		/// @DnDParent : 73C03E84
		/// @DnDArgument : "expr" "clamp(mission_index+1,0,ds_list_size(missions)-1)"
		/// @DnDArgument : "var" "mission_index"
		mission_index = clamp(mission_index+1,0,ds_list_size(missions)-1);}}