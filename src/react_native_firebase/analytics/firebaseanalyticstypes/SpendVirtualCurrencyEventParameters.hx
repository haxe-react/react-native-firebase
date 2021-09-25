package react_native_firebase.analytics.firebaseanalyticstypes;

typedef SpendVirtualCurrencyEventParameters = {
	/**
		An item name.
	**/
	var item_name : String;
	/**
		Name of virtual currency type. E.g. `gems`.
	**/
	var virtual_currency_name : String;
	/**
		A context-specific numeric value which is accumulated automatically for each event type. Values
		can include revenue, distance, time and points. When a value is set, the accompanying `currency`
		parameter should also be defined.
	**/
	var value : Float;
};