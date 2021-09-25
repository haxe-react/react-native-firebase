package react_native_firebase.firestore.firebasefirestoretypes;

/**
	The types for a DocumentSnapshot field that are supported by Firestore.
**/
typedef DocumentFieldType = Null<ts.AnyOf12<String, Float, Bool, Blob, FieldPath, { }, Array<DocumentFieldType>, Timestamp, GeoPoint, FieldValue, DocumentReference<DocumentData>, CollectionReference<DocumentData>>>;