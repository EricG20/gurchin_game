if (!VISystemExists(system)) exit;

// Simulate the system
//var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
system.Simulate(global.game_speed);
if (master !=noone){
	x = master.facing*master.head_offset_x + master.x
	y = master.hair_height-30+master.head_offset_y+master.y-(master.vsp*2)-(sign(master.vsp)*master.squashstretch*20*master.hair_weight)-master.walk_bob_height;
	connector1.SetPosition(x-15, y);
	connector2.SetPosition(x-30, y);
	
//	var w = 2;
//	spacing = sprite_get_width(s_joules_circuitribbon)
	
//	new_x = x;
//	new_y = y;
	
//for (var i = 0; i < w; i++) {
//    var p = circuit1.GetPointByIndex(i);

//    var px = new_x + i * spacing;
//    var py = new_y;

//    p.position.current.x  = px;
//    p.position.current.y  = py;
//    p.position.previous.x = px;
//    p.position.previous.y = py;
//}

}