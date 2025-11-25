/// @description gradient_get_color(gradientID, value);
/// @param gradientID
/// @param  value
function gradient_get_alpha(argument0, argument1) {

	var gradientID = argument0;
	var gradientAllValue = argument1;
	var gradientAlpha, gradientValue;
	var alpha;

	if (is_array(global.gradientAlphaMap[? gradientID])){
	    gradientAlpha = global.gradientAlphaMap[? gradientID];
	    gradientValue = global.gradientAlphaValueMap[? gradientID];

	    var indexAlpha = -1;    
	    if (gradientAllValue == 0){
	        return gradientAlpha[0];
	    }else if (gradientAllValue == 1){
	        return gradientAlpha[array_length_1d(gradientAlpha)-1];
	    }
	    for(var p = 0; p < array_length_1d(gradientAlpha)-1; p++){
	        if (value_in_range(gradientAllValue, gradientValue[p], gradientValue[p+1])){
	            indexAlpha = p;
	            break;
	        }
	    }
	    var value = (gradientAllValue-gradientValue[indexAlpha])/(gradientValue[indexAlpha+1]-gradientValue[indexAlpha]);
	    alpha = lerp(gradientAlpha[indexAlpha], gradientAlpha[indexAlpha+1], value);
    
	}else{
	    show_debug_message("ERROR: GRADIENT ALPHA NOT DEFINED! Object: " + string(object_get_name(object_index)));
	}

	return alpha;



}
