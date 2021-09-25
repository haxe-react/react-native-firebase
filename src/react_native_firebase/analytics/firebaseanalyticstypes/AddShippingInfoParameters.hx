package react_native_firebase.analytics.firebaseanalyticstypes;

typedef AddShippingInfoParameters = {
	@:optional
	var items : Array<Item>;
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
	**/
	@:optional
	var currency : String;
	/**
		A context-specific numeric value which is accumulated automatically for each event type. Values
		can include revenue, distance, time and points. When a value is set, the accompanying `currency`
		parameter should also be defined.
	**/
	@:optional
	var value : Float;
	/**
		Coupon code for a purchasable item.
	**/
	@:optional
	var coupon : String;
	/**
		The shipping tier (e.g. Ground, Air, Next-day) selected for delivery of the purchased item
	**/
	@:optional
	var shipping_tier : String;
};