///@class IceCreamTestSpy([process])
///@param {Function} process A method processing the caught input. (Default: Idempotence function)
///@desc A "spy" class containing a method tracking calls to it.
function IceCreamTestSpy(process=function(_){return _;}) constructor {
	#region Constructor
	self.calls = [];
	self.process = process;
	#endregion
	
	///@func call(arg)
	///@desc The main spy method. Calls to this will be tracked.
	call = function(arg) {
		array_push(calls, arg);
		return process(arg);
	};
	
	///@func clear()
	///@desc Clear the tracked calls.
	static clear = function() {
		calls = [];
	};
}
