/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 478921D6
/// @DnDArgument : "expr" "clamp(vsp, -30,30)"
/// @DnDArgument : "var" "vsp"
vsp = clamp(vsp, -30,30);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6BA2F39F
/// @DnDArgument : "expr" "on_ground"
/// @DnDArgument : "not" "1"
if(!(on_ground)){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33ACFA54
	/// @DnDParent : 6BA2F39F
	/// @DnDArgument : "expr" "0.6"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "vsp"
	vsp += 0.6;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3CC31418
/// @DnDInput : 2
/// @DnDArgument : "expr" "abs(hsp)"
/// @DnDArgument : "expr_1" "sign(hsp)"
/// @DnDArgument : "var" "rem_x"
/// @DnDArgument : "var_1" "step_x"
rem_x = abs(hsp);
step_x = sign(hsp);

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 766D71E0
/// @DnDArgument : "var" "rem_x"
/// @DnDArgument : "op" "2"
while ((rem_x > 0)) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 118DF466
	/// @DnDParent : 766D71E0
	/// @DnDArgument : "expr" "place_meeting(x + step_x, y, o_solid)"
	if(place_meeting(x + step_x, y, o_solid)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5F956558
		/// @DnDParent : 118DF466
		/// @DnDArgument : "expr" "-hsp * 0.5"
		/// @DnDArgument : "var" "hsp"
		hsp = -hsp * 0.5;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 3085F5D0
		/// @DnDParent : 118DF466
		break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 654FD813
	/// @DnDInput : 2
	/// @DnDParent : 766D71E0
	/// @DnDArgument : "expr" "step_x*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "rem_x"
	x += step_x*global.game_speed;
	rem_x += -1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 46749B09
/// @DnDInput : 2
/// @DnDArgument : "expr" "abs(vsp)"
/// @DnDArgument : "expr_1" "sign(vsp)"
/// @DnDArgument : "var" "rem_y"
/// @DnDArgument : "var_1" "step_y"
rem_y = abs(vsp);
step_y = sign(vsp);

/// @DnDAction : YoYo Games.Loops.While_Loop
/// @DnDVersion : 1
/// @DnDHash : 4E89AE58
/// @DnDArgument : "var" "rem_y"
/// @DnDArgument : "op" "2"
while ((rem_y > 0)) {
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 339BAE28
	/// @DnDParent : 4E89AE58
	/// @DnDArgument : "expr" "place_meeting(x, y+step_y, o_solid)"
	if(place_meeting(x, y+step_y, o_solid)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F76B1C8
		/// @DnDParent : 339BAE28
		/// @DnDArgument : "expr" "-vsp * 0.4"
		/// @DnDArgument : "var" "vsp"
		vsp = -vsp * 0.4;
	
		/// @DnDAction : YoYo Games.Loops.Break
		/// @DnDVersion : 1
		/// @DnDHash : 06B0A358
		/// @DnDParent : 339BAE28
		break;}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 115A47BB
	/// @DnDInput : 2
	/// @DnDParent : 4E89AE58
	/// @DnDArgument : "expr" "step_y*global.game_speed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "-1"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "y"
	/// @DnDArgument : "var_1" "rem_y"
	y += step_y*global.game_speed;
	rem_y += -1;
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 21856BEF
/// @DnDArgument : "expr" "spin"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "image_angle"
image_angle += spin;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 50E9683D
/// @DnDArgument : "code" "check_ground()"
check_ground()

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6BE73DA0
/// @DnDArgument : "expr" "on_ground"
if(on_ground){	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2062C281
	/// @DnDInput : 2
	/// @DnDParent : 6BE73DA0
	/// @DnDArgument : "expr" "hsp*0.7"
	/// @DnDArgument : "expr_1" "spin*0.7"
	/// @DnDArgument : "var" "hsp"
	/// @DnDArgument : "var_1" "spin"
	hsp = hsp*0.7;
	spin = spin*0.7;}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73F67366
/// @DnDArgument : "expr" "-1*global.game_speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "fuse"
fuse += -1*global.game_speed;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 0E0925B8
/// @DnDArgument : "expr" "fuse<=0"
if(fuse<=0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 2BAC16D2
	/// @DnDParent : 0E0925B8
	instance_destroy();}