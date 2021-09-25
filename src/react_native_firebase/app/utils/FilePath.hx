package react_native_firebase.app.utils;

/**
	A collection of native device file paths to aid in the usage of file path based methods.
	
	Concatenate a file path with your target file name when using with Storage `putFile` or `writeToFile`.
	
	```js
	firebase.utils.FilePath;
	```
**/
typedef FilePath = {
	/**
		Returns an absolute path to the applications main bundle.
		
		```js
		firebase.utils.FilePath.MAIN_BUNDLE;
		```
	**/
	var MAIN_BUNDLE : String;
	/**
		Returns an absolute path to the application specific cache directory on the filesystem.
		
		The system will automatically delete files in this directory when disk space is needed elsewhere on the device, starting with the oldest files first.
		
		```js
		firebase.utils.FilePath.CACHES_DIRECTORY;
		```
	**/
	var CACHES_DIRECTORY : String;
	/**
		Returns an absolute path to the users Documents directory.
		
		Use this directory to place documents that have been created by the user.
		
		Normally this is the external files directory on Android but if no external storage directory found,
		e.g. removable media has been ejected by the user, it will fall back to internal storage. This may
		under rare circumstances where device storage environment changes cause the directory to be different
		between runs of the application
		
		```js
		firebase.utils.FilePath.DOCUMENT_DIRECTORY;
		```
	**/
	var DOCUMENT_DIRECTORY : String;
	/**
		Returns an absolute path to a temporary directory.
		
		Use this directory to create temporary files. The system will automatically delete files in this directory when disk space is needed elsewhere on the device, starting with the oldest files first.
		
		```js
		firebase.utils.FilePath.TEMP_DIRECTORY;
		```
	**/
	var TEMP_DIRECTORY : String;
	/**
		Returns an absolute path to the apps library/resources directory.
		
		E.g. this can be used for things like documentation, support files, and configuration files and generic resources.
		
		```js
		firebase.utils.FilePath.LIBRARY_DIRECTORY;
		```
	**/
	var LIBRARY_DIRECTORY : String;
	/**
		Returns an absolute path to the directory on the primary shared/external storage device.
		
		Here your application can place persistent files it owns. These files are internal to the application, and not typically visible to the user as media.
		
		Returns null if no external storage directory found, e.g. removable media has been ejected by the user.
		
		```js
		firebase.utils.FilePath.EXTERNAL_DIRECTORY;
		```
	**/
	var EXTERNAL_DIRECTORY : Null<String>;
	/**
		Returns an absolute path to the primary shared/external storage directory.
		
		Traditionally this is an SD card, but it may also be implemented as built-in storage on a device.
		
		Returns null if no external storage directory found, e.g. removable media has been ejected by the user.
		Requires special permission granted by Play Store review team on Android, is unlikely to be a valid path.
		
		```js
		firebase.utils.FilePath.EXTERNAL_STORAGE_DIRECTORY;
		```
	**/
	var EXTERNAL_STORAGE_DIRECTORY : Null<String>;
	/**
		Returns an absolute path to a directory in which to place pictures that are available to the user.
		Requires special permission granted by Play Store review team on Android, is unlikely to be a valid path.
		
		```js
		firebase.utils.FilePath.PICTURES_DIRECTORY;
		```
	**/
	var PICTURES_DIRECTORY : String;
	/**
		Returns an absolute path to a directory in which to place movies that are available to the user.
		Requires special permission granted by Play Store review team on Android, is unlikely to be a valid path.
		
		```js
		firebase.utils.FilePath.MOVIES_DIRECTORY;
		```
	**/
	var MOVIES_DIRECTORY : String;
};