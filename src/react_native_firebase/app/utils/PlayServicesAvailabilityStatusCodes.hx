package react_native_firebase.app.utils;

/**
	For further information on the status codes available & what they represent, please head over
	to ConnectionResult documentation:
	https://developers.google.com/android/reference/com/google/android/gms/common/ConnectionResult
**/
@:jsRequire("@react-native-firebase/app", "Utils.PlayServicesAvailabilityStatusCodes") @:enum extern abstract PlayServicesAvailabilityStatusCodes(Int) from Int to Int {
	var API_UNAVAILABLE;
	var CANCELED;
	var DEVELOPER_ERROR;
	var DRIVE_EXTERNAL_STORAGE_REQUIRED;
	var INTERNAL_ERROR;
	var INTERRUPTED;
	var INVALID_ACCOUNT;
	var LICENSE_CHECK_FAILED;
	var NETWORK_ERROR;
	var RESOLUTION_REQUIRED;
	var RESTRICTED_PROFILE;
	var SERVICE_DISABLED;
	var SERVICE_INVALID;
	var SERVICE_MISSING;
	var SERVICE_MISSING_PERMISSION;
	var SERVICE_UPDATING;
	var SERVICE_VERSION_UPDATE_REQUIRED;
	var SIGN_IN_FAILED;
	var SIGN_IN_REQUIRED;
	var SUCCESS;
	var TIMEOUT;
}