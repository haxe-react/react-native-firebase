package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	ShortLinkType determines the type of dynamic short link which Firebase creates. Used when building
	a new short link via `buildShortLink()`. These are exported through statics connected to the module.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildShortLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	  }, firebase.dynamicLinks.ShortLinkType.UNGUESSABLE);
	```
**/
@:jsRequire("@react-native-firebase/dynamic-links", "FirebaseDynamicLinksTypes.ShortLinkType") @:enum extern abstract ShortLinkType(String) from String to String {
	/**
		Shorten the path to a string that is only as long as needed to be unique, with a minimum length
		of 4 characters. Use this if sensitive information would not be exposed if a short
		Dynamic Link URL were guessed.
	**/
	var SHORT;
	/**
		Shorten the path to an unguessable string. Such strings are created by base62-encoding randomly
		generated 96-bit numbers, and consist of 17 alphanumeric characters. Use unguessable strings
		to prevent your Dynamic DynamicLinks from being crawled, which can potentially expose sensitive information.
	**/
	var UNGUESSABLE;
	/**
		By default, Firebase returns a standard formatted link.
	**/
	var DEFAULT;
}