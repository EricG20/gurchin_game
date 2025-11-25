/// @description gradient_get_color(gradientID, value);
/// @param gradientID
/// @param  value
function gradient_get_color(argument0, argument1) {

	var gradientID = argument0;
	var gradientAllValue = argument1;
	var gradientColor, gradientValue;
	var color;

	if (is_array(global.gradientColorMap[? gradientID])){
	    gradientColor = global.gradientColorMap[? gradientID];
	    gradientValue = global.gradientColorValueMap[? gradientID];

	    var indexColor = -1;    
	    if (gradientAllValue == 0){
	        return gradientColor[0];
	    }else if (gradientAllValue == 1){
	        return gradientColor[array_length_1d(gradientColor)-1];
	    }
	    for(var p = 0; p < array_length_1d(gradientColor)-1; p++){
	        if (value_in_range(gradientAllValue, gradientValue[p], gradientValue[p+1])){
	            indexColor = p;
	            break;
	        }
	    }
	    var value = (gradientAllValue-gradientValue[indexColor])/(gradientValue[indexColor+1]-gradientValue[indexColor]);
	    color = merge_colour(gradientColor[indexColor], gradientColor[indexColor+1], value);
	}else{
	    show_debug_message("ERROR: GRADIENT COLOR NOT DEFINED! Object: " + string(object_get_name(object_index)));
	}

	return color;



}
