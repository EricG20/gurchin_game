/// @description gradient_set_color(gradientID, color, value);
/// @param gradientID
/// @param  color
/// @param  value
function gradient_set_color(argument0, argument1, argument2) {

	var gradientID = argument0;
	var gradientColor, gradientValue;

	if (is_array(global.gradientColorMap[? gradientID])){
	    gradientColor = global.gradientColorMap[? gradientID];
	    gradientValue = global.gradientColorValueMap[? gradientID];
    
	    var arraylength = array_length_1d(gradientColor);
	    gradientColor[arraylength] = argument1;
	    gradientValue[arraylength] = argument2;
	}else{
	    gradientColor[0] = argument1;
	    gradientValue[0] = argument2;
	}

	global.gradientColorMap[? gradientID] = gradientColor;
	global.gradientColorValueMap[? gradientID] = gradientValue; 



}
