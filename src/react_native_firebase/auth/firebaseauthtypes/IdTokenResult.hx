package react_native_firebase.auth.firebaseauthtypes;

/**
	Interface representing ID token result obtained from {@link auth.User#getIdTokenResult}.
	It contains the ID token JWT string and other helper properties for getting different data
	associated with the token as well as all the decoded payload claims.
	
	TODO @salakar validate timestamp types
	
	#### Example
	
	```js
	const idTokenResult = await firebase.auth().currentUser.getIdTokenResult();
	console.log('User JWT: ', idTokenResult.token);
	```
**/
typedef IdTokenResult = {
	/**
		The Firebase Auth ID token JWT string.
	**/
	var token : String;
	/**
		The authentication time formatted as a UTC string. This is the time the user authenticated
		(signed in) and not the time the token was refreshed.
	**/
	var authTime : String;
	/**
		The ID token issued at time formatted as a UTC string.
	**/
	var issuedAtTime : String;
	/**
		The ID token expiration time formatted as a UTC string.
	**/
	var expirationTime : String;
	/**
		The sign-in provider through which the ID token was obtained (anonymous, custom,
		phone, password, etc). Note, this does not map to provider IDs.
	**/
	var signInProvider : Null<String>;
	/**
		The entire payload claims of the ID token including the standard reserved claims as well as
		the custom claims.
	**/
	var claims : { };
};