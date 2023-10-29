/*
  Whether GMIceCream is enabled by default.
  When disabled, no debug messages are printed.
*/
#macro __ICECREAM_DEFAULT_ENABLED__ true

/*
  The default prefix to use when printing messages.
  This must be a string literal --- use ic_prefix to change it dynamically.
*/
#macro __ICECREAM_DEFAULT_PREFIX__ "ic| "

/*
  The default printing function to use.
*/
#macro __ICECREAM_DEFAULT_PRINTER__ show_debug_message

/*
  The default function to use for string conversion.
  - string: Print values using standard string conversion.
  - json_stringify: Print values using JSON notation.
  If you use GMAssert 2, you can also use __gma_debug_value__ here.
*/
#macro __ICECREAM_DEFAULT_STRINGIFIER__ string

/*
  The level of detail for context.
  - ICECREAM_CONTEXT_NONE: No context, print just the value.
  - ICECREAM_CONTEXT_LINE: Print the source and line number, and the value.
*/
#macro __ICECREAM_DEFAULT_CONTEXT__ ICECREAM_CONTEXT_LINE
