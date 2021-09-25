package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkAnalyticsParameters interface provides functionality to add Google Analytic
	based parameters to a dynamic link.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    analytics: {
	      campaign: 'banner',
	      content: 'Click Me',
	    }
	  });
	```
**/
typedef DynamicLinkAnalyticsParameters = {
	/**
		The individual campaign name, slogan, promo code, etc. for a product.
	**/
	@:optional
	var campaign : String;
	/**
		The campaign content; used for A/B testing and content-targeted ads to differentiate ads or links that point to the same URL.
	**/
	@:optional
	var content : String;
	/**
		The campaign medium; used to identify a medium such as email or cost-per-click (cpc).
	**/
	@:optional
	var medium : String;
	/**
		The campaign source; used to identify a search engine, newsletter, or other source.
	**/
	@:optional
	var source : String;
	/**
		The campaign term; used with paid search to supply the keywords for ads.
	**/
	@:optional
	var term : String;
};