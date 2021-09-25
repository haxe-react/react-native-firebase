package react_native_firebase.firestore.firebasefirestoretypes;

/**
	Metadata about a snapshot, describing the state of the snapshot.
**/
typedef SnapshotMetadata = {
	/**
		True if the snapshot includes local writes (`set()` or `update()` calls) that haven't been committed to the backend yet.
		If your listener has opted into metadata updates (via `SnapshotListenOptions`) you will receive another snapshot with
		`fromCache` equal to false once the client has received up-to-date data from the backend.
	**/
	var fromCache : Bool;
	/**
		True if the snapshot contains the result of local writes (e.g. `set()` or `update()` calls) that have not yet been
		committed to the backend. If your listener has opted into metadata updates (via `SnapshotListenOptions`) you will
		receive another snapshot with `hasPendingWrites` equal to false once the writes have been committed to the backend.
	**/
	var hasPendingWrites : Bool;
	/**
		Returns true if this `SnapshotMetadata` is equal to the provided one.
	**/
	function isEqual(other:SnapshotMetadata):Bool;
};