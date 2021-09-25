package react_native_firebase.storage.firebasestoragetypes;

/**
	Result returned by `list()`.
**/
typedef ListResult = {
	/**
		Objects in this directory. You can call `getMetadata()` and `getDownloadUrl()` on them.
	**/
	var items : Array<Reference>;
	/**
		If set, there might be more results for this list. Use this token to resume the list.
	**/
	var nextPageToken : Null<String>;
	/**
		References to prefixes (sub-folders). You can call `list()` on them to get its contents.
		
		Folders are implicit based on '/' in the object paths. For example, if a bucket has two objects '/a/b/1' and '/a/b/2', list('/a') will return '/a/b' as a prefix.
	**/
	var prefixes : Array<Reference>;
};