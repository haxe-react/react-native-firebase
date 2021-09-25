package react_native_firebase.auth.firebaseauthtypes;

/**
	Email and password auth provider implementation.
**/
typedef EmailAuthProvider = {
	/**
		The provider ID. Always returns `password`.
	**/
	var PROVIDER_ID : String;
	/**
		This corresponds to the sign-in method identifier as returned in {@link auth#fetchSignInMethodsForEmail}.
		
		#### Example
		
		```js
		const signInMethods = await firebase.auth().fetchSignInMethodsForEmail('...');
		if (signInMethods.indexOf(firebase.auth.EmailAuthProvider.EMAIL_LINK_SIGN_IN_METHOD) != -1) {
		   // User can sign in with email/link
		}
		```
	**/
	var EMAIL_LINK_SIGN_IN_METHOD : String;
	/**
		This corresponds to the sign-in method identifier as returned in {@link auth#fetchSignInMethodsForEmail}.
		
		#### Example
		
		```js
		const signInMethods = await firebase.auth().fetchSignInMethodsForEmail('...');
		if (signInMethods.indexOf(firebase.auth.EmailAuthProvider.EMAIL_PASSWORD_SIGN_IN_METHOD) != -1) {
		   // User can sign in with email/password
		}
		```
	**/
	var EMAIL_PASSWORD_SIGN_IN_METHOD : String;
	/**
		Returns the auth provider credential.
		
		#### Example
		
		```js
		const authCredential = firebase.auth.EmailAuthProvider.credential('joe.bloggs@example.com', '123456');
		```
	**/
	dynamic function credential(email:String, password:String):AuthCredential;
	/**
		Initialize an `EmailAuthProvider` credential using an email and an email link after a sign in with email link operation.
		
		#### Example
		
		```js
		const authCredential = firebase.auth.EmailAuthProvider.credentialWithLink('joe.bloggs@example.com', 'https://myexample.com/invite');
		```
	**/
	dynamic function credentialWithLink(email:String, emailLink:String):AuthCredential;
};