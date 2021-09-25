package react_native_firebase.firestore.firebasefirestoretypes;

/**
	A DocumentChange represents a change to the documents matching a query. It contains the document affected and the
	type of change that occurred.
**/
typedef DocumentChange<T> = {
	/**
		The document affected by this change.
	**/
	var doc : QueryDocumentSnapshot<T>;
	/**
		The index of the changed document in the result set immediately after this `DocumentChange`
		(i.e. supposing that all prior `DocumentChange` objects and the current `DocumentChange` object have been applied).
		Is -1 for 'removed' events.
	**/
	var newIndex : Float;
	/**
		The index of the changed document in the result set immediately prior to this `DocumentChange` (i.e.
		supposing that all prior `DocumentChange` objects have been applied). Is -1 for 'added' events.
	**/
	var oldIndex : Float;
	/**
		The type of change ('added', 'modified', or 'removed').
	**/
	var type : DocumentChangeType;
};