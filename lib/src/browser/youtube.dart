part of youtube_v3_api_browser;

/** Client to access the youtube v3 API */
/** Programmatic access to YouTube features. */
class Youtube extends BrowserClient {

  ActivitiesResource_ _activities;
  ActivitiesResource_ get activities => _activities;
  ChannelBannersResource_ _channelBanners;
  ChannelBannersResource_ get channelBanners => _channelBanners;
  ChannelsResource_ _channels;
  ChannelsResource_ get channels => _channels;
  GuideCategoriesResource_ _guideCategories;
  GuideCategoriesResource_ get guideCategories => _guideCategories;
  LiveBroadcastsResource_ _liveBroadcasts;
  LiveBroadcastsResource_ get liveBroadcasts => _liveBroadcasts;
  LiveStreamsResource_ _liveStreams;
  LiveStreamsResource_ get liveStreams => _liveStreams;
  PlaylistItemsResource_ _playlistItems;
  PlaylistItemsResource_ get playlistItems => _playlistItems;
  PlaylistsResource_ _playlists;
  PlaylistsResource_ get playlists => _playlists;
  SearchResource_ _search;
  SearchResource_ get search => _search;
  SubscriptionsResource_ _subscriptions;
  SubscriptionsResource_ get subscriptions => _subscriptions;
  ThumbnailsResource_ _thumbnails;
  ThumbnailsResource_ get thumbnails => _thumbnails;
  VideoCategoriesResource_ _videoCategories;
  VideoCategoriesResource_ get videoCategories => _videoCategories;
  VideosResource_ _videos;
  VideosResource_ get videos => _videos;

  /** OAuth Scope2: Manage your YouTube account */
  static const core.String YOUTUBE_SCOPE = "https://www.googleapis.com/auth/youtube";

  /** OAuth Scope2: View your YouTube account */
  static const core.String YOUTUBE_READONLY_SCOPE = "https://www.googleapis.com/auth/youtube.readonly";

  /** OAuth Scope2: Manage your YouTube videos */
  static const core.String YOUTUBE_UPLOAD_SCOPE = "https://www.googleapis.com/auth/youtube.upload";

  /** OAuth Scope2: View and manage your assets and associated content on YouTube */
  static const core.String YOUTUBEPARTNER_SCOPE = "https://www.googleapis.com/auth/youtubepartner";

  /**
   * Data format for the response.
   * Added as queryParameter for each request.
   */
  core.String get alt => params["alt"];
  set alt(core.String value) => params["alt"] = value;

  /**
   * Selector specifying which fields to include in a partial response.
   * Added as queryParameter for each request.
   */
  core.String get fields => params["fields"];
  set fields(core.String value) => params["fields"] = value;

  /**
   * API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
   * Added as queryParameter for each request.
   */
  core.String get key => params["key"];
  set key(core.String value) => params["key"] = value;

  /**
   * OAuth 2.0 token for the current user.
   * Added as queryParameter for each request.
   */
  core.String get oauth_token => params["oauth_token"];
  set oauth_token(core.String value) => params["oauth_token"] = value;

  /**
   * Returns response with indentations and line breaks.
   * Added as queryParameter for each request.
   */
  core.bool get prettyPrint => params["prettyPrint"];
  set prettyPrint(core.bool value) => params["prettyPrint"] = value;

  /**
   * Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
   * Added as queryParameter for each request.
   */
  core.String get quotaUser => params["quotaUser"];
  set quotaUser(core.String value) => params["quotaUser"] = value;

  /**
   * IP address of the site where the request originates. Use this if you want to enforce per-user limits.
   * Added as queryParameter for each request.
   */
  core.String get userIp => params["userIp"];
  set userIp(core.String value) => params["userIp"] = value;

  Youtube([oauth.OAuth2 auth]) : super(auth) {
    basePath = "/youtube/v3/";
    rootUrl = "https://www.googleapis.com/";
    _activities = new ActivitiesResource_(this);
    _channelBanners = new ChannelBannersResource_(this);
    _channels = new ChannelsResource_(this);
    _guideCategories = new GuideCategoriesResource_(this);
    _liveBroadcasts = new LiveBroadcastsResource_(this);
    _liveStreams = new LiveStreamsResource_(this);
    _playlistItems = new PlaylistItemsResource_(this);
    _playlists = new PlaylistsResource_(this);
    _search = new SearchResource_(this);
    _subscriptions = new SubscriptionsResource_(this);
    _thumbnails = new ThumbnailsResource_(this);
    _videoCategories = new VideoCategoriesResource_(this);
    _videos = new VideosResource_(this);
  }
}
