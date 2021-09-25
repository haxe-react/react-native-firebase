package react_native_firebase.firestore.firebasefirestoretypes;

/**
	An immutable object representing a geo point in Firestore. The geo point is represented as latitude/longitude pair.
	
	Latitude values are in the range of [-90, 90]. Longitude values are in the range of [-180, 180].
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.GeoPoint") extern class GeoPoint {
	/**
		Creates a new immutable GeoPoint object with the provided latitude and longitude values.
		
		#### Example
		
		```js
		const geoPoint = new firebase.firestore.GeoPoint(60, -40);
		```
	**/
	function new(latitude:Float, longitude:Float);
	/**
		The latitude of this `GeoPoint` instance.
	**/
	var latitude : Float;
	/**
		The longitude of this `GeoPoint` instance.
	**/
	var longitude : Float;
	/**
		Returns true if this `GeoPoint` is equal to the provided one.
		
		#### Example
		
		```js
		const geoPoint1 = new firebase.firestore.GeoPoint(60, -40);
		const geoPoint2 = new firebase.firestore.GeoPoint(60, -20);
		
		// false
		geoPoint1.isEqual(geoPoint2);
		```
	**/
	function isEqual(other:GeoPoint):Bool;
	static var prototype : GeoPoint;
}