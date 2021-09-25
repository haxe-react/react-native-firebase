package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkParameters interface provides access to the Dynamic Link builder classes
	used to configure a created link.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	  });
	```
**/
typedef DynamicLinkParameters = {
	/**
		The link the target app will open. You can specify any URL the app can handle, such as a link to the app’s content,
		or a URL that initiates some app-specific logic such as crediting the user with a coupon, or displaying a
		specific welcome screen. This link must be a well-formatted URL, be properly URL-encoded, and use the HTTP or
		HTTPS scheme.
	**/
	var link : String;
	/**
		Domain URI Prefix of your App. This value must be your assigned domain from the Firebase console,
		(e.g. https://xyz.page.link). The domain URI prefix must start with a valid HTTPS scheme (https://).
	**/
	var domainUriPrefix : String;
	/**
		Access Google Analytics specific link parameters.
	**/
	@:optional
	var analytics : DynamicLinkAnalyticsParameters;
	/**
		Access Android specific link parameters.
	**/
	@:optional
	var android : DynamicLinkAndroidParameters;
	/**
		Access iOS specific link parameters.
	**/
	@:optional
	var ios : DynamicLinkIOSParameters;
	/**
		Access iTunes Connect specific link parameters.
	**/
	@:optional
	var itunes : DynamicLinkITunesParameters;
	/**
		Access navigation specific link parameters.
	**/
	@:optional
	var navigation : DynamicLinkNavigationParameters;
	/**
		Access social specific link parameters.
	**/
	@:optional
	var social : DynamicLinkSocialParameters;
};