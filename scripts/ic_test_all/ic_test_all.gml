///@func ic_test_all()
function ic_test_all() {
	global.__test_fails__ = 0;
	var timeA, timeB;
	timeA = current_time;
	
	/* v Tests here v */
	ic_test_simple();
	ic_test_context();
	/* ^ Tests here ^ */
	
	timeB = current_time;
	show_debug_message("GMIceCream tests done in " + string(timeB-timeA) + "ms.");
	return global.__test_fails__ == 0;
}
