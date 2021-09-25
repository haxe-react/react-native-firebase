package react_native_firebase.auth.firebaseauthtypes;

/**
	Represents a user's profile information in your Firebase project's user database. It also
	contains helper methods to change or retrieve profile information, as well as to manage that user's authentication state.
	
	#### Example 1
	
	Subscribing to the users authentication state.
	
	```js
	firebase.auth().onAuthStateChanged((user) => {
	   if (user) {
	     console.log('User email: ', user.email);
	   }
	});
	```
	
	#### Example 2
	
	```js
	const user = firebase.auth().currentUser;
	
	if (user) {
	  console.log('User email: ', user.email);
	}
	```
**/
typedef User = {
	/**
		The user's display name (if available).
	**/
	var displayName : Null<String>;
	/**
		- The user's email address (if available).
	**/
	var email : Null<String>;
	/**
		- True if the user's email address has been verified.
	**/
	var emailVerified : Bool;
	/**
		Returns true if the user is anonymous; that is, the user account was created with
		{@link auth#signInAnonymously} and has not been linked to another account
		with {@link auth#linkWithCredential}.
	**/
	var isAnonymous : Bool;
	/**
		Returns the {@link auth.UserMetadata} associated with this user.
	**/
	var metadata : UserMetadata;
	/**
		Returns the phone number of the user, as stored in the Firebase project's user database,
		or null if none exists. This can be updated at any time by calling {@link auth.User#updatePhoneNumber}.
	**/
	var phoneNumber : Null<String>;
	/**
		The URL of the user's profile picture (if available).
	**/
	var photoURL : Null<String>;
	/**
		Additional provider-specific information about the user.
	**/
	var providerData : Array<UserInfo>;
	/**
		The authentication provider ID for the current user.
		For example, 'facebook.com', or 'google.com'.
	**/
	var providerId : String;
	/**
		- The user's unique ID.
	**/
	var uid : String;
	/**
		Delete the current user.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.delete();
		```
	**/
	function delete():js.lib.Promise<ts.Undefined>;
	/**
		Returns the users authentication token.
		
		#### Example
		
		```js
		// Force a token refresh
		const idToken = await firebase.auth().currentUser.getIdToken(true);
		```
	**/
	function getIdToken(?forceRefresh:Bool):js.lib.Promise<String>;
	/**
		Returns a firebase.auth.IdTokenResult object which contains the ID token JWT string and
		other helper properties for getting different data associated with the token as well as
		all the decoded payload claims.
		
		#### Example
		
		```js
		// Force a token refresh
		const idTokenResult = await firebase.auth().currentUser.getIdTokenResult(true);
		```
	**/
	function getIdTokenResult(?forceRefresh:Bool):js.lib.Promise<IdTokenResult>;
	/**
		Link the user with a 3rd party credential provider.
		
		#### Example
		
		```js
		const facebookCredential = firebase.auth.FacebookAuthProvider.credential('access token from Facebook');
		const userCredential = await firebase.auth().currentUser.linkWithCredential(facebookCredential);
		```
	**/
	function linkWithCredential(credential:AuthCredential):js.lib.Promise<UserCredential>;
	/**
		Re-authenticate a user with a third-party authentication provider.
		
		#### Example
		
		```js
		const facebookCredential = firebase.auth.FacebookAuthProvider.credential('access token from Facebook');
		const userCredential = await firebase.auth().currentUser.reauthenticateWithCredential(facebookCredential);
		```
	**/
	function reauthenticateWithCredential(credential:AuthCredential):js.lib.Promise<UserCredential>;
	/**
		Refreshes the current user.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.reload();
		```
	**/
	function reload():js.lib.Promise<ts.Undefined>;
	/**
		Sends a verification email to a user.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.sendEmailVerification({
		   handleCodeInApp: true,
		});
		```
		
		> This will Promise reject if the user is anonymous.
	**/
	function sendEmailVerification(?actionCodeSettings:ActionCodeSettings):js.lib.Promise<ts.Undefined>;
	/**
		Sends a link to the user's email address, when clicked, the user's Authentication email address will be updated to whatever
		was passed as the first argument.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.verifyBeforeUpdateEmail(
		'foo@emailaddress.com',
		{
		   handleCodeInApp: true,
		});
		```
		
		> This will Promise reject if the user is anonymous.
	**/
	function verifyBeforeUpdateEmail(email:String, ?actionCodeSettings:ActionCodeSettings):js.lib.Promise<ts.Undefined>;
	/**
		Returns a JSON-serializable representation of this object.
		
		#### Example
		
		```js
		const user = firebase.auth().currentUser.toJSON();
		```
	**/
	function toJSON():Dynamic;
	/**
		Unlinks a provider from a user account.
		
		#### Example
		
		```js
		const user = await firebase.auth().currentUser.unlink('facebook.com');
		```
	**/
	function unlink(providerId:String):js.lib.Promise<User>;
	/**
		Updates the user's email address.
		
		See Firebase docs for more information on security & email validation.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.updateEmail('joe.bloggs@new-email.com');
		```
		
		> This will Promise reject if the user is anonymous.
	**/
	function updateEmail(email:String):js.lib.Promise<ts.Undefined>;
	/**
		Updates the users password.
		
		Important: this is a security sensitive operation that requires the user to have recently signed in.
		If this requirement isn't met, ask the user to authenticate again and then call firebase.User#reauthenticate.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.updatePassword('654321');
		```
		
		> This will Promise reject is the user is anonymous.
	**/
	function updatePassword(password:String):js.lib.Promise<ts.Undefined>;
	/**
		Updates the user's phone number.
		
		See Firebase docs for more information on security & email validation.
		
		#### Example
		
		```js
		const snapshot = await firebase.auth().verifyPhoneNumber('+4423456789')
		  .on(...); // See PhoneAuthListener - wait for successful verification
		
		const credential = firebase.auth.PhoneAuthProvider.credential(snapshot.verificationId, snapshot.code);
		
		// Update user with new verified phone number
		await firebase.auth().currentUser.updatePhoneNumber(credential);
		```
		
		> This will Promise reject is the user is anonymous.
	**/
	function updatePhoneNumber(credential:AuthCredential):js.lib.Promise<ts.Undefined>;
	/**
		Updates a user's profile data.
		
		#### Example
		
		```js
		await firebase.auth().currentUser.updateProfile({
		   displayName: 'Alias',
		});
		```
	**/
	function updateProfile(updates:UpdateProfile):js.lib.Promise<ts.Undefined>;
};