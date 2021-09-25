package react_native_firebase.analytics.firebaseanalyticstypes;

typedef CampaignDetailsEventParameters = {
	/**
		Used to identify a search engine, newsletter, or other source.
	**/
	var source : String;
	/**
		Used to identify a medium such as email or cost-per-click (cpc).
	**/
	var medium : String;
	/**
		Used for keyword analysis to identify a specific product promotion or strategic campaign.
	**/
	var campaign : String;
	/**
		Used with paid search to supply the keywords for ads.
	**/
	@:optional
	var term : String;
	/**
		Used for A/B testing and content-targeted ads to differentiate ads or links that point to the same URL.
	**/
	@:optional
	var content : String;
	/**
		A campaign detail click ID.
	**/
	@:optional
	var aclid : String;
	@:optional
	var cp1 : String;
};