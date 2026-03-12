/// @description Update the simulation
// Switch scenes
if (keyboard_check_pressed(ord("X"))) {
	if (sceneId + 1 == VI_SCENE.ENUM_END) sceneId = -1;
	
	LoadScene(sceneId + 1);
}

// Make sure the system exists
if (!VISystemExists(system)) exit;

// Simulate the system
var delta = delta_time / 1000000 * game_get_speed(gamespeed_fps);
system.Simulate(delta);

// Pause the simulation
system.SetActive(!keyboard_check(vk_space));

// Spawn new destructor force fields in scene "BRIDGE"
if (sceneId == VI_SCENE.BRIDGE && mouse_check_button_pressed(mb_left)) {
	var destructor = new VIForcefieldDelete(mouse_x, mouse_y, 10);
	system.AddObject(destructor);
}
