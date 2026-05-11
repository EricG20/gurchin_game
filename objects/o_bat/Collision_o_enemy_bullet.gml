/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2D579851
/// @DnDArgument : "var" "anim"
/// @DnDArgument : "value" "stance.SHOT"
if(anim == stance.SHOT){	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6A994971
	/// @DnDParent : 2D579851
	/// @DnDArgument : "expr" "image_index >= 3 && image_index <= 5"
	if(image_index >= 3 && image_index <= 5){	/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 4BB077B7
		/// @DnDApplyTo : other
		/// @DnDParent : 6A994971
		/// @DnDArgument : "objind" "o_bullet"
		/// @DnDSaveInfo : "objind" "o_bullet"
		with(other) instance_change(o_bullet, true);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 037E07EC
		/// @DnDInput : 3
		/// @DnDParent : 6A994971
		/// @DnDArgument : "expr" "lengthdir_x(15*image_xscale, image_angle)"
		/// @DnDArgument : "expr_1" "lengthdir_y(15*image_xscale, image_index)"
		/// @DnDArgument : "expr_2" "s_ironbullet"
		/// @DnDArgument : "var" "other.hsp"
		/// @DnDArgument : "var_1" "other.vsp"
		/// @DnDArgument : "var_2" "other.sprite_index"
		other.hsp = lengthdir_x(15*image_xscale, image_angle);
		other.vsp = lengthdir_y(15*image_xscale, image_index);
		other.sprite_index = s_ironbullet;}}