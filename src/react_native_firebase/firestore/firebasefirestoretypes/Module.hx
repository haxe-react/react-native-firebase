package react_native_firebase.firestore.firebasefirestoretypes;

/**
	The Firebase Cloud Firestore service is available for the default app or a given app.
	
	#### Example: Get the firestore instance for the **default app**:
	
	```js
	const firestoreForDefaultApp = firebase.firestore();
	```
	
	#### Example: Get the firestore instance for a **secondary app**:
	
	```js
	const otherApp = firebase.app('otherApp');
	const firestoreForOtherApp = firebase.firestore(otherApp);
	```
**/
@:jsRequire("@react-native-firebase/firestore", "FirebaseFirestoreTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Creates a write batch, used for performing multiple writes as a single atomic operation.
		The maximum number of writes allowed in a single WriteBatch is 500, but note that each usage
		of `FieldValue.serverTimestamp()`, `FieldValue.arrayUnion()`, `FieldValue.arrayRemove()`, or `FieldValue.increment()`
		inside a WriteBatch counts as an additional write.
		
		#### Example
		
		```js
		const batch = firebase.firestore().batch();
		batch.delete(...);
		```
	**/
	function batch():WriteBatch;
	/**
		Gets a `CollectionReference` instance that refers to the collection at the specified path.
		
		#### Example
		
		```js
		const collectionReference = firebase.firestore().collection('users');
		```
	**/
	function collection<T>(collectionPath:String):CollectionReference<T>;
	/**
		Creates and returns a new Query that includes all documents in the database that are contained
		in a collection or subcollection with the given collectionId.
		
		#### Example
		
		```js
		const collectionGroup = firebase.firestore().collectionGroup('orders');
		```
	**/
	function collectionGroup<T>(collectionId:String):Query<T>;
	/**
		Disables network usage for this instance. It can be re-enabled via `enableNetwork()`. While the
		network is disabled, any snapshot listeners or get() calls will return results from cache, and any
		write operations will be queued until the network is restored.
		
		Returns a promise that is resolved once the network has been disabled.
		
		#### Example
		
		```js
		await firebase.firestore().disableNetwork();
		```
	**/
	function disableNetwork():js.lib.Promise<ts.Undefined>;
	/**
		Gets a `DocumentReference` instance that refers to the document at the specified path.
		
		#### Example
		
		```js
		const documentReference = firebase.firestore().doc('users/alovelace');
		```
	**/
	function doc<T>(documentPath:String):DocumentReference<T>;
	/**
		Re-enables use of the network for this Firestore instance after a prior call to `disableNetwork()`.
		
		#### Example
		
		```js
		await firebase.firestore().enableNetwork();
		```
	**/
	function enableNetwork():js.lib.Promise<ts.Undefined>;
	/**
		Executes the given `updateFunction` and then attempts to commit the changes applied within the transaction.
		If any document read within the transaction has changed, Cloud Firestore retries the `updateFunction`.
		If it fails to commit after 5 attempts, the transaction fails.
		
		The maximum number of writes allowed in a single transaction is 500, but note that each usage of
		`FieldValue.serverTimestamp()`, `FieldValue.arrayUnion()`, `FieldValue.arrayRemove()`, or `FieldValue.increment()`
		inside a transaction counts as an additional write.
		
		#### Example
		
		```js
		const cityRef = firebase.firestore().doc('cities/SF');
		
		await firebase.firestore()
		   .runTransaction(async (transaction) => {
		     const snapshot = await transaction.get(cityRef);
		     await transaction.update(cityRef, {
		       population: snapshot.data().population + 1,
		     });
		   });
		```
	**/
	function runTransaction(updateFunction:(transaction:Transaction) -> js.lib.Promise<Dynamic>):js.lib.Promise<Dynamic>;
	/**
		Specifies custom settings to be used to configure the Firestore instance. Must be set before invoking any other methods.
		
		#### Example
		
		```js
		const settings = {
		   cacheSizeBytes: firebase.firestore.CACHE_SIZE_UNLIMITED,
		};
		
		await firebase.firestore().settings(settings);
		```
	**/
	function settings(settings:Settings):js.lib.Promise<ts.Undefined>;
	/**
		Aimed primarily at clearing up any data cached from running tests. Needs to be executed before any database calls
		are made.
		
		#### Example
		
		```js
		await firebase.firestore().clearPersistence();
		```
	**/
	function clearPersistence():js.lib.Promise<ts.Undefined>;
	/**
		Waits until all currently pending writes for the active user have been acknowledged by the
		backend.
		
		The returned Promise resolves immediately if there are no outstanding writes. Otherwise, the
		Promise waits for all previously issued writes (including those written in a previous app
		session), but it does not wait for writes that were added after the method is called. If you
		want to wait for additional writes, call `waitForPendingWrites()` again.
		
		Any outstanding `waitForPendingWrites()` Promises are rejected when the logged-in user changes.
		
		#### Example
		
		```js
		await firebase.firestore().waitForPendingWrites();
		```
	**/
	function waitForPendingWrites():js.lib.Promise<ts.Undefined>;
	/**
		Typically called to ensure a new Firestore instance is initialized before calling
		`firebase.firestore().clearPersistence()`.
		
		#### Example
		
		```js
		await firebase.firestore().terminate();
		```
	**/
	function terminate():js.lib.Promise<ts.Undefined>;
	/**
		Modify this Firestore instance to communicate with the Firebase Firestore emulator.
		This must be called before any other calls to Firebase Firestore to take effect.
		Do not use with production credentials as emulator traffic is not encrypted.
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address.
	**/
	function useEmulator(host:String, port:Float):Void;
	static var prototype : Module;
}