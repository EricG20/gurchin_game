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
thisdude = l023D4600_0;if ((l023D4600_0 > 0)){	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 2F3FC746
	/// @DnDParent : 023D4600
	/// @DnDArgument : "script" "msg_static"
	/// @DnDArgument : "arg" ""Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal""
	/// @DnDSaveInfo : "script" "msg_static"
	script_execute(msg_static, "Press -" + InputVerbGetBindingName(INPUT_VERB.ACCEPT) + "- to use terminal");

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 06CEF500
	/// @DnDParent : 023D4600
	/// @DnDArgument : "expr" "thisdude.accept"
	if(thisdude.accept){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2C462262
		/// @DnDInput : 2
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "expr_1" "true"
		/// @DnDArgument : "var" "thisdude.persistent"
		/// @DnDArgument : "var_1" "thisdude.mygurn.persistent"
		thisdude.persistent = true;
		thisdude.mygurn.persistent = true;
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 471B794D
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "room" "ship_room"
		/// @DnDSaveInfo : "room" "ship_room"
		room_goto(ship_room);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 793F3776
		/// @DnDInput : 2
		/// @DnDParent : 06CEF500
		/// @DnDArgument : "expr" "false"
		/// @DnDArgument : "expr_1" "false"
		/// @DnDArgument : "var" "thisdude.persistent"
		/// @DnDArgument : "var_1" "thisdude.mygurn.persistent"
		thisdude.persistent = false;
		thisdude.mygurn.persistent = false;}}