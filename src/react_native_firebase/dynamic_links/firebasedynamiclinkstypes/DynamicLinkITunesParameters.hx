package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkITunesParameters interface provides functionality to add iTunes Connect Analytics
	based parameters to the created dynamic link.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    itunes: {
	      affiliateToken: 'ABCDEFG',
	    }
	  });
	```
**/
typedef DynamicLinkITunesParameters = {
	/**
		The affiliate token used to create affiliate-coded links.
	**/
	@:optional
	var affiliateToken : String;
	/**
		The campaign token that developers can add to any link in order to track sales from a specific marketing campaign.
	**/
	@:optional
	var campaignToken : String;
	/**
		The provider token that enables analytics for Dynamic DynamicLinks from within iTunes Connect.
	**/
	@:optional
	var providerToken : String;
};