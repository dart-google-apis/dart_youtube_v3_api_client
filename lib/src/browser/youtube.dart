part of youtube_v3_api_browser;

/** Client to access the youtube v3 API */
/** Programmatic access to YouTube features. */
class Youtube extends BrowserClient {

  ActivitiesResource _activities;
  ActivitiesResource get activities => _activities;
  ChannelsResource _channels;
  ChannelsResource get channels => _channels;
  GuideCategoriesResource _guideCategories;
  GuideCategoriesResource get guideCategories => _guideCategories;
  PlaylistItemsResource _playlistItems;
  PlaylistItemsResource get playlistItems => _playlistItems;
  PlaylistsResource _playlists;
  PlaylistsResource get playlists => _playlists;
  SearchResource _search;
  SearchResource get search => _search;
  SubscriptionsResource _subscriptions;
  SubscriptionsResource get subscriptions => _subscriptions;
  VideoCategoriesResource _videoCategories;
  VideoCategoriesResource get videoCategories => _videoCategories;
  VideosResource _videos;
  VideosResource get videos => _videos;

  /** OAuth Scope2: Manage your YouTube account */
  static const String YOUTUBE_SCOPE = "https://www.googleapis.com/auth/youtube";

  /** OAuth Scope2: View your YouTube account */
  static const String YOUTUBE_READONLY_SCOPE = "https://www.googleapis.com/auth/youtube.readonly";

  /** OAuth Scope2: Manage your YouTube videos */
  static const String YOUTUBE_UPLOAD_SCOPE = "https://www.googleapis.com/auth/youtube.upload";

  /** OAuth Scope2: View and manage your assets and associated content on YouTube */
  static const String YOUTUBEPARTNER_SCOPE = "https://www.googleapis.com/auth/youtubepartner";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  String get alt => params["alt"];
  set alt(String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  String get fields => params["fields"];
  set fields(String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  String get key => params["key"];
  set key(String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  String get oauth_token => params["oauth_token"];
  set oauth_token(String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  String get quotaUser => params["quotaUser"];
  set quotaUser(String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  String get userIp => params["userIp"];
  set userIp(String value) => params["userIp"] = value;

  Youtube([OAuth2 auth]) : super(auth) {
    basePath = "/youtube/v3/";
    rootUrl = "https://www.googleapis.com:443/";
    _activities = new ActivitiesResource(this);
    _channels = new ChannelsResource(this);
    _guideCategories = new GuideCategoriesResource(this);
    _playlistItems = new PlaylistItemsResource(this);
    _playlists = new PlaylistsResource(this);
    _search = new SearchResource(this);
    _subscriptions = new SubscriptionsResource(this);
    _videoCategories = new VideoCategoriesResource(this);
    _videos = new VideosResource(this);
  }
}
