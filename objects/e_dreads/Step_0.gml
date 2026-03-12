/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 70FEC8B3
/// @DnDArgument : "code" "if (!VISystemExists(system)) exit;$(13_10)$(13_10)// Simulate the system$(13_10)//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);$(13_10)system.Simulate(global.game_speed);$(13_10)if (master !=noone){$(13_10)	x = (master.facing*-15)+master.facing*master.head_offset_x+master.x-(master.hsp*master.hair_weight);$(13_10)	y = master.hair_height-30+master.head_offset_y+master.y-(master.vsp*2)-(sign(master.vsp)*master.squashstretch*20*master.hair_weight)-master.walk_bob_height;$(13_10)	connector1.SetPosition(x-15, y);$(13_10)	connector2.SetPosition(x-9, y);$(13_10)	connector3.SetPosition(x-3, y);$(13_10)	connector4.SetPosition(x+3, y);$(13_10)	connector5.SetPosition(x+9, y);$(13_10)	connector6.SetPosition(x+15, y);$(13_10)}$(13_10)"
if (!VISystemExists(system)) exit;

// Simulate the system
//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
system.Simulate(global.game_speed);
if (master !=noone){
	x = (master.facing*-15)+master.facing*master.head_offset_x+master.x-(master.hsp*master.hair_weight);
	y = master.hair_height-30+master.head_offset_y+master.y-(master.vsp*2)-(sign(master.vsp)*master.squashstretch*20*master.hair_weight)-master.walk_bob_height;
	connector1.SetPosition(x-15, y);
	connector2.SetPosition(x-9, y);
	connector3.SetPosition(x-3, y);
	connector4.SetPosition(x+3, y);
	connector5.SetPosition(x+9, y);
	connector6.SetPosition(x+15, y);
}