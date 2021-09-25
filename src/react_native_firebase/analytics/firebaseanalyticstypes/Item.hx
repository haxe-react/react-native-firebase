package react_native_firebase.analytics.firebaseanalyticstypes;

typedef Item = {
	/**
		The item's brand.
	**/
	@:optional
	var item_brand : String;
	/**
		An item ID.
	**/
	@:optional
	var item_id : String;
	/**
		An item name.
	**/
	@:optional
	var item_name : String;
	/**
		First class item category.
	**/
	@:optional
	var item_category : String;
	/**
		Second class item category.
	**/
	@:optional
	var item_category2 : String;
	/**
		Third class item category.
	**/
	@:optional
	var item_category3 : String;
	/**
		Fourth class item category.
	**/
	@:optional
	var item_category4 : String;
	/**
		Fifth class item category.
	**/
	@:optional
	var item_category5 : String;
	/**
		The ID of the list in which the item was presented to the user.
	**/
	@:optional
	var item_list_id : String;
	/**
		The name of the list in which the item was presented to the user.
	**/
	@:optional
	var item_list_name : String;
	/**
		The Google [Place ID](https://developers.google.com/places/place-id) that corresponds to the associated item (String). Alternatively, you can supply your own custom Location ID.
	**/
	@:optional
	var item_location_id : String;
	/**
		The Item variant.
	**/
	@:optional
	var item_variant : String;
	/**
		The Item quantity.
	**/
	@:optional
	var quantity : Float;
	/**
		The Item price.
		Note that firebase analytics will display this as an integer with trailing zeros, due to some firebase-internal conversion.
		See https://github.com/invertase/react-native-firebase/issues/4578#issuecomment-771703420 for more information
	**/
	@:optional
	var price : Float;
};