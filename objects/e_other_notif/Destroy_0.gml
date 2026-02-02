/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 6E72F285
/// @DnDArgument : "obj" "tagged_guy"
var l6E72F285_0 = false;l6E72F285_0 = instance_exists(tagged_guy);if(l6E72F285_0){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6396128A
	/// @DnDInput : 2
	/// @DnDParent : 6E72F285
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "expr_1" "noone"
	/// @DnDArgument : "var" "tagged_guy.tagged"
	/// @DnDArgument : "var_1" "tagged_guy.damage_counter"
	tagged_guy.tagged = false;
	tagged_guy.damage_counter = noone;}