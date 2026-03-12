/// @description Spawn particles
if (!part_system_exists(oExample.PS)) exit;
if (random(1) > .4) part_particles_create(oExample.PS, x + lengthdir_x(5, image_angle), y + lengthdir_y(5, image_angle), partFlame, 1);
