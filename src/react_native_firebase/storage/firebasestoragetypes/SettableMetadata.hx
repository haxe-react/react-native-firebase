package react_native_firebase.storage.firebasestoragetypes;

/**
	An interface representing all the metadata properties that can be set.
	
	This is used in updateMetadata, put, putString & putFile.
**/
typedef SettableMetadata = {
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