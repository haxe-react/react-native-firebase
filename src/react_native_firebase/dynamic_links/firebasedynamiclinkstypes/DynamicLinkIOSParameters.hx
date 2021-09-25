package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkIOSParameters interface provides functionality to configure the behaviour
	of dynamic links for iOS devices.
	
	If any parameter is declared then the iOS BundleId must also be set via `setBundleId`
	
	#### Example
	
	```js
	const linkParams = firebase.dynamicLinks().newDynamicLinkParameters('https://invertase.io', 'https://xyz.page.link');
	linkParams
	   .ios.setBundleId('io.invertase.testing')
	   .ios.setAppStoreId('123456789')
	   .ios.setMinimumVersion('18');
	
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    ios: {
	      bundleId: 'io.invertase.testing',
	      appStoreId: '123456789',
	      minimumVersion: '18',
	    }
	  });
	```
**/
typedef DynamicLinkIOSParameters = {
	/**
		Sets the App Store ID, used to send users to the App Store when the app isn't installed.
	**/
	@:optional
	var appStoreId : String;
	/**
		The bundle ID of the iOS app to use to open the link. The app must be connected to your project from the Overview page of the Firebase console.
		
		This option is required if passing ios options to your dynamic link.
	**/
	var bundleId : String;
	/**
		Sets the app's custom URL scheme, if defined to be something other than your app's parameters ID.
	**/
	@:optional
	var customScheme : String;
	/**
		Sets the link to open when the app isn't installed. Specify this to do something other than install your app from
		the App Store when the app isn't installed, such as open the mobile web version of the content, or display a
		promotional page for your app.
	**/
	@:optional
	var fallbackUrl : String;
	/**
		Sets the bundle ID of the iOS app to use on iPads to open the link. The app must be connected to your project
		from the Overview page of the Firebase console.
	**/
	@:optional
	var iPadBundleId : String;
	/**
		Sets the link to open on iPads when the app isn't installed. Specify this to do something other than install your
		app from the App Store when the app isn't installed, such as open the web version of the content, or display a
		promotional page for your app. Overrides the fallback link set by `setFallbackUrl` on iPad.
	**/
	@:optional
	var iPadFallbackUrl : String;
	/**
		Sets the minimum version of your app that can open the link.
	**/
	@:optional
	var minimumVersion : String;
};