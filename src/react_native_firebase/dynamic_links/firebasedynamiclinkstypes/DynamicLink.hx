package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	A received Dynamic Link from either `onLink` or `getInitialLink`.
**/
typedef DynamicLink = {
	/**
		The url of the dynamic link.
	**/
	var url : String;
	/**
		The minimum app version (not system version) requested to process the dynamic link.
		This is retrieved from the imv= parameter of the Dynamic Link URL.
		
		If the app version of the opening app is less than the value of this property,
		then the app is expected to open AppStore to allow user to download most recent version.
		App can notify or ask the user before opening AppStore.
		
		Returns `null` if not specified
		
		#### Android
		
		On Android this returns a number value representing the apps [versionCode](https://developer.android.com/reference/android/content/pm/PackageInfo.html#versionCode).
		
		#### iOS
		
		On iOS this returns a string value representing the minimum app version (not the iOS system version).
	**/
	var minimumAppVersion : Null<ts.AnyOf2<String, Float>>;
	/**
		The potential UTM parameters linked to this dynamic link
		
		It will only work for short links, not long links
	**/
	var utmParameters : { };
};