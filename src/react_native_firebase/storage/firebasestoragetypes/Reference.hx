package react_native_firebase.storage.firebasestoragetypes;

/**
	Represents a reference to a Google Cloud Storage object in React Native Firebase.
	
	A reference can be used to upload and download storage objects, get/set storage object metadata, retrieve storage object download urls and delete storage objects.
	
	#### Example 1
	
	Get a reference to a specific storage path.
	
	```js
	const ref = firebase.storage().ref('invertase/logo.png');
	```
	
	#### Example 2
	
	Get a reference to a specific storage path on another bucket in the same firebase project.
	
	```js
	const ref = firebase.storage().refFromURL('gs://other-bucket/invertase/logo.png');
	```
**/
typedef Reference = {
	/**
		The name of the bucket containing this reference's object.
	**/
	var bucket : String;
	/**
		A reference pointing to the parent location of this reference, or null if this reference is the root.
	**/
	var parent : Null<Reference>;
	/**
		The full path of this object.
	**/
	var fullPath : String;
	/**
		The short name of this object, which is the last component of the full path. For example,
		if fullPath is 'full/path/image.png', name is 'image.png'.
	**/
	var name : String;
	/**
		A reference to the root of this reference's bucket.
	**/
	var root : Reference;
	/**
		The storage service associated with this reference.
	**/
	var storage : Module;
	/**
		Returns a gs:// URL for this object in the form `gs://<bucket>/<path>/<to>/<object>`.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/logo.png');
		console.log('Full path: ', ref.toString()); // gs://invertase.io/invertase/logo.png
		```
	**/
	function toString():String;
	/**
		Returns a reference to a relative path from this reference.
		
		#### Example
		
		```js
		const parent = firebase.storage().ref('invertase');
		const ref = parent.child('logo.png');
		```
	**/
	function child(path:String):Reference;
	/**
		Deletes the object at this reference's location.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/logo.png');
		await ref.delete();
		```
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	/**
		Fetches a long lived download URL for this object.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/logo.png');
		const url = await ref.getDownloadURL();
		```
	**/
	function getDownloadURL():js.lib.Promise<String>;
	/**
		Fetches metadata for the object at this location, if one exists.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/logo.png');
		const metadata = await ref.getMetadata();
		console.log('Cache control: ', metadata.cacheControl);
		```
	**/
	function getMetadata():js.lib.Promise<FullMetadata>;
	/**
		List items (files) and prefixes (folders) under this storage reference.
		
		List API is only available for Firebase Rules Version 2.
		
		GCS is a key-blob store. Firebase Storage imposes the semantic of '/' delimited folder structure.
		Refer to GCS's List API if you want to learn more.
		
		To adhere to Firebase Rules's Semantics, Firebase Storage does not support objects whose paths
		end with "/" or contain two consecutive "/"s. Firebase Storage List API will filter these unsupported objects.
		list() may fail if there are too many unsupported objects in the bucket.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('/');
		const results = await ref.list({
		   maxResults: 30,
		});
		```
	**/
	function list(?options:ListOptions):js.lib.Promise<ListResult>;
	/**
		List all items (files) and prefixes (folders) under this storage reference.
		
		This is a helper method for calling list() repeatedly until there are no more results. The default pagination size is 1000.
		
		Note: The results may not be consistent if objects are changed while this operation is running.
		
		Warning: `listAll` may potentially consume too many resources if there are too many results.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('/');
		const results = await ref.listAll();
		```
	**/
	function listAll():js.lib.Promise<ListResult>;
	/**
		Puts a file from local disk onto the storage bucket.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/new-logo.png');
		const path = `${firebase.utils.FilePath.DOCUMENT_DIRECTORY}/new-logo.png`;
		const task = ref.putFile(path, {
		   cacheControl: 'no-store', // disable caching
		});
		```
	**/
	function putFile(localFilePath:String, ?metadata:SettableMetadata):Task;
	/**
		Downloads a file to the specified local file path on the device.
		
		#### Example
		
		Get a Download Storage task to download a file:
		
		```js
		const downloadTo = `${firebase.utils.FilePath.DOCUMENT_DIRECTORY}/foobar.json`;
		
		const task = firebase.storage().ref('/foo/bar.json').writeToFile(downloadTo);
		```
	**/
	function writeToFile(localFilePath:String):Task;
	/**
		Puts data onto the storage bucket.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/new-logo.png');
		const task = ref.put(BLOB, {
		   cacheControl: 'no-store', // disable caching
		});
		```
	**/
	function put(data:ts.AnyOf3<js.html.Blob, js.lib.Uint8Array, js.lib.ArrayBuffer>, ?metadata:SettableMetadata):Task;
	/**
		Puts a string on the storage bucket. Depending on the string type, set a {@link storage.StringFormat} type.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/new-logo.png');
		const task = ref.putString('PEZvbyBCYXI+', firebase.storage.StringFormat.BASE64, {
		   cacheControl: 'no-store', // disable caching
		});
		```
	**/
	function putString(data:String, ?format:String, ?metadata:SettableMetadata):Task;
	/**
		Updates the metadata for this reference object on the storage bucket.
		
		#### Example
		
		```js
		const ref = firebase.storage().ref('invertase/nsfw-logo.png');
		const updatedMetadata = await ref.updateMetadata({
		   customMetadata: {
		     'nsfw': 'true',
		   }
		});
		```
	**/
	function updateMetadata(metadata:SettableMetadata):js.lib.Promise<FullMetadata>;
};