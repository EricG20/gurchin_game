/// @description Clear memory
// Delete surface
if (surface_exists(surface)) surface_free(surface);

// Delete particle system
if (part_system_exists(PS)) part_system_destroy(PS);

// Make sure the system exists
if (!VISystemExists(system)) exit;

system.Cleanup();
delete system;
