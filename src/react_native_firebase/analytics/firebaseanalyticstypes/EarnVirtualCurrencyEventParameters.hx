package react_native_firebase.analytics.firebaseanalyticstypes;

typedef EarnVirtualCurrencyEventParameters = {
	/**
		Name of virtual currency type. E.g. `gems`.
	**/
	var virtual_currency_name : String;
	/**
		A context-specific numeric value which is accumulated automatically for each event type. Values
		can include revenue, distance, time and points.
	**/
	var value : Float;
};