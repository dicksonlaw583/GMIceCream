/*
  Set up default configs.
*/

///@func ic_reset()
///@desc Reset all GMIceCream settings back to the defaults provided in global.__ICECREAM_CONFIGS__.
function ic_reset() {
	global.__ICECREAM_CONFIG__ = {
		enabled: __ICECREAM_DEFAULT_ENABLED__,
		prefix: __ICECREAM_DEFAULT_PREFIX__,
		printer: __ICECREAM_DEFAULT_PRINTER__,
		stringifier: __ICECREAM_DEFAULT_STRINGIFIER__,
		context: __ICECREAM_DEFAULT_CONTEXT__,
	};
}
ic_reset(); // Run it by default

///@func ic_enabled([enabled])
///@param {Bool} enabled 
///@return {Bool}
///@desc Set or get whether GMIceCream is enabled.
function ic_enabled(enabled=global.__ICECREAM_CONFIG__.enabled) {
	global.__ICECREAM_CONFIG__.enabled = enabled;
	return enabled;
}

///@func ic_prefix(prefix)
///@param {String} prefix 
///@return {String}
///@desc Set or get the prefix for GMIceCream debug messages.
function ic_prefix(prefix=global.__ICECREAM_CONFIG__.prefix) {
	global.__ICECREAM_CONFIG__.prefix = prefix;
	return prefix;
}

///@func ic_printer(printer)
///@param {Function} printer 
///@return {Function}
///@desc Set or get the function GMIceCream uses for printing messages.
function ic_printer(printer=global.__ICECREAM_CONFIG__.printer) {
	global.__ICECREAM_CONFIG__.printer = printer;
	return printer;
}

///@func ic_stringifier(stringifier)
///@param {Function} stringifier 
///@return {Function}
///@desc Set or get the function GMIceCream uses to turn its given values into strings.
function ic_stringifier(stringifier=global.__ICECREAM_CONFIG__.stringifier) {
	global.__ICECREAM_CONFIG__.stringifier = stringifier;
	return stringifier;
}

///@func ic_context(context)
///@param {Function} context 
///@return {Function}
///@desc Set or get the current GMIceCream context function.
function ic_context(context=global.__ICECREAM_CONFIG__.context) {
	global.__ICECREAM_CONFIG__.context = context;
	return context;
}
