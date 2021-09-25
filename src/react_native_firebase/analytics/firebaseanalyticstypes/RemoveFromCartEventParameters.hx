package react_native_firebase.analytics.firebaseanalyticstypes;

typedef RemoveFromCartEventParameters = {
	@:optional
	var items : Array<Item>;
	/**
		A context-specific numeric value which is accumulated automatically for each event type. Values
		can include revenue, distance, time and points. When a value is set, the accompanying `currency`
		parameter should also be defined.
	**/
	@:optional
	var value : Float;
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
		x
	**/
	@:optional
	var currency : String;
};