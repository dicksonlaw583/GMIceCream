///Feather disable GM1064

///@func ICECREAM_CONTEXT_NONE([hasContent])
///@param {Bool} hasContent (Optional) Return whether any content has been provided
///@return {String}
///@desc Return an empty context.
function ICECREAM_CONTEXT_NONE(hasContent=false) {
	return "";
}

///@func ICECREAM_CONTEXT_LINE([hasContent])
///@param {Bool} hasContent (Optional) Return whether any content has been provided
///@return {String}
///@desc Return an empty context.
function ICECREAM_CONTEXT_LINE(hasContent=false) {
	var stack = debug_get_callstack(3);
	var sourceFound = array_length(stack) >= 3;
	return (sourceFound ? stack[2] : "") + ((sourceFound and hasContent) ? ": " : "");
}
