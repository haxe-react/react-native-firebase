package react_native_firebase.auth.firebaseauthtypes;

/**
	An auth listener callback function for {@link auth#onAuthStateChanged}.
	
	#### Example
	
	```js
	function listener(user) {
	   if (user) {
	     // Signed in
	   } else {
	     // Signed out
	   }
	}
	
	firebase.auth().onAuthStateChanged(listener);
	```
**/
typedef AuthListenerCallback = (user:Null<User>) -> Void;