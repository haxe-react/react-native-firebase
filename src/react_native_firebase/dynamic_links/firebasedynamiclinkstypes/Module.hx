package react_native_firebase.dynamic_links.firebasedynamiclinkstypes;

/**
	The Firebase Dynamic DynamicLinks service is available for the default app only.
	
	#### Example 1
	
	Get the links instance for the **default app**:
	
	```js
	const links = firebase.dynamicLinks();
	```
**/
@:jsRequire("@react-native-firebase/dynamic-links", "FirebaseDynamicLinksTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Builds a Dynamic Link from the provided DynamicLinkParameters instances.
		
		#### Example
		
		```js
		const link = await firebase.dynamicLinks().buildLink({
		   link: 'https://invertase.io',
		   domainUriPrefix: 'https://xyz.page.link',
		   analytics: {
		     campaign: 'banner',
		   }
		});
		```
	**/
	function buildLink(dynamicLinkParams:DynamicLinkParameters):js.lib.Promise<String>;
	/**
		Builds a short Dynamic Link from the provided DynamicLinkParameters interface.
		
		  ```js
		const link = await firebase.dynamicLinks().buildShortLink(
		   {
		     link: 'https://invertase.io',
		     domainUriPrefix: 'https://xyz.page.link',
		     analytics: {
		       campaign: 'banner',
		     }
		   },
		   firebase.dynamicLinks.ShortLinkType.UNGUESSABLE,
		);
		```
	**/
	function buildShortLink(dynamicLinkParams:DynamicLinkParameters, ?shortLinkType:ShortLinkType):js.lib.Promise<String>;
	/**
		Returns the Dynamic Link that the app has been launched from. If the app was not launched from a Dynamic Link the value will be null.
		
		> Use {@link auth#isSignInWithEmailLink} to check if an inbound dynamic link is an email sign-in link.
		
		#### Example
		
		```js
		async function bootstrapApp() {
		    const initialLink = await firebase.dynamicLinks().getInitialLink();
		
		    if (initialLink) {
		      // Handle dynamic link inside your own application
		      if (initialLink.url === 'https://invertase.io/offer') return navigateTo('/offers')
		    }
		}
		```
	**/
	function getInitialLink():js.lib.Promise<Null<DynamicLink>>;
	/**
		Subscribe to Dynamic Link open events while the app is still running.
		
		The listener is called from Dynamic Link open events whilst the app is still running, use
		{@link dynamic-links#getInitialLink} for Dynamic Links which cause the app to open from a previously closed / not running state.
		
		#### Example
		
		```jsx
		function App() {
		   const handleDynamicLink = (link) => {
		     // Handle dynamic link inside your own application
		     if (link.url === 'https://invertase.io/offer') return navigateTo('/offers')
		   };
		
		   useEffect(() => {
		     const unsubscribe = firebase.dynamicLinks().onLink(handleDynamicLink);
		     // When the component unmounts, remove the listener
		     return unsubscribe;
		   }, []);
		
		   return <YourApp />;
		}
		```
	**/
	function onLink(listener:(link:DynamicLink) -> Void):() -> Void;
	/**
		Resolve a given dynamic link (short or long) directly.
		
		This mimics the result of external link resolution, app open, and the DynamicLink you
		would get from {@link dynamic-links#getInitialLink}
		
		#### Example
		
		```js
		const link = await firebase.dynamicLinks().resolveLink('https://reactnativefirebase.page.link/76adfasdf');
		console.log('Received link with URL: ' + link.url);
		```
		
		Can throw error with message 'Invalid link parameter' if link parameter is null
		Can throw error with code 'not-found' if the link does not resolve
		Can throw error with code 'resolve-link-error' if there is a processing error
	**/
	function resolveLink(link:String):js.lib.Promise<DynamicLink>;
	static var prototype : Module;
}