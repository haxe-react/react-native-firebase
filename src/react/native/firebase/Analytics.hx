package react.native.firebase;
import haxe.ds.StringMap;

/**
 * API reference: https://rnfirebase.io/reference/analytics
 */

typedef AddToCartEventParameters = Dynamic;
typedef AddToWishlistEventParameters = Dynamic;
typedef BeginCheckoutEventParameters = Dynamic;
typedef CampaignDetailsEventParameters = Dynamic;
typedef EarnVirtualCurrencyEventParameters = Dynamic;
typedef EcommercePurchaseEventParameters = Dynamic;
typedef GenerateLeadEventParameters = Dynamic;
typedef JoinGroupEventParameters = Dynamic;
typedef LevelEndEventParameters = Dynamic;
typedef LevelStartEventParameters = Dynamic;
typedef LevelUpEventParameters = Dynamic;
typedef LoginEventParameters = Dynamic;
typedef PresentOfferEventParameters = Dynamic;
typedef PurchaseRefundEventParameters = Dynamic;
typedef RemoveFromCartEventParameters = Dynamic;
typedef SearchEventParameters = Dynamic;
typedef SelectContentEventParameters = Dynamic;
typedef SetCheckoutOptionEventParameters = Dynamic;
typedef ShareEventParameters = {content_type:String, item_id:String};
typedef SignUpEventParameters = Dynamic;
typedef SpendVirtualCurrencyEventParameters = Dynamic;
typedef UnlockAchievementEventParameters = Dynamic;
typedef ViewItemEventParameters = Dynamic;
typedef ViewItemListEventParameters = Dynamic;
typedef ViewSearchResults = Dynamic;

@:jsRequire('@react-native-firebase/analytics', 'firebase.analytics()')
extern class Analytics {
	static function logAddPaymentInfo():Promise<Void>;
	static function logAddToCart(params:AddToCartEventParameters):Promise<Void>;
	static function logAddToWishlist(params:AddToWishlistEventParameters):Promise<Void>;
	static function logAppOpen():Promise<Void>;
	static function logBeginCheckout(?params:BeginCheckoutEventParameters):Promise<Void>;
	static function logCampaignDetails(params:CampaignDetailsEventParameters):Promise<Void>;
	static function logEarnVirtualCurrency(params:EarnVirtualCurrencyEventParameters):Promise<Void>;
	static function logEcommercePurchase(?params:EcommercePurchaseEventParameters):Promise<Void>;
	static function logEvent(name:String, ?params:StringMap<Dynamic>):Promise<Void>;
	static function logGenerateLead(?params:GenerateLeadEventParameters):Promise<Void>;
	static function logJoinGroup(params:JoinGroupEventParameters):Promise<Void>;
	static function logLevelEnd(params:LevelEndEventParameters):Promise<Void>;
	static function logLevelStart(params:LevelStartEventParameters):Promise<Void>;
	static function logLevelUp(params:LevelUpEventParameters):Promise<Void>;
	static function logLogin(params:LoginEventParameters):Promise<Void>;
	static function logPresentOffer(params:PresentOfferEventParameters):Promise<Void>;
	static function logPurchaseRefund(?params:PurchaseRefundEventParameters):Promise<Void>;
	static function logRemoveFromCart(params:RemoveFromCartEventParameters):Promise<Void>;
	static function logSearch(params:SearchEventParameters):Promise<Void>;
	static function logSelectContent(params:SelectContentEventParameters):Promise<Void>;
	static function logSetCheckoutOption(params:SetCheckoutOptionEventParameters):Promise<Void>;
	static function logShare(params:ShareEventParameters):Promise<Void>;
	static function logSignUp(params:SignUpEventParameters):Promise<Void>;
	static function logSpendVirtualCurrency(params:SpendVirtualCurrencyEventParameters):Promise<Void>;
	static function logTutorialBegin():Promise<Void>;
	static function logTutorialComplete():Promise<Void>;
	static function logUnlockAchievement(params:UnlockAchievementEventParameters):Promise<Void>;
	static function logViewItem(params:ViewItemEventParameters):Promise<Void>;
	static function logViewItemList(params:ViewItemListEventParameters):Promise<Void>;
	static function logViewSearchResults(params:ViewSearchResults):Promise<Void>;
	static function resetAnalyticsData():Promise<Void>;
	static function setAnalyticsCollectionEnabled(enabled:Bool):Promise<Void>;
	static function setCurrentScreen(screenName:String, ?screenClassOverride:String):Promise<Void>;
	static function setMinimumSessionDuration(?milliseconds:Int):Promise<Void>;
	static function setSessionTimeoutDuration(?milliseconds:Int):Promise<Void>;
	static function setUserId(?id:String):Promise<Void>;
	static function setUserProperties(properties:StringMap<String>):Promise<Void>;
	static function setUserProperty(name:String, ?value:String):Promise<Void>;
}