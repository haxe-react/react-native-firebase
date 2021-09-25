package react_native_firebase.analytics.firebaseanalyticstypes;

/**
	The Firebase Analytics service interface.
	
	> This module is available for the default app only.
	
	#### Example
	
	Get the Analytics service for the default app:
	
	```js
	const defaultAppAnalytics = firebase.analytics();
	```
**/
@:jsRequire("@react-native-firebase/analytics", "FirebaseAnalyticsTypes.Module") extern class Module extends react_native_firebase.app.reactnativefirebase.FirebaseModule {
	function new();
	/**
		Log a custom event with optional params. Note that there are various limits that applied
		to event parameters (total parameter count, etc), but analytics applies the limits during
		cloud processing, the errors will not be seen as Promise rejections when you call logEvent.
		While integrating this API in your app you are strongly encouraged to enable
		[DebugView](https://firebase.google.com/docs/analytics/debugview) -
		any errors in your events will show up in the firebase web console with links to relevant documentation
		
		#### Example
		
		```js
		await firebase.analytics().logEvent('product_view', {
		   id: '1234',
		});
		```
		
		> 100 characters is the maximum length for param key names.
	**/
	function logEvent(name:String, ?params:{ }):js.lib.Promise<ts.Undefined>;
	/**
		If true, allows the device to collect analytical data and send it to
		Firebase. Useful for GDPR.
		
		#### Example
		
		```js
		// Disable collection
		await firebase.analytics().setAnalyticsCollectionEnabled(false);
		```
	**/
	function setAnalyticsCollectionEnabled(enabled:Bool):js.lib.Promise<ts.Undefined>;
	/**
		Sets the duration of inactivity that terminates the current session.
		
		#### Example
		
		```js
		// 20 minutes
		await firebase.analytics().setMinimumSessionDuration(900000);
		```
	**/
	function setSessionTimeoutDuration(?milliseconds:Float):js.lib.Promise<ts.Undefined>;
	/**
		Retrieve the app instance id of the application.
		
		#### Example
		
		```js
		const appInstanceId = await firebase.analytics().getAppInstanceId();
		```
	**/
	function getAppInstanceId():js.lib.Promise<Null<String>>;
	/**
		Gives a user a unique identification.
		
		#### Example
		
		```js
		// Set User
		await firebase.analytics().setUserId('123456789');
		// Remove User
		await firebase.analytics().setUserId(null);
		```
	**/
	function setUserId(id:Null<String>):js.lib.Promise<ts.Undefined>;
	/**
		Sets a key/value pair of data on the current user. Each Firebase project can have up to 25 uniquely named (case-sensitive) user properties.
		
		#### Example
		
		```js
		await firebase.analytics().setUserProperty('account_type', 'gold');
		```
	**/
	function setUserProperty(name:String, value:Null<String>):js.lib.Promise<ts.Undefined>;
	/**
		Sets multiple key/value pairs of data on the current user. Each Firebase project can have up to 25 uniquely named (case-sensitive) user properties.
		
		#### Example
		
		```js
		await firebase.analytics().setUserProperties({
		   account_type: 'gold',
		   account_name: 'Gold Badge',
		});
		```
		
		> When you set user properties, be sure to never include personally identifiable information such as names, social security numbers, or email addresses, even in hashed form.
	**/
	function setUserProperties(properties:{ }):js.lib.Promise<ts.Undefined>;
	/**
		Clears all analytics data for this instance from the device and resets the app instance ID.
		
		#### Example
		
		```js
		await firebase.analytics().resetAnalyticsData();
		```
	**/
	function resetAnalyticsData():js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Purchase event. This event signifies that an item(s) was purchased by a user. Note: This is different from the in-app purchase event, which is reported
		automatically for Google Play-based apps.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `purchase`
		
		#### Example
		
		```js
		await firebase.analytics().logPurchase({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logPurchase(params:PurchaseEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Sets or clears the screen name and class the user is currently viewing
		
		#### Example
		
		```js
		await firebase.analytics().logScreenView({
		   screen_class: 'ProductScreen',
		   screen_name: 'ProductScreen',
		});
		```
	**/
	function logScreenView(params:ScreenViewParameters):js.lib.Promise<ts.Undefined>;
	/**
		Add Payment Info event. This event signifies that a user has submitted their payment information to your app.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `add_payment_info`
		
		#### Example
		
		```js
		await firebase.analytics().logAddPaymentInfo({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logAddPaymentInfo(params:AddPaymentInfoEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Add To Cart event.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `add_to_cart`
		
		#### Example
		
		```js
		await firebase.analytics().logAddToCart({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logAddToCart(params:AddToCartEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Add To Wishlist event. This event signifies that an item was added to a wishlist.
		Use this event to identify popular gift items in your app.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `add_to_wishlist`
		
		#### Example
		
		```js
		await firebase.analytics().logAddToWishlist({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logAddToWishlist(params:AddToWishlistEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Add Shipping Info event. This event signifies that a user has submitted their shipping information.
		Use this event to identify popular gift items in your app.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `add_shipping_info`
		
		#### Example
		
		```js
		await firebase.analytics().logAddShippingInfo({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logAddShippingInfo(params:AddShippingInfoParameters):js.lib.Promise<ts.Undefined>;
	/**
		App Open event. By logging this event when an App is moved to the foreground, developers can
		understand how often users leave and return during the course of a Session. Although Sessions
		are automatically reported, this event can provide further clarification around the continuous
		engagement of app-users.
		
		Logged event name: `app_open`
		
		#### Example
		
		```js
		await firebase.analytics().logAppOpen();
		```
	**/
	function logAppOpen():js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Begin Checkout event. This event signifies that a user has begun the process of
		checking out.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `begin_checkout`
		
		#### Example
		
		```js
		await firebase.analytics().logBeginCheckout({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logBeginCheckout(?params:BeginCheckoutEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Log this event to supply the referral details of a re-engagement campaign.
		
		Logged event name: `campaign_details`
		
		#### Example
		
		```js
		await firebase.analytics().logCampaignDetails({
		   source: 'email',
		   medium: 'cta_button',
		   campaign: 'newsletter',
		});
		```
	**/
	function logCampaignDetails(params:CampaignDetailsEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		View Promotion event. This event signifies that a promotion was shown to a user.
		
		Logged event name: `view_promotion`
		
		#### Example
		
		```js
		await firebase.analytics().logViewPromotion({
		   creative_name: 'the promotion',
		   creative_slot: 'evening',
		   location_id: 'london',
		   promotion_id: '230593',
		   promotion_name: 'london evening event',
		});
		```
	**/
	function logViewPromotion(params:ViewPromotionEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Earn Virtual Currency event. This event tracks the awarding of virtual currency in your app. Log this along with
		{@link analytics.logSpendVirtualCurrency} to better understand your virtual economy.
		
		Logged event name: `earn_virtual_currency`
		
		#### Example
		
		```js
		await firebase.analytics().logEarnVirtualCurrency({
		   virtual_currency_name: 'coins',
		   value: 100,
		});
		```
	**/
	function logEarnVirtualCurrency(params:EarnVirtualCurrencyEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Generate Lead event. Log this event when a lead has been generated in the app to understand
		the efficacy of your install and re-engagement campaigns.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `generate_lead`
		
		#### Example
		
		```js
		await firebase.analytics().logGenerateLead({
		   currency: 'USD',
		   value: 123,
		});
		```
	**/
	function logGenerateLead(?params:GenerateLeadEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Join Group event. Log this event when a user joins a group such as a guild, team or family.
		Use this event to analyze how popular certain groups or social features are in your app
		
		Logged event name: `join_group`
		
		#### Example
		
		```js
		await firebase.analytics().logJoinGroup({
		   group_id: '12345',
		});
		```
	**/
	function logJoinGroup(params:JoinGroupEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Level End event.
		
		Logged event name: `level_end`
		
		#### Example
		
		```js
		await firebase.analytics().logLevelEnd({
		   level: 12,
		   success: 'true'
		});
		```
	**/
	function logLevelEnd(params:LevelEndEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Level Start event.
		
		Logged event name: `level_start`
		
		#### Example
		
		```js
		await firebase.analytics().logLevelStart({
		   level: 12,
		});
		```
	**/
	function logLevelStart(params:LevelStartEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Level Up event. This event signifies that a player has leveled up in your gaming app.
		It can help you gauge the level distribution of your userbase and help you identify certain levels that are difficult to pass.
		
		Logged event name: `level_up`
		
		#### Example
		
		```js
		await firebase.analytics().logLevelUp({
		   level: 12,
		   character: 'Snake',
		});
		```
	**/
	function logLevelUp(params:LevelUpEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Login event. Apps with a login feature can report this event to signify that a user has logged in.
		
		Logged event name: `login`
		
		#### Example
		
		```js
		await firebase.analytics().logLogin({
		   method: 'facebook.com',
		});
		```
	**/
	function logLogin(params:LoginEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Post Score event. Log this event when the user posts a score in your gaming app. This event can
		help you understand how users are actually performing in your game and it can help you correlate
		high scores with certain audiences or behaviors.
		
		Logged event name: `post_score`
		
		#### Example
		
		```js
		await firebase.analytics().logPostScore({
		   score: 567334,
		   level: 3,
		   character: 'Pete',
		});
		```
	**/
	function logPostScore(params:PostScoreEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Remove from cart event.
		
		Logged event name: `remove_from_cart`
		
		#### Example
		
		```js
		await firebase.analytics().logRemoveFromCart({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logRemoveFromCart(params:RemoveFromCartEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		E-Commerce Refund event. This event signifies that a refund was issued.
		
		Logged event name: `remove_from_cart`
		
		#### Example
		
		```js
		await firebase.analytics().logRefund({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logRefund(params:RefundEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Search event. Apps that support search features can use this event to contextualize search
		operations by supplying the appropriate, corresponding parameters. This event can help you
		identify the most popular content in your app.
		
		Logged event name: `search`
		
		#### Example
		
		```js
		await firebase.analytics().logSearch({
		  search_term: 't-shirts',
		});
		```
	**/
	function logSearch(params:SearchEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Select Content event. This general purpose event signifies that a user has selected some
		content of a certain type in an app. The content can be any object in your app. This event
		can help you identify popular content and categories of content in your app.
		
		Logged event name: `select_content`
		
		#### Example
		
		```js
		await firebase.analytics().logSelectContent({
		  content_type: 'clothing',
		  item_id: 'abcd',
		});
		```
	**/
	function logSelectContent(params:SelectContentEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Select Item event. This event signifies that an item was selected by a user from a list.
		Use the appropriate parameters to contextualize the event.
		Use this event to discover the most popular items selected.
		
		Logged event name: `select_item`
		
		#### Example
		
		```js
		await firebase.analytics().logSelectItem({
		  item_list_id: '54690834',
		  item_list_name: 't-shirts',
		  items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logSelectItem(params:SelectItemEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Set checkout option event.
		
		Logged event name: `set_checkout_option`
		
		#### Example
		
		```js
		await firebase.analytics().logSetCheckoutOption({
		   checkout_step: 2,
		   checkout_option: 'false',
		});
		```
	**/
	function logSetCheckoutOption(params:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		Share event. Apps with social features can log the Share event to identify the most viral content.
		
		Logged event name: `share`
		
		#### Example
		
		```js
		await firebase.analytics().logShare({
		   content_type: 't-shirts',
		   item_id: '12345',
		   method: 'twitter.com',
		});
		```
	**/
	function logShare(params:ShareEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Sign Up event. This event indicates that a user has signed up for an account in your app.
		The parameter signifies the method by which the user signed up. Use this event to understand
		the different behaviors between logged in and logged out users.
		
		Logged event name: `sign_up`
		
		#### Example
		
		```js
		await firebase.analytics().logSignUp({
		   method: 'facebook.com',
		});
		```
	**/
	function logSignUp(params:SignUpEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Spend Virtual Currency event. This event tracks the sale of virtual goods in your app and can
		help you identify which virtual goods are the most popular objects of purchase.
		
		Logged event name: `spend_virtual_currency`
		
		#### Example
		
		```js
		await firebase.analytics().logSpendVirtualCurrency({
		   item_name: 'battle_pass',
		   virtual_currency_name: 'coins',
		   value: 100,
		});
		```
	**/
	function logSpendVirtualCurrency(params:SpendVirtualCurrencyEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Tutorial Begin event. This event signifies the start of the on-boarding process in your app.
		Use this in a funnel with {@link analytics#logTutorialComplete} to understand how many users
		complete this process and move on to the full app experience.
		
		Logged event name: `tutorial_begin`
		
		#### Example
		
		```js
		await firebase.analytics().logTutorialBegin();
		```
	**/
	function logTutorialBegin():js.lib.Promise<ts.Undefined>;
	/**
		Tutorial End event. Use this event to signify the user's completion of your app's on-boarding process.
		Add this to a funnel with {@link analytics#logTutorialBegin} to understand how many users
		complete this process and move on to the full app experience.
		
		Logged event name: `tutorial_complete`
		
		#### Example
		
		```js
		await firebase.analytics().logTutorialComplete();
		```
	**/
	function logTutorialComplete():js.lib.Promise<ts.Undefined>;
	/**
		Select promotion event. This event signifies that a user has selected a promotion offer. Use the
		appropriate parameters to contextualize the event, such as the item(s) for which the promotion applies.
		
		Logged event name: `select_promotion`
		
		#### Example
		
		```js
		await firebase.analytics().logSelectPromotion({
		   creative_name: 'the promotion',
		   creative_slot: 'evening',
		   location_id: 'london',
		   promotion_id: '230593',
		   promotion_name: 'london evening event',
		});
		```
	**/
	function logSelectPromotion(params:SelectPromotionEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		Unlock Achievement event. Log this event when the user has unlocked an achievement in your game.
		Since achievements generally represent the breadth of a gaming experience, this event can help
		you understand how many users are experiencing all that your game has to offer.
		
		Logged event name: `unlock_achievement`
		
		#### Example
		
		```js
		await firebase.analytics().logUnlockAchievement({
		   achievement_id: '12345',
		});
		```
	**/
	function logUnlockAchievement(params:UnlockAchievementEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		View Item event. This event signifies that some content was shown to the user. This content
		may be a product, a screen or just a simple image or text. Use the appropriate parameters
		to contextualize the event. Use this event to discover the most popular items viewed in your app.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `view_item`
		
		#### Example
		
		```js
		await firebase.analytics().logViewItem({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logViewItem(params:ViewItemEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		E-commerce View Cart event. This event signifies that a user has viewed their cart. Use this to analyze your purchase funnel.
		
		If you supply the `value` parameter, you must also supply the `currency` parameter so that revenue metrics can be computed accurately.
		
		Logged event name: `view_cart`
		
		#### Example
		
		```js
		await firebase.analytics().logViewCart({
		   value: 100,
		   currency: 'usd',
		   items: [{
		     item_brand: 'cool-shirt-brand',
		     item_id: '23456',
		     item_name: 'orange t-shirt',
		     item_category: 'round necked t-shirts',
		   }]
		});
		```
	**/
	function logViewCart(params:ViewCartEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		View Item List event. Log this event when the user has been presented with a list of items of a certain category.
		
		Logged event name: `view_item_list`
		
		#### Example
		
		```js
		await firebase.analytics().logViewItemList({
		   item_list_name: 't-shirts',
		});
		```
	**/
	function logViewItemList(params:ViewItemListEventParameters):js.lib.Promise<ts.Undefined>;
	/**
		View Search Results event. Log this event when the user has been presented with the results of a search.
		
		Logged event name: `view_search_results`
		
		#### Example
		
		```js
		await firebase.analytics().logViewSearchResults({
		   search_term: 'clothing',
		});
		```
	**/
	function logViewSearchResults(params:ViewSearchResultsParameters):js.lib.Promise<ts.Undefined>;
	/**
		Adds parameters that will be set on every event logged from the SDK, including automatic ones.
		
		#### Example
		
		```js
		await firebase.analytics().setDefaultEventParameters({
		   userId: '1234',
		});
		```
	**/
	function setDefaultEventParameters(?params:{ }):js.lib.Promise<ts.Undefined>;
	static var prototype : Module;
}