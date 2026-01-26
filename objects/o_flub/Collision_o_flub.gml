/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 76EF8C53
/// @DnDArgument : "var" "other.flubbington"
/// @DnDArgument : "op" "2"
/// @DnDArgument : "value" "flubbington"
if(other.flubbington > flubbington){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 355DE015
	/// @DnDParent : 76EF8C53
	/// @DnDArgument : "expr" "will_combine && other.will_combine"
	if(will_combine && other.will_combine){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 326B9BF9
		/// @DnDInput : 3
		/// @DnDParent : 355DE015
		/// @DnDArgument : "expr" "flubbington"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "expr_1" ".05"
		/// @DnDArgument : "expr_relative_1" "1"
		/// @DnDArgument : "expr_2" ".05"
		/// @DnDArgument : "expr_relative_2" "1"
		/// @DnDArgument : "var" "other.flubbington"
		/// @DnDArgument : "var_1" "other.image_xscale"
		/// @DnDArgument : "var_2" "other.image_yscale"
		other.flubbington += flubbington;
		other.image_xscale += .05;
		other.image_yscale += .05;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 0B0E88FA
		/// @DnDParent : 355DE015
		instance_destroy();}}