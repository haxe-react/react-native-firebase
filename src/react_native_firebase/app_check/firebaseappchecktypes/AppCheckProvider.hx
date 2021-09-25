package react_native_firebase.app_check.firebaseappchecktypes;

/**
	An App Check provider. This can be either the built-in reCAPTCHA provider
	or a custom provider. For more on custom providers, see
	https://firebase.google.com/docs/app-check/web-custom-provider
**/
typedef AppCheckProvider = {
	/**
		Returns an AppCheck token.
	**/
	function getToken():js.lib.Promise<AppCheckToken>;
};