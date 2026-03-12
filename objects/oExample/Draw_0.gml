/// @description Draw the simulation
// Pixelated drawing
if (!surface_exists(surface)) surface = surface_create(room_width, room_height);
surface_set_target(surface);
draw_clear_alpha(c_black, 0);

// Draw deco objects
with (oDecoration2) draw_self();

// Make sure the system exists
if (VISystemExists(system)) {
	// Draw all objects of the system
	system.Draw(false);
	if (keyboard_check(ord("C"))) system.Draw(true);
}

// Draw deco objects
with (oDecoration) draw_self();

// Draw particles
if (part_system_exists(PS)) part_system_drawit(PS);

surface_reset_target();
draw_surface(surface, 0, 0);

// Initialize sprite colliders
// You should integrate this so its just called once!
if (sceneId == VI_SCENE.SANDBOX) {
	if (!spriteCollider1.initialized) spriteCollider1.Initialize();
	if (!spriteCollider2.initialized) spriteCollider2.Initialize();
}
