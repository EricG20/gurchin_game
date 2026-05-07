if (!VISystemExists(system)) exit;

// Simulate the system
//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
system.Simulate(global.game_speed);
if (master !=noone){
	x = (master.facing*-15)+master.facing*master.head_offset_x+master.x-(master.hsp*master.hair_weight);
	y = master.hair_height-30+master.head_offset_y+master.y-(master.vsp*2)-(sign(master.vsp)*master.squashstretch*20*master.hair_weight)-master.walk_bob_height;
	connector1.SetPosition(x+15*master.facing, y);
	connector2.SetPosition(x-2*master.facing, y);
}