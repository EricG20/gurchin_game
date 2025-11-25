/// @description gradient_free(gradientID);
/// @param gradientID
function gradient_free(argument0) {

	//If you don't use this gradient again, then make this gradiant ID free.


	var gradientID = argument0;
	ds_list_add(freeGradientList, gradientID);




}
