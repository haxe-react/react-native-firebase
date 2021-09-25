package react_native_firebase.analytics.firebaseanalyticstypes;

typedef AddToWishlistEventParameters = {
	@:optional
	var items : Array<Item>;
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
	**/
	@:optional
	var currency : String;
	@:optional
	var value : Float;
};