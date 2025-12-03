/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 2982FCA4
/// @DnDComment : // Script assets have changed for v2.3.0 see$(13_10)// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
/// @DnDArgument : "funcName" "hmm_player_or_pylon"
function hmm_player_or_pylon() {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E49823C
	/// @DnDParent : 2982FCA4
	/// @DnDArgument : "var" "o_player.state"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "ps.DIE"
	if(!(o_player.state == ps.DIE)){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 1BFA89C4
		/// @DnDParent : 1E49823C
		/// @DnDArgument : "var" "distance_to_object(o_player)"
		/// @DnDArgument : "op" "1"
		/// @DnDArgument : "value" "500"
		if(distance_to_object(o_player) < 500){	/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5F4F413C
			/// @DnDParent : 1BFA89C4
			/// @DnDArgument : "script" "face_gunna"
			/// @DnDSaveInfo : "script" "face_gunna"
			script_execute(face_gunna);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 67DA3A15
			/// @DnDParent : 1BFA89C4
			/// @DnDArgument : "expr" "o_player"
			/// @DnDArgument : "var" "target"
			target = o_player;}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 41B8A6D4
		/// @DnDParent : 1E49823C
		else{	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 26C03256
			/// @DnDParent : 41B8A6D4
			/// @DnDArgument : "expr" "o_pylon"
			/// @DnDArgument : "var" "target"
			target = o_pylon;
		
			/// @DnDAction : YoYo Games.Common.Execute_Script
			/// @DnDVersion : 1.1
			/// @DnDHash : 5306FC80
			/// @DnDParent : 41B8A6D4
			/// @DnDArgument : "script" "face_pylon"
			/// @DnDSaveInfo : "script" "face_pylon"
			script_execute(face_pylon);}}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10B47893
	/// @DnDParent : 2982FCA4
	/// @DnDArgument : "var" "o_player.state"
	/// @DnDArgument : "value" "ps.DIE"
	if(o_player.state == ps.DIE){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F384168
		/// @DnDParent : 10B47893
		/// @DnDArgument : "expr" "o_pylon"
		/// @DnDArgument : "var" "target"
		target = o_pylon;
	
		/// @DnDAction : YoYo Games.Common.Execute_Script
		/// @DnDVersion : 1.1
		/// @DnDHash : 405DA298
		/// @DnDParent : 10B47893
		/// @DnDArgument : "script" "face_pylon"
		/// @DnDSaveInfo : "script" "face_pylon"
		script_execute(face_pylon);}}