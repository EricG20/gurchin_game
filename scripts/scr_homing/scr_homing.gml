/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 07EB4326
/// @DnDComment : //Note: this is soft homing, not super soldier precise homing
/// @DnDInput : 3
/// @DnDArgument : "funcName" "scr_homing"
/// @DnDArgument : "arg" "target"
/// @DnDArgument : "arg_1" "infl=.5"
/// @DnDArgument : "arg_2" "range=200"
function scr_homing(target, infl=.5, range=200) {	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 69847EF5
	/// @DnDParent : 07EB4326
	/// @DnDArgument : "var" "distance_to_object(target)"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "range"
	if(distance_to_object(target) < range){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 74469C10
		/// @DnDParent : 69847EF5
		/// @DnDArgument : "expr" "lengthdir_x(infl,point_direction(x,y,target.x,target.y))"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "hsp"
		hsp += lengthdir_x(infl,point_direction(x,y,target.x,target.y));
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 48A58DCD
		/// @DnDParent : 69847EF5
		/// @DnDArgument : "expr" "lengthdir_y(infl, point_direction(x,y,target.x,target.y))"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "vsp"
		vsp += lengthdir_y(infl, point_direction(x,y,target.x,target.y));}}