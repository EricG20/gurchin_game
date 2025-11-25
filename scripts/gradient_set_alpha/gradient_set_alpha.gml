/// @description gradient_set_alpha(gradientID, alpha, value);
/// @param gradientID
/// @param  alpha
/// @param  value
function gradient_set_alpha(argument0, argument1, argument2) {

	var gradientID = argument0;
	var gradientAlpha, gradientValue;

	if (is_array(global.gradientColorMap[? gradientID])){
	    gradientAlpha = global.gradientAlphaMap[? gradientID];
	    gradientValue = global.gradientAlphaValueMap[? gradientID];
    
	    var arraylength = array_length_1d(gradientAlpha);
	    gradientAlpha[arraylength] = argument1;
	    gradientValue[arraylength] = argument2;
	}else{
	    gradientAlpha[0] = argument1;
	    gradientValue[0] = argument2;
	}

	global.gradientAlphaMap[? gradientID] = gradientAlpha;
	global.gradientAlphaValueMap[? gradientID] = gradientValue; 



}
