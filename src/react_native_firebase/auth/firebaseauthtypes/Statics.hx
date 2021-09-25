package react_native_firebase.auth.firebaseauthtypes;

/**
	firebase.auth.X
**/
typedef Statics = {
	/**
		Email and password auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.EmailAuthProvider;
		```
	**/
	var EmailAuthProvider : EmailAuthProvider;
	/**
		Phone auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.PhoneAuthProvider;
		```
	**/
	var PhoneAuthProvider : AuthProvider;
	/**
		Google auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.GoogleAuthProvider;
		```
	**/
	var GoogleAuthProvider : AuthProvider;
	/**
		Apple auth provider implementation. Currently this is iOS only.
		
		For Apple Authentication please see our [`@invertase/react-native-apple-authentication`](https://github.com/invertase/react-native-apple-authentication) library which integrates well with Firebase and provides Firebase + Apple Auth examples.
		
		#### Example
		
		```js
		firebase.auth.AppleAuthProvider;
		```
	**/
	var AppleAuthProvider : AuthProvider;
	/**
		Github auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.GithubAuthProvider;
		```
	**/
	var GithubAuthProvider : AuthProvider;
	/**
		Twitter auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.TwitterAuthProvider;
		```
	**/
	var TwitterAuthProvider : AuthProvider;
	/**
		Facebook auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.FacebookAuthProvider;
		```
	**/
	var FacebookAuthProvider : AuthProvider;
	/**
		Custom OAuth auth provider implementation.
		
		#### Example
		
		```js
		firebase.auth.OAuthProvider;
		```
	**/
	var OAuthProvider : AuthProvider;
	/**
		A PhoneAuthState interface.
		
		#### Example
		
		```js
		firebase.auth.PhoneAuthState;
		```
	**/
	var PhoneAuthState : PhoneAuthState;
};