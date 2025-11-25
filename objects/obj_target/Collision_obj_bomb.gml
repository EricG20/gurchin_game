/// @description Insert description here
// You can write your code in this editor


instance_create_layer(other.x, other.y, layer, obj_explosion);

instance_destroy(other);
easy_cam_shake(obj_easy_cam, 10, 0.5);
