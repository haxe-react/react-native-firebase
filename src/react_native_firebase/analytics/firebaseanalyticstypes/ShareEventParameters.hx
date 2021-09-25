package react_native_firebase.analytics.firebaseanalyticstypes;

typedef ShareEventParameters = {
	/**
		Type of content selected.
	**/
	var content_type : String;
	/**
		An item ID.
	**/
	var item_id : String;
	/**
		A particular approach used in an operation; for example, "facebook" or "email" in the context of a sign_up or login event.
	**/
	var method : String;
};