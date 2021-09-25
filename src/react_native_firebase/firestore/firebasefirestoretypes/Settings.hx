package react_native_firebase.firestore.firebasefirestoretypes;

/**
	Specifies custom configurations for your Cloud Firestore instance. You must set these before invoking any other methods.
	
	Used with `firebase.firestore().settings()`.
**/
typedef Settings = {
	/**
		Enables or disables local persistent storage.
	**/
	@:optional
	var persistence : Bool;
	/**
		An approximate cache size threshold for the on-disk data. If the cache grows beyond this size, Firestore will start
		removing data that hasn't been recently used. The size is not a guarantee that the cache will stay below that size,
		only that if the cache exceeds the given size, cleanup will be attempted.
		
		To disable garbage collection and set an unlimited cache size, use `firebase.firestore.CACHE_SIZE_UNLIMITED`.
	**/
	@:optional
	var cacheSizeBytes : Float;
	/**
		The hostname to connect to.
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address. Use of this property for emulator connection is deprecated. Use useEmulator instead
	**/
	@:optional
	var host : String;
	/**
		Whether to use SSL when connecting. A true value is incompatible with the firestore emulator.
	**/
	@:optional
	var ssl : Bool;
	/**
		Whether to skip nested properties that are set to undefined during object serialization.
		If set to true, these properties are skipped and not written to Firestore.
		If set to false or omitted, the SDK throws an exception when it encounters properties of type undefined.
	**/
	@:optional
	var ignoreUndefinedProperties : Bool;
	/**
		If set, controls the return value for server timestamps that have not yet been set to their final value.
		
		By specifying 'estimate', pending server timestamps return an estimate based on the local clock.
		This estimate will differ from the final value and cause these values to change once the server result becomes available.
		
		By specifying 'previous', pending timestamps will be ignored and return their previous value instead.
		
		If omitted or set to 'none', null will be returned by default until the server value becomes available.
	**/
	@:optional
	var serverTimestampBehavior : String;
};