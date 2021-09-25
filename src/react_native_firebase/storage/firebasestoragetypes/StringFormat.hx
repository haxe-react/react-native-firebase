package react_native_firebase.storage.firebasestoragetypes;

/**
	Possible string formats used for uploading via `StorageReference.putString()`
	
	```js
	firebase.storage.StringFormat;
	```
**/
typedef StringFormat = {
	/**
		Raw string format.
		
		#### Usage
		
		```js
		firebase.storage.StringFormat.RAW;
		```
		
		#### Example String Format
		
		```js
		const sampleString = '<Foo Bar>';
		```
	**/
	var RAW : String;
	/**
		Base64 string format.
		
		Learn more about Base64 [on the Mozilla Web Docs](https://developer.mozilla.org/en-US/docs/Web/API/WindowBase64/Base64_encoding_and_decoding)
		
		#### Usage
		
		```js
		firebase.storage.StringFormat.BASE64;
		```
		
		#### Example String Format
		
		```js
		const sampleString = 'PEZvbyBCYXI+';
		```
	**/
	var BASE64 : String;
	/**
		Base64Url string format.
		
		#### Usage
		
		```js
		firebase.storage.StringFormat.BASE64URL;
		```
		
		#### Example String Format
		
		```js
		const sampleString = 'PEZvbyBCYXI-';
		```
	**/
	var BASE64URL : String;
	/**
		Data URL string format.
		
		#### Usage
		
		```js
		firebase.storage.StringFormat.DATA_URL;
		```
		
		#### Example String Format
		
		```js
		const sampleString = 'data:text/plain;base64,PEZvbyBCYXI+';
		```
	**/
	var DATA_URL : String;
};