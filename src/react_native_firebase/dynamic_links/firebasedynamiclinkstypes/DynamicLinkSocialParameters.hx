package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkSocialParameters interface provides functionality to add additional social
	meta-data to the URL.
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    social: {
	      title: 'Social Application',
	      descriptionText: 'A Social Application',
	    }
	  });
	```
**/
typedef DynamicLinkSocialParameters = {
	/**
		The description to use when the Dynamic Link is shared in a social post.
	**/
	@:optional
	var descriptionText : String;
	/**
		The URL to an image related to this link.
	**/
	@:optional
	var imageUrl : String;
	/**
		The title to use when the Dynamic Link is shared in a social post.
	**/
	@:optional
	var title : String;
};