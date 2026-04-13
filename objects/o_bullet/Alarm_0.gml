/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0CDBBD33
/// @DnDArgument : "expr" "instance_exists(o_net_client) || instance_exists(o_net_host)"
if(instance_exists(o_net_client) || instance_exists(o_net_host)){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
	/// @DnDVersion : 1
	/// @DnDHash : 307D8585
	/// @DnDParent : 0CDBBD33
	/// @DnDArgument : "obj" "sender"
	var l307D8585_0 = false;l307D8585_0 = instance_exists(sender);if(l307D8585_0){	/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3BC55A77
		/// @DnDParent : 307D8585
		/// @DnDArgument : "expr" "sender.control_type == cr.LOCAL"
		if(sender.control_type == cr.LOCAL){	/// @DnDAction : YoYo Games.Common.Function_Call
			/// @DnDVersion : 1
			/// @DnDHash : 366DE308
			/// @DnDInput : 2
			/// @DnDDisabled : 1
			/// @DnDParent : 3BC55A77
			/// @DnDArgument : "function" "send_bullet_packet"
			/// @DnDArgument : "arg" "sender.socket"
			/// @DnDArgument : "arg_1" "self"}}}