package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkNavigationParameters interface provides functionality to specify how the navigation
	of the created link is handled.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    navigation: {
	      forcedRedirectEnabled: true,
	    }
	  });
	```
**/
typedef DynamicLinkNavigationParameters = {
	/**
		Sets whether to enable force redirecting or going to the app preview page. Defaults to false.
		
		If true, app preview page will be disabled and there will be a redirect to the FDL. If false, go to the app preview page.
	**/
	@:optional
	var forcedRedirectEnabled : Bool;
};