/// @description  gradient_create()
function gradient_create() {

	//if you want create a greadient, then call this function.

	var gradientID = ds_map_size(global.gradientColorMap);

	if (ds_list_size(freeGradientList) > 0){
	    gradientID = ds_list_find_value(freeGradientList, 0);
	    ds_list_delete(freeGradientList, 0);
	}

	global.gradientColorMap[? gradientID] = noone;
	global.gradientAlphaMap[? gradientID] = noone;
	global.gradientColorValueMap[? gradientID] = noone;
	global.gradientAlphaValueMap[? gradientID] = noone;
	return gradientID; 



}
