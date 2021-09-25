package react_native_firebase.auth.firebaseauthtypes;

/**
	The Firebase Authentication service is available for the default app or a given app.
	
	#### Example 1
	
	Get the auth instance for the **default app**:
	
	```js
	const authForDefaultApp = firebase.auth();
	```
	
	#### Example 2
	
	Get the auth instance for a **secondary app**:
	
	```js
	const otherApp = firebase.app('otherApp');
	const authForOtherApp = firebase.auth(otherApp);
	```
	
	TODO @salakar missing updateCurrentUser
**/
@:jsRequire("@react-native-firebase/auth", "FirebaseAuthTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Returns the current tenant Id or null if it has never been set
		
		#### Example
		
		```js
		const tenantId = firebase.auth().tenantId;
		```
	**/
	var tenantId : Null<String>;
	/**
		Returns the current language code.
		
		#### Example
		
		```js
		const language = firebase.auth().languageCode;
		```
	**/
	var languageCode : String;
	/**
		Returns the current `AuthSettings`.
	**/
	var settings : AuthSettings;
	/**
		Returns the currently signed-in user (or null if no user signed in). See the User interface documentation for detailed usage.
		
		#### Example
		
		```js
		const user = firebase.auth().currentUser;
		```
		
		> It is recommended to use {@link auth#onAuthStateChanged} to track whether the user is currently signed in.
	**/
	var currentUser : Null<User>;
	/**
		Sets the tenant id.
		
		#### Example
		
		```js
		await firebase.auth().setTenantId('tenant-123');
		```
	**/
	function setTenantId(tenantId:String):js.lib.Promise<ts.Undefined>;
	/**
		Sets the language code.
		
		#### Example
		
		```js
		// Set language to French
		await firebase.auth().setLanguageCode('fr');
		```
	**/
	function setLanguageCode(languageCode:Null<String>):js.lib.Promise<ts.Undefined>;
	/**
		Listen for changes in the users auth state (logging in and out).
		This method returns a unsubscribe function to stop listening to events.
		Always ensure you unsubscribe from the listener when no longer needed to prevent updates to components no longer in use.
		
		#### Example
		
		```js
		const unsubscribe = firebase.auth().onAuthStateChanged((user) => {
		   if (user) {
		     // Signed in
		   } else {
		     // Signed out
		   }
		});
		
		// Unsubscribe from further state changes
		unsubscribe();
		```
	**/
	function onAuthStateChanged(listener:react_native_firebase.auth.CallbackOrObserver<AuthListenerCallback>):() -> Void;
	/**
		Listen for changes in ID token.
		ID token can be verified (if desired) using the [admin SDK or a 3rd party JWT library](https://firebase.google.com/docs/auth/admin/verify-id-tokens)
		This method returns a unsubscribe function to stop listening to events.
		Always ensure you unsubscribe from the listener when no longer needed to prevent updates to components no longer in use.
		
		#### Example
		
		```js
		const unsubscribe = firebase.auth().onIdTokenChanged((user) => {
		   if (user) {
		     // User is signed in or token was refreshed.
		   }
		});
		
		// Unsubscribe from further state changes
		unsubscribe();
		```
	**/
	function onIdTokenChanged(listener:react_native_firebase.auth.CallbackOrObserver<AuthListenerCallback>):() -> Void;
	/**
		Adds a listener to observe changes to the User object. This is a superset of everything from
		{@link auth#onAuthStateChanged}, {@link auth#onIdTokenChanged} and user changes. The goal of this
		method is to provide easier listening to all user changes, such as when credentials are
		linked and unlinked, without manually having to call {@link auth.User#reload}.
		
		#### Example
		
		```js
		const unsubscribe = firebase.auth().onUserChanged((user) => {
		   if (user) {
		     // User is signed in or token was refreshed.
		   }
		});
		
		// Unsubscribe from further state changes
		unsubscribe();
		```
		
		> This is an experimental feature and is only part of React Native Firebase.
	**/
	function onUserChanged(listener:react_native_firebase.auth.CallbackOrObserver<AuthListenerCallback>):() -> Void;
	/**
		Signs the user out.
		
		Triggers the {@link auth#onAuthStateChanged} listener.
		
		#### Example
		
		```js
		await firebase.auth().signOut();
		```
	**/
	function signOut():js.lib.Promise<ts.Undefined>;
	/**
		Sign in a user anonymously. If the user has already signed in, that user will be returned.
		
		#### Example
		
		```js
		const userCredential = await firebase.auth().signInAnonymously();
		```
	**/
	function signInAnonymously():js.lib.Promise<UserCredential>;
	/**
		Signs in the user using their phone number.
		
		#### Example
		
		```js
		// Force a new message to be sent
		const result = await firebase.auth().signInWithPhoneNumber('#4423456789', true);
		```
	**/
	function signInWithPhoneNumber(phoneNumber:String, ?forceResend:Bool):js.lib.Promise<ConfirmationResult>;
	/**
		Returns a PhoneAuthListener to listen to phone verification events,
		on the final completion event a PhoneAuthCredential can be generated for
		authentication purposes.
		
		#### Example
		
		```js
		firebase.auth().verifyPhoneNumber('+4423456789', )
		  .on('state_changed', (phoneAuthSnapshot) => {
		    console.log('Snapshot state: ', phoneAuthSnapshot.state);
		  });
		```
	**/
	function verifyPhoneNumber(phoneNumber:String, ?autoVerifyTimeoutOrForceResend:ts.AnyOf2<Float, Bool>, ?forceResend:Bool):PhoneAuthListener;
	/**
		Creates a new user with an email and password.
		
		This method also signs the user in once the account has been created.
		
		#### Example
		
		```js
		const userCredential = await firebase.auth().createUserWithEmailAndPassword('joe.bloggs@example.com', '123456');
		```
	**/
	function createUserWithEmailAndPassword(email:String, password:String):js.lib.Promise<UserCredential>;
	/**
		Signs a user in with an email and password.
		
		#### Example
		
		```js
		const userCredential = await firebase.auth().signInWithEmailAndPassword('joe.bloggs@example.com', '123456');
		````
	**/
	function signInWithEmailAndPassword(email:String, password:String):js.lib.Promise<UserCredential>;
	/**
		Signs a user in with a custom token.
		
		#### Example
		
		```js
		// Create a custom token via the Firebase Admin SDK.
		const token = await firebase.auth().createCustomToken(uid, customClaims);
		...
		// Use the token on the device to sign in.
		const userCredential = await firebase.auth().signInWithCustomToken(token);
		```
	**/
	function signInWithCustomToken(customToken:String):js.lib.Promise<UserCredential>;
	/**
		Signs the user in with a generated credential.
		
		#### Example
		
		```js
		// Generate a Firebase credential
		const credential = firebase.auth.FacebookAuthProvider.credential('access token from Facebook');
		// Sign the user in with the credential
		const userCredential = await firebase.auth().signInWithCredential(credential);
		```
	**/
	function signInWithCredential(credential:AuthCredential):js.lib.Promise<UserCredential>;
	/**
		Sends a password reset email to the given email address.
		Unlike the web SDK, the email will contain a password reset link rather than a code.
		
		#### Example
		
		```js
		await firebase.auth().sendPasswordResetEmail('joe.bloggs@example.com');
		```
	**/
	function sendPasswordResetEmail(email:String, ?actionCodeSettings:ActionCodeSettings):js.lib.Promise<ts.Undefined>;
	/**
		Sends a sign in link to the user.
		
		#### Example
		
		```js
		await firebase.auth().sendSignInLinkToEmail('joe.bloggs@example.com');
		```
	**/
	function sendSignInLinkToEmail(email:String, ?actionCodeSettings:ActionCodeSettings):js.lib.Promise<ts.Undefined>;
	/**
		Returns whether the user signed in with a given email link.
		
		#### Example
		
		```js
		const signedInWithLink = firebase.auth().isSignInWithEmailLink(link);
		```
	**/
	function isSignInWithEmailLink(emailLink:String):Bool;
	/**
		Signs the user in with an email link.
		
		#### Example
		
		```js
		const userCredential = await firebase.auth().signInWithEmailLink('joe.bloggs@example.com', link);
		```
	**/
	function signInWithEmailLink(email:String, emailLink:String):js.lib.Promise<UserCredential>;
	/**
		Completes the password reset process with the confirmation code and new password, via
		{@link auth#sendPasswordResetEmail}.
		
		#### Example
		
		```js
		await firebase.auth().confirmPasswordReset('ABCD', '1234567');
		```
	**/
	function confirmPasswordReset(code:String, newPassword:String):js.lib.Promise<ts.Undefined>;
	/**
		Applies a verification code sent to the user by email or other out-of-band mechanism.
		
		#### Example
		
		```js
		await firebase.auth().applyActionCode('ABCD');
		```
	**/
	function applyActionCode(code:String):js.lib.Promise<ts.Undefined>;
	/**
		Checks a verification code sent to the user by email or other out-of-band mechanism.
		
		#### Example
		
		```js
		const actionCodeInfo = await firebase.auth().checkActionCode('ABCD');
		console.log('Action code operation: ', actionCodeInfo.operation);
		```
	**/
	function checkActionCode(code:String):js.lib.Promise<ActionCodeInfo>;
	/**
		Returns a list of authentication methods that can be used to sign in a given user (identified by its main email address).
		
		#### Example
		
		```js
		const methods = await firebase.auth().fetchSignInMethodsForEmail('joe.bloggs@example.com');
		
		methods.forEach((method) => {
		   console.log(method);
		});
		```
	**/
	function fetchSignInMethodsForEmail(email:String):js.lib.Promise<Array<String>>;
	/**
		Checks a password reset code sent to the user by email or other out-of-band mechanism.
		TODO salakar: confirm return behavior (Returns the user's email address if valid.)
		
		#### Example
		
		```js
		await firebase.auth().verifyPasswordResetCode('ABCD');
		```
	**/
	function verifyPasswordResetCode(code:String):js.lib.Promise<ts.Undefined>;
	/**
		Switch userAccessGroup and current user to the given accessGroup and the user stored in it.
		Sign in a user with any sign in method, and the same current user is available in all
		apps in the access group.
		
		Set the `useAccessGroup` argument to `null` to stop sharing the auth state (default behaviour), the user state will no longer be
		available to any other apps.
	**/
	function useUserAccessGroup(userAccessGroup:String):js.lib.Promise<Dynamic>;
	/**
		Modify this Auth instance to communicate with the Firebase Auth emulator.
		This must be called synchronously immediately following the first call to firebase.auth().
		Do not use with production credentials as emulator traffic is not encrypted.
		
		Note: on android, hosts 'localhost' and '127.0.0.1' are automatically remapped to '10.0.2.2' (the
		"host" computer IP address for android emulators) to make the standard development experience easy.
		If you want to use the emulator on a real android device, you will need to specify the actual host
		computer IP address.
	**/
	function useEmulator(url:String):Void;
	static var prototype : Module;
}