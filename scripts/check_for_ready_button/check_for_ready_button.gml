/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 277D2A43
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "check_for_ready_button"
function check_for_ready_button() {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 571A89C0
	/// @DnDParent : 277D2A43
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "is_it_there"
	is_it_there = false;

	/// @DnDAction : YoYo Games.Common.Apply_To
	/// @DnDVersion : 1
	/// @DnDHash : 11149759
	/// @DnDApplyTo : o_select_place
	/// @DnDParent : 277D2A43
	with(o_select_place) {
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 35512CFE
		/// @DnDParent : 11149759
		/// @DnDArgument : "var" "words"
		/// @DnDArgument : "value" ""READY""
		if(words == "READY"){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59537BE5
			/// @DnDParent : 35512CFE
			/// @DnDArgument : "expr" "true"
			/// @DnDArgument : "var" "is_it_there"
			is_it_there = true;}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 564D8DDF
	/// @DnDParent : 277D2A43
	/// @DnDArgument : "var" "is_it_there"
	/// @DnDArgument : "value" "false"
	if(is_it_there == false){	/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1FD6316C
		/// @DnDParent : 564D8DDF
		/// @DnDArgument : "xpos" "960"
		/// @DnDArgument : "ypos" "900"
		/// @DnDArgument : "var" "ready_button"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "objectid" "o_select_place"
		/// @DnDArgument : "layer" ""Instances_Front""
		/// @DnDSaveInfo : "objectid" "o_select_place"
		var ready_button = instance_create_layer(960, 900, "Instances_Front", o_select_place);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7B80DB78
		/// @DnDParent : 564D8DDF
		/// @DnDArgument : "expr" ""READY""
		/// @DnDArgument : "var" "ready_button.words"
		ready_button.words = "READY";}}