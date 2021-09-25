package react.native.firebase;

import react_native_firebase.app.reactnativefirebase.FirebaseApp;
import react_native_firebase.analytics.firebaseanalyticstypes.*;

/**
 * API reference: https://rnfirebase.io/reference/analytics
 */
 
typedef SetCheckoutOptionEventParameters = Dynamic;

@:jsRequire('@react-native-firebase/analytics', 'default')
extern class Analytics {
	@:selfCall
	static function inst(?app:FirebaseApp):Analytics;
	
	function logAddPaymentInfo():Promise<Void>;
	function logAddToCart(params:AddToCartEventParameters):Promise<Void>;
	function logAddToWishlist(params:AddToWishlistEventParameters):Promise<Void>;
	function logAppOpen():Promise<Void>;
	function logBeginCheckout(?params:BeginCheckoutEventParameters):Promise<Void>;
	function logCampaignDetails(params:CampaignDetailsEventParameters):Promise<Void>;
	function logEarnVirtualCurrency(params:EarnVirtualCurrencyEventParameters):Promise<Void>;
	// function logEcommercePurchase(?params:EcommercePurchaseEventParameters):Promise<Void>;
	function logEvent(name:String, ?params:Dynamic):Promise<Void>;
	function logGenerateLead(?params:GenerateLeadEventParameters):Promise<Void>;
	function logJoinGroup(params:JoinGroupEventParameters):Promise<Void>;
	function logLevelEnd(params:LevelEndEventParameters):Promise<Void>;
	function logLevelStart(params:LevelStartEventParameters):Promise<Void>;
	function logLevelUp(params:LevelUpEventParameters):Promise<Void>;
	function logLogin(params:LoginEventParameters):Promise<Void>;
	// function logPresentOffer(params:PresentOfferEventParameters):Promise<Void>;
	// function logPurchaseRefund(?params:PurchaseRefundEventParameters):Promise<Void>;
	function logRemoveFromCart(params:RemoveFromCartEventParameters):Promise<Void>;
	function logSearch(params:SearchEventParameters):Promise<Void>;
	function logSelectContent(params:SelectContentEventParameters):Promise<Void>;
	function logSetCheckoutOption(params:SetCheckoutOptionEventParameters):Promise<Void>;
	function logShare(params:ShareEventParameters):Promise<Void>;
	function logSignUp(params:SignUpEventParameters):Promise<Void>;
	function logSpendVirtualCurrency(params:SpendVirtualCurrencyEventParameters):Promise<Void>;
	function logTutorialBegin():Promise<Void>;
	function logTutorialComplete():Promise<Void>;
	function logUnlockAchievement(params:UnlockAchievementEventParameters):Promise<Void>;
	function logViewItem(params:ViewItemEventParameters):Promise<Void>;
	function logViewItemList(params:ViewItemListEventParameters):Promise<Void>;
	function logViewSearchResults(params:ViewSearchResultsParameters):Promise<Void>;
	function logScreenView(params:ScreenViewParameters):Promise<Void>;
	function resetAnalyticsData():Promise<Void>;
	function setAnalyticsCollectionEnabled(enabled:Bool):Promise<Void>;
	function setMinimumSessionDuration(?milliseconds:Int):Promise<Void>;
	function setSessionTimeoutDuration(?milliseconds:Int):Promise<Void>;
	function setUserId(?id:String):Promise<Void>;
	function setUserProperties(properties:Dynamic<String>):Promise<Void>;
	function setUserProperty(name:String, ?value:String):Promise<Void>;
}