package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The DynamicLinkAndroidParameters interface provides functionality to configure the behaviour
	of dynamic links for Android devices.
	
	If any parameter is declared then the Android package name must also be set via `setPackageName`
	
	#### Example
	
	```js
	  const link = await firebase.dynamicLinks().buildLink({
	    link: 'https://invertase.io',
	    domainUriPrefix: 'https://xyz.page.link',
	    android: {
	      packageName: 'io.invertase.testing',
	      minimumVersion: '18',
	    }
	  });
	```
**/
typedef DynamicLinkAndroidParameters = {
	/**
		Sets the link to open when the app isn't installed. Specify this to do something other than install your app from
		the Play Store when the app isn't installed, such as open the mobile web version of the content, or display a
		promotional page for your app.
	**/
	@:optional
	var fallbackUrl : String;
	/**
		Sets the version code of the minimum version of your app that can open the link.
	**/
	@:optional
	var minimumVersion : String;
	/**
		The package name of the Android app to use to open the link. The app must be connected to your project from the Overview page of the Firebase console.
		
		This option is required if passing android options to your dynamic link.
	**/
	var packageName : String;
};