package react_native_firebase.analytics.firebaseanalyticstypes;

typedef AddToCartEventParameters = {
	@:optional
	var items : Array<Item>;
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
	**/
	@:optional
	var currency : String;
	/**
		value of item
	**/
	@:optional
	var value : Float;
};