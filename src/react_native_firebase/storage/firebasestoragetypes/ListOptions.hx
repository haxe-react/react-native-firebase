package react_native_firebase.storage.firebasestoragetypes;

/**
	The options `list()` accepts.
**/
typedef ListOptions = {
	/**
		If set, limits the total number of `prefixes` and `items` to return. The default and maximum maxResults is 1000.
	**/
	@:optional
	var maxResults : Float;
	/**
		The `nextPageToken` from a previous call to `list()`. If provided, listing is resumed from the previous position.
	**/
	@:optional
	var pageToken : String;
};