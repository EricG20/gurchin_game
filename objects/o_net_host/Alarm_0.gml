/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7523D7DD
/// @DnDArgument : "code" "var dude = noone;$(13_10)	with(o_player){$(13_10)		if (player_id == other.stu_id){$(13_10)			dude = id;$(13_10)		}$(13_10)	}$(13_10)	if (dude != noone) send_player_appearance(port, dude.character_index, dude.suit_color, dude.haircut, dude.player_id); $(13_10)"
var dude = noone;
	with(o_player){
		if (player_id == other.stu_id){
			dude = id;
		}
	}
	if (dude != noone) send_player_appearance(port, dude.character_index, dude.suit_color, dude.haircut, dude.player_id);