package react_native_firebase.analytics.firebaseanalyticstypes;

typedef BeginCheckoutEventParameters = {
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
	**/
	@:optional
	var currency : String;
	@:optional
	var value : Float;
	/**
		Coupon code for a purchasable item.
	**/
	@:optional
	var coupon : String;
	@:optional
	var items : Array<Item>;
};