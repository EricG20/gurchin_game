/// @description Insert description here
// You can write your code in this editor

life--;
if(life <= 0){
	instance_destroy(self);
} else {
	image_xscale += scale_add;
	image_yscale += scale_add;	
}
