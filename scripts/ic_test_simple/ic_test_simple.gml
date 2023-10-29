function ic_test_simple(){
	var printSpy = new IceCreamTestSpy();
	var stringifySpy = new IceCreamTestSpy(function(_) { return string(_); });
	var contextSpy = new IceCreamTestSpy(function(_) { return _ ? "CONTEXT: " : "CONTEXT" });
	var fixture = [];
	ic_prefix("ic| ");
	ic_printer(printSpy.call);
	ic_stringifier(stringifySpy.call);
	ic_context(contextSpy.call);
	
	#region When enabled
	ic_enabled(true);
	ic();
	assert_equal(printSpy.calls, ["ic| CONTEXT"], "ic() should print when enabled!");
	assert_equal(stringifySpy.calls, [], "ic() should not stringify when enabled!");
	assert_equal(contextSpy.calls, [false], "ic() should call context with false when enabled!");
	printSpy.clear();
	stringifySpy.clear();
	contextSpy.clear();
	assert_is(ic(fixture), fixture, "ic([]) should return val when enabled!");
	assert_equal(printSpy.calls, ["ic| CONTEXT: [  ]"], "ic([]) should print when enabled!");
	assert_equal(stringifySpy.calls, [[]], "ic([]) should stringify when enabled!");
	assert_equal(contextSpy.calls, [true], "ic([]) should call context with true when enabled!");
	printSpy.clear();
	stringifySpy.clear();
	contextSpy.clear();
	#endregion
	
	#region When disabled
	ic_enabled(false);
	ic();
	assert_equal(printSpy.calls, [], "ic() should not print when disabled!");
	assert_equal(stringifySpy.calls, [], "ic() should not stringify when disabled!");
	assert_equal(contextSpy.calls, [], "ic() should not call context when disabled!");
	printSpy.clear();
	stringifySpy.clear();
	contextSpy.clear();
	assert_is(ic(fixture), fixture, "ic([]) should still return val when disabled!");
	assert_equal(printSpy.calls, [], "ic([]) should not print when disabled!");
	assert_equal(stringifySpy.calls, [], "ic([]) should not stringify when disabled!");
	assert_equal(contextSpy.calls, [], "ic([]) should not call context when disabled!");
	printSpy.clear();
	stringifySpy.clear();
	contextSpy.clear();
	#endregion
	
	// Cleanup
	ic_reset();
}
