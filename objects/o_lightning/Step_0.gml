/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2C7E6C87
/// @DnDArgument : "var" "accounted_for"
/// @DnDArgument : "value" "false"
if(accounted_for == false){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 36BEA84D
	/// @DnDParent : 2C7E6C87
	/// @DnDArgument : "var" "target"
	/// @DnDArgument : "not" "1"
	/// @DnDArgument : "value" "noone"
	if(!(target == noone)){	/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
		/// @DnDVersion : 1
		/// @DnDHash : 7BD3910A
		/// @DnDParent : 36BEA84D
		/// @DnDArgument : "obj" "target"
		var l7BD3910A_0 = false;l7BD3910A_0 = instance_exists(target);if(l7BD3910A_0){	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 50EF127A
			/// @DnDInput : 2
			/// @DnDParent : 7BD3910A
			/// @DnDArgument : "value" "point_distance(x,y,target.x,target.y)/120"
			/// @DnDArgument : "value_1" "point_direction(x,y,target.x,target.y-30)"
			/// @DnDArgument : "instvar" "15"
			/// @DnDArgument : "instvar_1" "2"
			image_xscale = point_distance(x,y,target.x,target.y)/120;
			direction = point_direction(x,y,target.x,target.y-30);}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1EBAC073
		/// @DnDParent : 36BEA84D
		else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
			/// @DnDVersion : 1
			/// @DnDHash : 34AE366A
			/// @DnDInput : 2
			/// @DnDParent : 1EBAC073
			/// @DnDArgument : "value" "random_range(1,5)"
			/// @DnDArgument : "value_1" "random_range(0,360)"
			/// @DnDArgument : "instvar" "15"
			/// @DnDArgument : "instvar_1" "2"
			image_xscale = random_range(1,5);
			direction = random_range(0,360);}}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 15C6D176
	/// @DnDParent : 2C7E6C87
	else{	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
		/// @DnDVersion : 1
		/// @DnDHash : 664E06F6
		/// @DnDInput : 2
		/// @DnDParent : 15C6D176
		/// @DnDArgument : "value" "random_range(1,5)"
		/// @DnDArgument : "value_1" "random_range(0,360)"
		/// @DnDArgument : "instvar" "15"
		/// @DnDArgument : "instvar_1" "2"
		image_xscale = random_range(1,5);
		direction = random_range(0,360);}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4A0EC668
	/// @DnDParent : 2C7E6C87
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "accounted_for"
	accounted_for = true;

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 5986B384
	/// @DnDParent : 2C7E6C87
	/// @DnDArgument : "value" "direction"
	/// @DnDArgument : "instvar" "12"
	image_angle = direction;}