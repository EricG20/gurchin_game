/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 6BC019A2
/// @DnDArgument : "expr" "!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)"
if(!(o_game.in_wave) && (o_game.pylon_wave_number%3 = 0)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C6A45FB
	/// @DnDParent : 6BC019A2
	/// @DnDArgument : "var" "floor(o_game.pylon_incr)%400"
	if(floor(o_game.pylon_incr)%400 == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 70601913
		/// @DnDParent : 0C6A45FB
		/// @DnDArgument : "expr" "clamp(hp+1, 0, 40)"
		/// @DnDArgument : "var" "hp"
		hp = clamp(hp+1, 0, 40);}}