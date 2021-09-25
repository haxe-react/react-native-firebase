package react_native_firebase.app_distribution.firebaseappdistributiontypes;

/**
	The release information returned by the update check when a new version is available.
**/
typedef AppDistributionRelease = {
	/**
		The short bundle version of this build (example 1.0.0).
	**/
	var displayVersion : String;
	/**
		The build number of this build (example: 123).
	**/
	var buildVersion : String;
	/**
		The release notes for this build, possibly null if no release notes were provided.
	**/
	var releaseNotes : Null<String>;
	/**
		The URL for the build.
	**/
	var downloadURL : String;
	/**
		Whether the download URL for this release is expired.
	**/
	var isExpired : Bool;
};