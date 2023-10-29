///@func ic()
///@desc Print a debug message containing the current execution position and the given value(s).
///
///Return the first given value if provided.
function ic() {
	///Feather disable GM1019
	if (global.__ICECREAM_CONFIG__.enabled) {
		if (argument_count > 0) {
			for (var i = 0; i < argument_count; ++i) {
				global.__ICECREAM_CONFIG__.printer(global.__ICECREAM_CONFIG__.prefix + global.__ICECREAM_CONFIG__.context(true) + global.__ICECREAM_CONFIG__.stringifier(argument[0]));
			}
		}
		else {
			 global.__ICECREAM_CONFIG__.printer(global.__ICECREAM_CONFIG__.prefix + global.__ICECREAM_CONFIG__.context(false));
		}
	}
	if (argument_count > 0) {
		return argument[0];
	}
	///Feather enable GM1019
}
