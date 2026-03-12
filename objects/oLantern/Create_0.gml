/// @description Initialize particle type
partFlame = part_type_create();
part_type_shape(partFlame, pt_shape_flare);
part_type_size(partFlame, 0.01, 0.15, 0, 0);
part_type_scale(partFlame, 1, 1);
part_type_speed(partFlame, 0, 0.05, 0, 0);
part_type_direction(partFlame, 0, 180, 0, 7);
part_type_gravity(partFlame, 0.015, 90);
part_type_orientation(partFlame, 0, 0, 0, 0, false);
part_type_colour3(partFlame, $4B99D1, $3E79BC, $304CA8);
part_type_alpha3(partFlame, 1, 1, 0);
part_type_blend(partFlame, true);
part_type_life(partFlame, 10, 60);
