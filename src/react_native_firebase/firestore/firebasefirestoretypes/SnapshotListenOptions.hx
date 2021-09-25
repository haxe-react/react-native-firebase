package react_native_firebase.firestore.firebasefirestoretypes;

/**
	An options object that can be passed to `DocumentReference.onSnapshot()`, `Query.onSnapshot()` and `QuerySnapshot.docChanges()`
	to control which types of changes to include in the result set.
**/
typedef SnapshotListenOptions = {
	/**
		Include a change even if only the metadata of the query or of a document changed. Default is false.
	**/
	var includeMetadataChanges : Bool;
};