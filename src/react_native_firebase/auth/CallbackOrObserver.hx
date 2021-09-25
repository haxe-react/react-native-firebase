package react_native_firebase.auth;

typedef CallbackOrObserver<T> = ts.AnyOf2<{
	dynamic function next(args:haxe.extern.Rest<Dynamic>):Dynamic;
}, T>;