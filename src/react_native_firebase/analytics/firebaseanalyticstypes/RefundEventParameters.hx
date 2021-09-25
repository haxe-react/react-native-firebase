package react_native_firebase.analytics.firebaseanalyticstypes;

typedef RefundEventParameters = {
	/**
		A product affiliation to designate a supplying company or brick and mortar store location
	**/
	@:optional
	var affiliation : String;
	/**
		Coupon code for a purchasable item.
	**/
	@:optional
	var coupon : String;
	/**
		Purchase currency in 3 letter [ISO_4217](https://en.wikipedia.org/wiki/ISO_4217#Active_codes) format. E.g. `USD`.
	**/
	@:optional
	var currency : String;
	@:optional
	var items : Array<Item>;
	/**
		Shipping cost.
	**/
	@:optional
	var shipping : Float;
	/**
		Tax amount.
	**/
	@:optional
	var tax : Float;
	/**
		A context-specific numeric value which is accumulated automatically for each event type. Values
		can include revenue, distance, time and points. When a value is set, the accompanying `currency`
		parameter should also be defined.
	**/
	@:optional
	var value : Float;
	/**
		A single ID for a ecommerce group transaction.
	**/
	@:optional
	var transaction_id : String;
};