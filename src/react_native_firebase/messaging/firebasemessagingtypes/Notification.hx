package react_native_firebase.messaging.firebasemessagingtypes;

typedef Notification = {
	/**
		The notification title.
	**/
	@:optional
	var title : String;
	/**
		The native localization key for the notification title.
	**/
	@:optional
	var titleLocKey : String;
	/**
		Any arguments that should be formatted into the resource specified by titleLocKey.
	**/
	@:optional
	var titleLocArgs : Array<String>;
	/**
		The notification body content.
	**/
	@:optional
	var body : String;
	/**
		The native localization key for the notification body content.
	**/
	@:optional
	var bodyLocKey : String;
	/**
		Any arguments that should be formatted into the resource specified by bodyLocKey.
	**/
	@:optional
	var bodyLocArgs : Array<String>;
	@:optional
	var ios : {
		/**
			The notification's subtitle.
		**/
		@:optional
		var subtitle : String;
		/**
			The native localization key for the notification's subtitle.
		**/
		@:optional
		var subtitleLocKey : String;
		/**
			Any arguments that should be formatted into the resource specified by subtitleLocKey.
		**/
		@:optional
		var subtitleLocArgs : Array<String>;
		/**
			The value of the badge on the home screen app icon.
			If not specified, the badge is not changed.
			If set to 0, the badge has been removed.
		**/
		@:optional
		var badge : String;
		/**
			The sound played when the notification was delivered on the device (if permissions permit).
		**/
		@:optional
		var sound : ts.AnyOf2<String, NotificationIOSCriticalSound>;
	};
	/**
		Additional Android specific properties set on the notification.
	**/
	@:optional
	var android : {
		/**
			The sound played when the notification was delivered on the device (channel settings permitted).
			
			Set as "default" if the default device notification sound was used.
		**/
		@:optional
		var sound : String;
		/**
			The channel ID set on the notification. If not set, the notification uses the default
			"Miscellaneous" channel set by FCM.
		**/
		@:optional
		var channelId : String;
		/**
			The custom color used to tint the notification content.
		**/
		@:optional
		var color : String;
		/**
			The custom small icon used to display on the notification. If not set, uses the default
			application icon defined in the AndroidManifest file.
		**/
		@:optional
		var smallIcon : String;
		/**
			The custom image was provided and displayed in the notification body.
		**/
		@:optional
		var imageUrl : String;
		/**
			Deep link URL provided to the notification.
		**/
		@:optional
		var link : String;
		/**
			The current unread notification count for this application, managed by the device.
		**/
		@:optional
		var count : Float;
		/**
			Name of the click action set on the notification.
		**/
		@:optional
		var clickAction : String;
		/**
			The notification priority.
			
			Note; on devices which have channel support (Android 8.0 (API level 26) +),
			this value will be ignored. Instead, the channel "importance" level is used.
		**/
		@:optional
		var priority : NotificationAndroidPriority;
		/**
			Ticker text set on the notification.
			
			Ticker text is used for devices with accessibility enabled (e.g. to read out the message).
		**/
		@:optional
		var ticker : String;
		/**
			The visibility of a notification. This value determines how the notification is shown on the users
			devices (e.g. on the lock-screen).
		**/
		@:optional
		var visibility : NotificationAndroidVisibility;
	};
};