package react_native_firebase.storage.firebasestoragetypes;

/**
	The full readable metadata returned by `TaskSnapshot.metadata` or `StorageReference.getMetadata()`.
**/
typedef FullMetadata = {
	/**
		A Base64-encoded MD5 hash of the storage object being uploaded.
	**/
	var md5Hash : Null<String>;
	/**
		The bucket this storage object is contained in.
		
		#### Example Value
		
		```
		gs://my-project-storage-bucket
		```
	**/
	var bucket : String;
	/**
		The full path to this storage object in its bucket.
		
		#### Example Value
		
		```
		invertase/logo.png
		```
	**/
	var fullPath : String;
	/**
		Storage object generation values enable users to uniquely identify data resources, e.g. object versioning.
		
		Read more on generation on the [Google Cloud Storage documentation](https://cloud.google.com/storage/docs/generations-preconditions).
	**/
	var generation : String;
	/**
		Storage object metageneration values enable users to uniquely identify data resources, e.g. object versioning.
		
		Read more on metageneration on the [Google Cloud Storage documentation](https://cloud.google.com/storage/docs/generations-preconditions).
	**/
	var metageneration : String;
	/**
		The short name of storage object in its bucket, e.g. it's file name.
		
		#### Example Value
		
		```
		logo.png
		```
	**/
	var name : String;
	/**
		The size of this storage object in bytes.
	**/
	var size : Float;
	/**
		A date string representing when this storage object was created.
		
		#### Example Value
		
		```
		2019-05-02T00:34:56.264Z
		```
	**/
	var timeCreated : String;
	/**
		A date string representing when this storage object was last updated.
		
		#### Example Value
		
		```
		2019-05-02T00:35:56.264Z
		```
	**/
	var updated : String;
	/**
		The 'Cache-Control' HTTP header that will be set on the storage object when it's requested.
		
		#### Example 1
		
		To turn off caching, you can set the following cacheControl value.
		
		```js
		{
		   cacheControl: 'no-store',
		}
		```
		
		#### Example 2
		
		To aggressively cache an object, e.g. static assets, you can set the following cacheControl value.
		
		```js
		{
		   cacheControl: 'public, max-age=31536000',
		}
		```
		
		[Learn more about this header on Mozilla.](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition)
	**/
	@:optional
	var cacheControl : String;
	/**
		The 'Content-Disposition' HTTP header that will be set on the storage object when it's requested.
		
		[Learn more about this header on Mozilla.](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Disposition)
	**/
	@:optional
	var contentDisposition : String;
	/**
		The 'Content-Encoding' HTTP header that will be used on the storage object when it's requested.
		
		[Learn more about this header on Mozilla.](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding)
	**/
	@:optional
	var contentEncoding : String;
	/**
		The 'Content-Language' HTTP header that will be set on the storage object when it's requested.
		
		[Learn more about this header on Mozilla.](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Language)
	**/
	@:optional
	var contentLanguage : String;
	/**
		The 'Content-Type' HTTP header that will be set on the object when it's requested.
		
		This is used to indicate the media type (or MIME type) of the object. When uploading a file
		Firebase Cloud Storage for React Native will attempt to automatically detect this if `contentType`
		is not already set, if it fails to detect a media type it will default to `application/octet-stream`.
		
		For `DATA_URL` string formats uploaded via `putString` this will also be automatically extracted if available.
		
		#### Example
		
		Setting the content type as JSON, e.g. for when uploading a JSON string via `putString`.
		
		```js
		{
		   contentType: 'application/json',
		}
		```
		
		[Learn more about this header on Mozilla.](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Type)
	**/
	@:optional
	var contentType : String;
	/**
		You may specify the md5hash of the file in metadata on upload only. It may not be updated via updateMetadata
	**/
	@:optional
	var md5hash : String;
	/**
		Additional user-defined custom metadata for this storage object.
		
		String values only are supported for custom metadata property values.
		
		#### Example
		
		Adding a user controlled NSFW meta data field.
		
		```js
		{
		   customMetadata: {
		     'nsfw': 'true'
		   },
		}
	**/
	@:optional
	var customMetadata : { };
};