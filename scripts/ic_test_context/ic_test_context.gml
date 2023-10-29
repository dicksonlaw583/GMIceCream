/* WARNING: This script is sensitive to line numbers --- add lines only at the end to avoid breaking tests! */
function ic_test_context(){
	// Detect support for stack trace context
	var stack = debug_get_callstack(1);
	if (array_length(stack) < 1) {
		show_debug_message("Stack trace not supported on this platform, skipping context tests.");
		exit;
	}
	var stackTop = stack[0];
	var supportSource = string_pos("ic_test_context", stackTop) > 0;
	var supportLineNumber = string_pos("4", stackTop) > 0;
	show_debug_message("Stack origin supported: " + (supportSource ? "YES" : "NO"));
	show_debug_message("Stack line number supported: " + (supportLineNumber ? "YES" : "NO"));
	
	// Setup
	var printSpy = new IceCreamTestSpy();
	ic_printer(printSpy.call);
	
	#region Line context
	ic_context(ICECREAM_CONTEXT_LINE);
	ic();
	if (supportSource) {
		assert_contains(printSpy.calls[0], "ic_test_context", "Line context should detect in-script context!");
	}
	if (supportLineNumber) {
		assert_contains(printSpy.calls[0], "21", "Line context should detect in-script line number!")
	}
	#endregion

	// Cleanup
	ic_reset();
}
