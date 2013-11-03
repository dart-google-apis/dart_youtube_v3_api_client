part of youtube_v3_api;

class ActivitiesResource_ {

  final Client _client;

  ActivitiesResource_(Client client) :
      _client = client;

  /**
   * Posts a bulletin for a specific channel. (The user submitting the request must be authorized to act on the channel's behalf.)

Note: Even though an activity resource can contain information about actions like a user rating a video or marking a video as a favorite, you need to use other API methods to generate those activity resources. For example, you would use the API's videos.rate() method to rate a video and the playlistItems.insert() method to mark a video as a favorite.
   *
   * [request] - Activity to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and contentDetails.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Activity> insert(Activity request, core.String part, {core.Map optParams}) {
    var url = "activities";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Activity.fromJson(data));
  }

  /**
   * Returns a list of channel activity events that match the request criteria. For example, you can retrieve events associated with a particular channel, events associated with the user's subscriptions and Google+ friends, or the YouTube home page feed, which is customized for each user.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more activity resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and contentDetails.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a activity resource, the snippet property contains other properties that identify the type of activity, a display title for the activity, and so forth. If you set part=snippet, the API response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter specifies a unique YouTube channel ID. The API will then return a list of that channel's activities.
   *
   * [home] - Set this parameter's value to true to retrieve the activity feed that displays on the YouTube home page for the currently authenticated user.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the authenticated user's activities.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [publishedAfter] - The publishedAfter parameter specifies the earliest date and time that an activity could have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be included in the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   *
   * [publishedBefore] - The publishedBefore parameter specifies the date and time before which an activity must have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be excluded from the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   *
   * [regionCode] - The regionCode parameter instructs the API to return results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code. YouTube uses this value when the authorized user's previous activity on YouTube does not provide enough information to generate the activity feed.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ActivityListResponse> list(core.String part, {core.String channelId, core.bool home, core.int maxResults, core.bool mine, core.String pageToken, core.String publishedAfter, core.String publishedBefore, core.String regionCode, core.Map optParams}) {
    var url = "activities";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
    if (home != null) queryParams["home"] = home;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (publishedAfter != null) queryParams["publishedAfter"] = publishedAfter;
    if (publishedBefore != null) queryParams["publishedBefore"] = publishedBefore;
    if (regionCode != null) queryParams["regionCode"] = regionCode;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ActivityListResponse.fromJson(data));
  }
}

class ChannelBannersResource_ {

  final Client _client;

  ChannelBannersResource_(Client client) :
      _client = client;

  /**
   * Uploads a channel banner image to YouTube. This method represents the first two steps in a three-step process to update the banner image for a channel:

- Call the channelBanners.insert method to upload the binary image data to YouTube. The image must have a 16:9 aspect ratio and be at least 2120x1192 pixels.
- Extract the url property's value from the response that the API returns for step 1.
- Call the channels.update method to update the channel's branding settings. Set the brandingSettings.image.bannerExternalUrl property's value to the URL obtained in step 2.
   *
   * [request] - ChannelBannerResource to send in this request
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChannelBannerResource> insert(ChannelBannerResource request, {core.String content, core.String contentType, core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "channelBanners/insert";
    var uploadUrl = "/upload/youtube/v3/channelBanners/insert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new ChannelBannerResource.fromJson(data));
  }
}

class ChannelsResource_ {

  final Client _client;

  ChannelsResource_(Client client) :
      _client = client;

  /**
   * Returns a collection of zero or more channel resources that match the request criteria.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more channel resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, statistics, topicDetails, and invideoPromotion.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a channel resource, the contentDetails property contains other properties, such as the uploads properties. As such, if you set part=contentDetails, the API response will also contain all of those nested properties.
   *
   * [categoryId] - The categoryId parameter specifies a YouTube guide category, thereby requesting YouTube channels associated with that category.
   *
   * [forUsername] - The forUsername parameter specifies a YouTube username, thereby requesting the channel associated with that username.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube channel ID(s) for the resource(s) that are being retrieved. In a channel resource, the id property specifies the channel's YouTube channel ID.
   *
   * [managedByMe] - Set this parameter's value to true to instruct the API to only return channels managed by the content owner that the onBehalfOfContentOwner parameter specifies. The user must be authenticated as a CMS account linked to the specified content owner and onBehalfOfContentOwner must be provided.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to instruct the API to only return channels owned by the authenticated user.
   *
   * [mySubscribers] - Set this parameter's value to true to retrieve a list of channels that subscribed to the authenticated user's channel.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChannelListResponse> list(core.String part, {core.String categoryId, core.String forUsername, core.String id, core.bool managedByMe, core.int maxResults, core.bool mine, core.bool mySubscribers, core.String onBehalfOfContentOwner, core.String pageToken, core.Map optParams}) {
    var url = "channels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (categoryId != null) queryParams["categoryId"] = categoryId;
    if (forUsername != null) queryParams["forUsername"] = forUsername;
    if (id != null) queryParams["id"] = id;
    if (managedByMe != null) queryParams["managedByMe"] = managedByMe;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (mySubscribers != null) queryParams["mySubscribers"] = mySubscribers;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ChannelListResponse.fromJson(data));
  }

  /**
   * Updates a channel's metadata.
   *
   * [request] - Channel to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are id and invideoPromotion.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> update(Channel request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "channels";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Channel.fromJson(data));
  }
}

class GuideCategoriesResource_ {

  final Client _client;

  GuideCategoriesResource_(Client client) :
      _client = client;

  /**
   * Returns a list of categories that can be associated with YouTube channels.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more guideCategory resource properties that the API response will include. The part names that you can include in the parameter value are id and snippet.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a guideCategory resource, the snippet property contains other properties, such as the category's title. If you set part=snippet, the API response will also contain all of those nested properties.
   *
   * [hl] - The hl parameter specifies the language that will be used for text values in the API response.
   *   Default: en-US
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube channel category ID(s) for the resource(s) that are being retrieved. In a guideCategory resource, the id property specifies the YouTube channel category ID.
   *
   * [regionCode] - The regionCode parameter instructs the API to return the list of guide categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<GuideCategoryListResponse> list(core.String part, {core.String hl, core.String id, core.String regionCode, core.Map optParams}) {
    var url = "guideCategories";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (hl != null) queryParams["hl"] = hl;
    if (id != null) queryParams["id"] = id;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (regionCode != null) queryParams["regionCode"] = regionCode;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new GuideCategoryListResponse.fromJson(data));
  }
}

class LiveBroadcastsResource_ {

  final Client _client;

  LiveBroadcastsResource_(Client client) :
      _client = client;

  /**
   * Binds a YouTube broadcast to a stream or removes an existing binding between a broadcast and a stream. A broadcast can only be bound to one video stream.
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is being bound to a video stream.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [streamId] - The streamId parameter specifies the unique ID of the video stream that is being bound to a broadcast. If this parameter is omitted, the API will remove any existing binding between the broadcast and a video stream.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> bind(core.String id, core.String part, {core.String onBehalfOfContentOwner, core.String streamId, core.Map optParams}) {
    var url = "liveBroadcasts/bind";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (streamId != null) queryParams["streamId"] = streamId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Controls the settings for a slate that can be displayed in the broadcast stream.
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID that uniquely identifies the broadcast in which the slate is being updated.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [displaySlate] - The displaySlate parameter specifies whether the slate is being enabled or disabled.
   *
   * [offsetTimeMs] - The offsetTimeMs parameter specifies a positive time offset when the specified slate change will occur. The value is measured in milliseconds from the beginning of the broadcast's monitor stream, which is the time that the testing phase for the broadcast began. Even though it is specified in milliseconds, the value is actually an approximation, and YouTube completes the requested action as closely as possible to that time.

If you do not specify a value for this parameter, then YouTube performs the action as soon as possible. See the Getting started guide for more details.

Important: You should only specify a value for this parameter if your broadcast stream is delayed.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> control(core.String id, core.String part, {core.bool displaySlate, core.String offsetTimeMs, core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "liveBroadcasts/control";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (displaySlate != null) queryParams["displaySlate"] = displaySlate;
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (offsetTimeMs != null) queryParams["offsetTimeMs"] = offsetTimeMs;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Deletes a broadcast.
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID for the resource that is being deleted.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "liveBroadcasts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Creates a broadcast.
   *
   * [request] - LiveBroadcast to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part properties that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> insert(LiveBroadcast request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "liveBroadcasts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Returns a list of YouTube broadcasts that match the API request parameters.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [broadcastStatus] - The broadcastStatus parameter filters the API response to only include broadcasts with the specified status.
   *   Allowed values:
   *     active - Return current live broadcasts.
   *     all - Return all broadcasts.
   *     completed - Return broadcasts that have already ended.
   *     upcoming - Return broadcasts that have not yet started.
   *
   * [id] - The id parameter specifies a comma-separated list of YouTube broadcast IDs that identify the broadcasts being retrieved. In a liveBroadcast resource, the id property specifies the broadcast's ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - The mine parameter can be used to instruct the API to only return broadcasts owned by the authenticated user. Set the parameter value to true to only retrieve your own broadcasts.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcastListResponse> list(core.String part, {core.String broadcastStatus, core.String id, core.int maxResults, core.bool mine, core.String pageToken, core.Map optParams}) {
    var url = "liveBroadcasts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (broadcastStatus != null && !["active", "all", "completed", "upcoming"].contains(broadcastStatus)) {
      paramErrors.add("Allowed values for broadcastStatus: active, all, completed, upcoming");
    }
    if (broadcastStatus != null) queryParams["broadcastStatus"] = broadcastStatus;
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcastListResponse.fromJson(data));
  }

  /**
   * Changes the status of a YouTube live broadcast and initiates any processes associated with the new status. For example, when you transition a broadcast's status to testing, YouTube starts to transmit video to that broadcast's monitor stream. Before calling this method, you should confirm that the value of the status.streamStatus property for the stream bound to your broadcast is active.
   *
   * [broadcastStatus] - The broadcastStatus parameter identifies the state to which the broadcast is changing. Note that to transition a broadcast to either the testing or live state, the status.streamStatus must be active for the stream that the broadcast is bound to.
   *   Allowed values:
   *     complete - The broadcast is over. YouTube stops transmitting video.
   *     live - The broadcast is visible to its audience. YouTube transmits video to the broadcast's monitor stream and its broadcast stream.
   *     testing - Start testing the broadcast. YouTube transmits video to the broadcast's monitor stream. Note that you can only transition a broadcast to the testing state if its contentDetails.monitorStream.enableMonitorStream property is set to true.
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is transitioning to another status.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> transition(core.String broadcastStatus, core.String id, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "liveBroadcasts/transition";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (broadcastStatus == null) paramErrors.add("broadcastStatus is required");
    if (broadcastStatus != null && !["complete", "live", "testing"].contains(broadcastStatus)) {
      paramErrors.add("Allowed values for broadcastStatus: complete, live, testing");
    }
    if (broadcastStatus != null) queryParams["broadcastStatus"] = broadcastStatus;
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcast.fromJson(data));
  }

  /**
   * Updates a broadcast. For example, you could modify the broadcast settings defined in the liveBroadcast resource's contentDetails object.
   *
   * [request] - LiveBroadcast to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part properties that you can include in the parameter value are id, snippet, contentDetails, and status.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a broadcast's privacy status is defined in the status part. As such, if your request is updating a private or unlisted broadcast, and the request's part parameter value includes the status part, the broadcast's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the broadcast will revert to the default privacy setting.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> update(LiveBroadcast request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "liveBroadcasts";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveBroadcast.fromJson(data));
  }
}

class LiveStreamsResource_ {

  final Client _client;

  LiveStreamsResource_(Client client) :
      _client = client;

  /**
   * Deletes a video stream.
   *
   * [id] - The id parameter specifies the YouTube live stream ID for the resource that is being deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "liveStreams";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Creates a video stream. The stream enables you to send your video to YouTube, which can then broadcast the video to your audience.
   *
   * [request] - LiveStream to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part properties that you can include in the parameter value are id, snippet, cdn, and status.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveStream> insert(LiveStream request, core.String part, {core.Map optParams}) {
    var url = "liveStreams";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveStream.fromJson(data));
  }

  /**
   * Returns a list of video streams that match the API request parameters.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveStream resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, cdn, and status.
   *
   * [id] - The id parameter specifies a comma-separated list of YouTube stream IDs that identify the streams being retrieved. In a liveStream resource, the id property specifies the stream's ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set. Acceptable values are 0 to 50, inclusive. The default value is 5.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - The mine parameter can be used to instruct the API to only return streams owned by the authenticated user. Set the parameter value to true to only retrieve your own streams.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveStreamListResponse> list(core.String part, {core.String id, core.int maxResults, core.bool mine, core.String pageToken, core.Map optParams}) {
    var url = "liveStreams";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveStreamListResponse.fromJson(data));
  }

  /**
   * Updates a video stream. If the properties that you want to change cannot be updated, then you need to create a new stream with the proper settings.
   *
   * [request] - LiveStream to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part properties that you can include in the parameter value are id, snippet, cdn, and status.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. If the request body does not specify a value for a mutable property, the existing value for that property will be removed.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveStream> update(LiveStream request, core.String part, {core.Map optParams}) {
    var url = "liveStreams";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new LiveStream.fromJson(data));
  }
}

class PlaylistItemsResource_ {

  final Client _client;

  PlaylistItemsResource_(Client client) :
      _client = client;

  /**
   * Deletes a playlist item.
   *
   * [id] - The id parameter specifies the YouTube playlist item ID for the playlist item that is being deleted. In a playlistItem resource, the id property specifies the playlist item's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "playlistItems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Adds a resource to a playlist.
   *
   * [request] - PlaylistItem to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, and status.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- channels:list:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItem> insert(PlaylistItem request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "playlistItems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlaylistItem.fromJson(data));
  }

  /**
   * Returns a collection of playlist items that match the API request parameters. You can retrieve all of the playlist items in a specified playlist or retrieve one or more playlist items by their unique IDs.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set part=snippet, the API response will contain all of those properties.
   *
   * [id] - The id parameter specifies a comma-separated list of one or more unique playlist item IDs.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- channels:list:onBehalfOfContentOwner
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [playlistId] - The playlistId parameter specifies the unique ID of the playlist for which you want to retrieve playlist items. Note that even though this is an optional parameter, every request to retrieve playlist items must specify a value for either the id parameter or the playlistId parameter.
   *
   * [videoId] - The videoId parameter specifies that the request should return only the playlist items that contain the specified video.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItemListResponse> list(core.String part, {core.String id, core.int maxResults, core.String onBehalfOfContentOwner, core.String pageToken, core.String playlistId, core.String videoId, core.Map optParams}) {
    var url = "playlistItems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (playlistId != null) queryParams["playlistId"] = playlistId;
    if (videoId != null) queryParams["videoId"] = videoId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlaylistItemListResponse.fromJson(data));
  }

  /**
   * Modifies a playlist item. For example, you could update the item's position in the playlist.
   *
   * [request] - PlaylistItem to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, and status.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist item can specify a start time and end time, which identify the times portion of the video that should play when users watch the video in the playlist. If your request is updating a playlist item that sets these values, and the request's part parameter value includes the contentDetails part, the playlist item's start and end times will be updated to whatever value the request body specifies. If the request body does not specify values, the existing start and end times will be removed and replaced with the default settings.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItem> update(PlaylistItem request, core.String part, {core.Map optParams}) {
    var url = "playlistItems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlaylistItem.fromJson(data));
  }
}

class PlaylistsResource_ {

  final Client _client;

  PlaylistsResource_(Client client) :
      _client = client;

  /**
   * Deletes a playlist.
   *
   * [id] - The id parameter specifies the YouTube playlist ID for the playlist that is being deleted. In a playlist resource, the id property specifies the playlist's ID.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "playlists";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Creates a playlist.
   *
   * [request] - Playlist to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and status.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwner
   *
   * [onBehalfOfContentOwnerChannel] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwnerChannel
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Playlist> insert(Playlist request, core.String part, {core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.Map optParams}) {
    var url = "playlists";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (onBehalfOfContentOwnerChannel != null) queryParams["onBehalfOfContentOwnerChannel"] = onBehalfOfContentOwnerChannel;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Playlist.fromJson(data));
  }

  /**
   * Returns a collection of playlists that match the API request parameters. For example, you can retrieve all playlists that the authenticated user owns, or you can retrieve one or more playlists by their unique IDs.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more playlist resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and status.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlist resource, the snippet property contains properties like author, title, description, tags, and timeCreated. As such, if you set part=snippet, the API response will contain all of those properties.
   *
   * [channelId] - This value indicates that the API should only return the specified channel's playlists.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube playlist ID(s) for the resource(s) that are being retrieved. In a playlist resource, the id property specifies the playlist's YouTube playlist ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to instruct the API to only return playlists owned by the authenticated user.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwner
   *
   * [onBehalfOfContentOwnerChannel] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwnerChannel
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistListResponse> list(core.String part, {core.String channelId, core.String id, core.int maxResults, core.bool mine, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String pageToken, core.Map optParams}) {
    var url = "playlists";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (onBehalfOfContentOwnerChannel != null) queryParams["onBehalfOfContentOwnerChannel"] = onBehalfOfContentOwnerChannel;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new PlaylistListResponse.fromJson(data));
  }

  /**
   * Modifies a playlist. For example, you could change a playlist's title, description, or privacy status.
   *
   * [request] - Playlist to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and status.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist's privacy setting is contained in the status part. As such, if your request is updating a private playlist, and the request's part parameter value includes the status part, the playlist's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the playlist will revert to the default privacy setting.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Playlist> update(Playlist request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "playlists";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Playlist.fromJson(data));
  }
}

class SearchResource_ {

  final Client _client;

  SearchResource_(Client client) :
      _client = client;

  /**
   * Returns a collection of search results that match the query parameters specified in the API request. By default, a search result set identifies matching video, channel, and playlist resources, but you can also configure queries to only retrieve a specific type of resource.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more search resource properties that the API response will include. The part names that you can include in the parameter value are id and snippet.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a search result, the snippet property contains other properties that identify the result's title, description, and so forth. If you set part=snippet, the API response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter indicates that the API response should only contain resources created by the channel
   *
   * [channelType] - The channelType parameter lets you restrict a search to a particular type of channel.
   *   Allowed values:
   *     any - Return all channels.
   *     show - Only retrieve shows.
   *
   * [eventType] - The eventType parameter restricts a search to broadcast events.
   *   Allowed values:
   *     completed - Only include completed broadcasts.
   *     live - Only include active broadcasts.
   *     upcoming - Only include upcoming broadcasts.
   *
   * [forContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The forContentOwner parameter restricts the search to only retrieve resources owned by the content owner specified by the onBehalfOfContentOwner parameter. The user must be authenticated using a CMS account linked to the specified content owner and onBehalfOfContentOwner must be provided.
   *
   * [forMine] - The forMine parameter restricts the search to only retrieve videos owned by the authenticated user. If you set this parameter to true, then the type parameter's value must also be set to video.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [order] - The order parameter specifies the method that will be used to order resources in the API response.
   *   Default: SEARCH_SORT_RELEVANCE
   *   Allowed values:
   *     date - Resources are sorted in reverse chronological order based on the date they were created.
   *     rating - Resources are sorted from highest to lowest rating.
   *     relevance - Resources are sorted based on their relevance to the search query. This is the default value for this parameter.
   *     title - Resources are sorted alphabetically by title.
   *     videoCount - Channels are sorted in descending order of their number of uploaded videos.
   *     viewCount - Resources are sorted from highest to lowest number of views.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [publishedAfter] - The publishedAfter parameter indicates that the API response should only contain resources created after the specified time. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
   *
   * [publishedBefore] - The publishedBefore parameter indicates that the API response should only contain resources created before the specified time. The value is an RFC 3339 formatted date-time value (1970-01-01T00:00:00Z).
   *
   * [q] - The q parameter specifies the query term to search for.
   *
   * [regionCode] - The regionCode parameter instructs the API to return search results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
   *
   * [relatedToVideoId] - The relatedToVideoId parameter retrieves a list of videos that are related to the video that the parameter value identifies. The parameter value must be set to a YouTube video ID and, if you are using this parameter, the type parameter must be set to video.
   *
   * [safeSearch] - The safeSearch parameter indicates whether the search results should include restricted content as well as standard content.
   *   Allowed values:
   *     moderate - YouTube will filter some content from search results and, at the least, will filter content that is restricted in your locale. Based on their content, search results could be removed from search results or demoted in search results. This is the default parameter value.
   *     none - YouTube will not filter the search result set.
   *     strict - YouTube will try to exclude all restricted content from the search result set. Based on their content, search results could be removed from search results or demoted in search results.
   *
   * [topicId] - The topicId parameter indicates that the API response should only contain resources associated with the specified topic. The value identifies a Freebase topic ID.
   *
   * [type] - The type parameter restricts a search query to only retrieve a particular type of resource. The value is a comma-separated list of resource types.
   *   Default: video,channel,playlist
   *
   * [videoCaption] - The videoCaption parameter indicates whether the API should filter video search results based on whether they have captions.
   *   Allowed values:
   *     any - Do not filter results based on caption availability.
   *     closedCaption - Only include videos that have captions.
   *     none - Only include videos that do not have captions.
   *
   * [videoCategoryId] - The videoCategoryId parameter filters video search results based on their category.
   *
   * [videoDefinition] - The videoDefinition parameter lets you restrict a search to only include either high definition (HD) or standard definition (SD) videos. HD videos are available for playback in at least 720p, though higher resolutions, like 1080p, might also be available.
   *   Allowed values:
   *     any - Return all videos, regardless of their resolution.
   *     high - Only retrieve HD videos.
   *     standard - Only retrieve videos in standard definition.
   *
   * [videoDimension] - The videoDimension parameter lets you restrict a search to only retrieve 2D or 3D videos.
   *   Allowed values:
   *     2d - Restrict search results to exclude 3D videos.
   *     3d - Restrict search results to only include 3D videos.
   *     any - Include both 3D and non-3D videos in returned results. This is the default value.
   *
   * [videoDuration] - The videoDuration parameter filters video search results based on their duration.
   *   Allowed values:
   *     any - Do not filter video search results based on their duration. This is the default value.
   *     long - Only include videos longer than 20 minutes.
   *     medium - Only include videos that are between four and 20 minutes long (inclusive).
   *     short - Only include videos that are less than four minutes long.
   *
   * [videoEmbeddable] - The videoEmbeddable parameter lets you to restrict a search to only videos that can be embedded into a webpage.
   *   Allowed values:
   *     any - Return all videos, embeddable or not.
   *     true - Only retrieve embeddable videos.
   *
   * [videoLicense] - The videoLicense parameter filters search results to only include videos with a particular license. YouTube lets video uploaders choose to attach either the Creative Commons license or the standard YouTube license to each of their videos.
   *   Allowed values:
   *     any - Return all videos, regardless of which license they have, that match the query parameters.
   *     creativeCommon - Only return videos that have a Creative Commons license. Users can reuse videos with this license in other videos that they create. Learn more.
   *     youtube - Only return videos that have the standard YouTube license.
   *
   * [videoSyndicated] - The videoSyndicated parameter lets you to restrict a search to only videos that can be played outside youtube.com.
   *   Allowed values:
   *     any - Return all videos, syndicated or not.
   *     true - Only retrieve syndicated videos.
   *
   * [videoType] - The videoType parameter lets you restrict a search to a particular type of videos.
   *   Allowed values:
   *     any - Return all videos.
   *     episode - Only retrieve episodes of shows.
   *     movie - Only retrieve movies.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SearchListResponse> list(core.String part, {core.String channelId, core.String channelType, core.String eventType, core.bool forContentOwner, core.bool forMine, core.int maxResults, core.String onBehalfOfContentOwner, core.String order, core.String pageToken, core.String publishedAfter, core.String publishedBefore, core.String q, core.String regionCode, core.String relatedToVideoId, core.String safeSearch, core.String topicId, core.String type, core.String videoCaption, core.String videoCategoryId, core.String videoDefinition, core.String videoDimension, core.String videoDuration, core.String videoEmbeddable, core.String videoLicense, core.String videoSyndicated, core.String videoType, core.Map optParams}) {
    var url = "search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
    if (channelType != null && !["any", "show"].contains(channelType)) {
      paramErrors.add("Allowed values for channelType: any, show");
    }
    if (channelType != null) queryParams["channelType"] = channelType;
    if (eventType != null && !["completed", "live", "upcoming"].contains(eventType)) {
      paramErrors.add("Allowed values for eventType: completed, live, upcoming");
    }
    if (eventType != null) queryParams["eventType"] = eventType;
    if (forContentOwner != null) queryParams["forContentOwner"] = forContentOwner;
    if (forMine != null) queryParams["forMine"] = forMine;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (order != null && !["date", "rating", "relevance", "title", "videoCount", "viewCount"].contains(order)) {
      paramErrors.add("Allowed values for order: date, rating, relevance, title, videoCount, viewCount");
    }
    if (order != null) queryParams["order"] = order;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (publishedAfter != null) queryParams["publishedAfter"] = publishedAfter;
    if (publishedBefore != null) queryParams["publishedBefore"] = publishedBefore;
    if (q != null) queryParams["q"] = q;
    if (regionCode != null) queryParams["regionCode"] = regionCode;
    if (relatedToVideoId != null) queryParams["relatedToVideoId"] = relatedToVideoId;
    if (safeSearch != null && !["moderate", "none", "strict"].contains(safeSearch)) {
      paramErrors.add("Allowed values for safeSearch: moderate, none, strict");
    }
    if (safeSearch != null) queryParams["safeSearch"] = safeSearch;
    if (topicId != null) queryParams["topicId"] = topicId;
    if (type != null) queryParams["type"] = type;
    if (videoCaption != null && !["any", "closedCaption", "none"].contains(videoCaption)) {
      paramErrors.add("Allowed values for videoCaption: any, closedCaption, none");
    }
    if (videoCaption != null) queryParams["videoCaption"] = videoCaption;
    if (videoCategoryId != null) queryParams["videoCategoryId"] = videoCategoryId;
    if (videoDefinition != null && !["any", "high", "standard"].contains(videoDefinition)) {
      paramErrors.add("Allowed values for videoDefinition: any, high, standard");
    }
    if (videoDefinition != null) queryParams["videoDefinition"] = videoDefinition;
    if (videoDimension != null && !["2d", "3d", "any"].contains(videoDimension)) {
      paramErrors.add("Allowed values for videoDimension: 2d, 3d, any");
    }
    if (videoDimension != null) queryParams["videoDimension"] = videoDimension;
    if (videoDuration != null && !["any", "long", "medium", "short"].contains(videoDuration)) {
      paramErrors.add("Allowed values for videoDuration: any, long, medium, short");
    }
    if (videoDuration != null) queryParams["videoDuration"] = videoDuration;
    if (videoEmbeddable != null && !["any", "true"].contains(videoEmbeddable)) {
      paramErrors.add("Allowed values for videoEmbeddable: any, true");
    }
    if (videoEmbeddable != null) queryParams["videoEmbeddable"] = videoEmbeddable;
    if (videoLicense != null && !["any", "creativeCommon", "youtube"].contains(videoLicense)) {
      paramErrors.add("Allowed values for videoLicense: any, creativeCommon, youtube");
    }
    if (videoLicense != null) queryParams["videoLicense"] = videoLicense;
    if (videoSyndicated != null && !["any", "true"].contains(videoSyndicated)) {
      paramErrors.add("Allowed values for videoSyndicated: any, true");
    }
    if (videoSyndicated != null) queryParams["videoSyndicated"] = videoSyndicated;
    if (videoType != null && !["any", "episode", "movie"].contains(videoType)) {
      paramErrors.add("Allowed values for videoType: any, episode, movie");
    }
    if (videoType != null) queryParams["videoType"] = videoType;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SearchListResponse.fromJson(data));
  }
}

class SubscriptionsResource_ {

  final Client _client;

  SubscriptionsResource_(Client client) :
      _client = client;

  /**
   * Deletes a subscription.
   *
   * [id] - The id parameter specifies the YouTube subscription ID for the resource that is being deleted. In a subscription resource, the id property specifies the YouTube subscription ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Adds a subscription for the authenticated user's channel.
   *
   * [request] - Subscription to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and contentDetails.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Subscription> insert(Subscription request, core.String part, {core.Map optParams}) {
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Subscription.fromJson(data));
  }

  /**
   * Returns subscription resources that match the API request criteria.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more subscription resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and contentDetails.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a subscription resource, the snippet property contains other properties, such as a display title for the subscription. If you set part=snippet, the API response will also contain all of those nested properties.
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID. The API will only return that channel's subscriptions.
   *
   * [forChannelId] - The forChannelId parameter specifies a comma-separated list of channel IDs. The API response will then only contain subscriptions matching those channels.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube subscription ID(s) for the resource(s) that are being retrieved. In a subscription resource, the id property specifies the YouTube subscription ID.
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the authenticated user's subscriptions.
   *
   * [mySubscribers] - Set this parameter's value to true to retrieve a feed of the subscribers of the authenticated user.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - USE_DESCRIPTION --- videos:insert:onBehalfOfContentOwnerChannel
   *
   * [order] - The order parameter specifies the method that will be used to sort resources in the API response.
   *   Default: SUBSCRIPTION_ORDER_RELEVANCE
   *   Allowed values:
   *     alphabetical - Sort alphabetically.
   *     relevance - Sort by relevance.
   *     unread - Sort by order of activity.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SubscriptionListResponse> list(core.String part, {core.String channelId, core.String forChannelId, core.String id, core.int maxResults, core.bool mine, core.bool mySubscribers, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.String order, core.String pageToken, core.Map optParams}) {
    var url = "subscriptions";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
    if (forChannelId != null) queryParams["forChannelId"] = forChannelId;
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (mine != null) queryParams["mine"] = mine;
    if (mySubscribers != null) queryParams["mySubscribers"] = mySubscribers;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (onBehalfOfContentOwnerChannel != null) queryParams["onBehalfOfContentOwnerChannel"] = onBehalfOfContentOwnerChannel;
    if (order != null && !["alphabetical", "relevance", "unread"].contains(order)) {
      paramErrors.add("Allowed values for order: alphabetical, relevance, unread");
    }
    if (order != null) queryParams["order"] = order;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new SubscriptionListResponse.fromJson(data));
  }
}

class ThumbnailsResource_ {

  final Client _client;

  ThumbnailsResource_(Client client) :
      _client = client;

  /**
   * Uploads a custom video thumbnail to YouTube and sets it for a video.
   *
   * [videoId] - The videoId parameter specifies a YouTube video ID for which the custom video thumbnail is being provided.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- channels:list:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ThumbnailSetResponse> set(core.String videoId, {core.String content, core.String contentType, core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "thumbnails/set";
    var uploadUrl = "/upload/youtube/v3/thumbnails/set";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (videoId == null) paramErrors.add("videoId is required");
    if (videoId != null) queryParams["videoId"] = videoId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new ThumbnailSetResponse.fromJson(data));
  }
}

class VideoCategoriesResource_ {

  final Client _client;

  VideoCategoriesResource_(Client client) :
      _client = client;

  /**
   * Returns a list of categories that can be associated with YouTube videos.
   *
   * [part] - The part parameter specifies the videoCategory resource parts that the API response will include. Supported values are id and snippet.
   *
   * [hl] - The hl parameter specifies the language that should be used for text values in the API response.
   *   Default: en_US
   *
   * [id] - The id parameter specifies a comma-separated list of video category IDs for the resources that you are retrieving.
   *
   * [regionCode] - The regionCode parameter instructs the API to return the list of video categories available in the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VideoCategoryListResponse> list(core.String part, {core.String hl, core.String id, core.String regionCode, core.Map optParams}) {
    var url = "videoCategories";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (hl != null) queryParams["hl"] = hl;
    if (id != null) queryParams["id"] = id;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (regionCode != null) queryParams["regionCode"] = regionCode;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VideoCategoryListResponse.fromJson(data));
  }
}

class VideosResource_ {

  final Client _client;

  VideosResource_(Client client) :
      _client = client;

  /**
   * Deletes a YouTube video.
   *
   * [id] - The id parameter specifies the YouTube video ID for the resource that is being deleted. In a video resource, the id property specifies the video's ID.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves the ratings that the authorized user gave to a list of specified videos.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) for which you are retrieving rating data. In a video resource, the id property specifies the video's ID.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VideoGetRatingResponse> getRating(core.String id, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "videos/getRating";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VideoGetRatingResponse.fromJson(data));
  }

  /**
   * Uploads a video to YouTube and optionally sets the video's metadata.
   *
   * [request] - Video to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, fileDetails, player, processingDetails, recordingDetails, statistics, status, suggestions, and topicDetails. However, not all of those parts contain properties that can be set when setting or updating a video's metadata. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [autoLevels] - The autoLevels parameter indicates whether YouTube should automatically enhance the video's lighting and color.
   *
   * [notifySubscribers] - The notifySubscribers parameter indicates whether YouTube should send notification to subscribers about the inserted video.
   *   Default: true
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [onBehalfOfContentOwnerChannel] - This parameter can only be used in a properly authorized request. Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwnerChannel parameter specifies the YouTube channel ID of the channel to which a video is being added. This parameter is required when a request specifies a value for the onBehalfOfContentOwner parameter, and it can only be used in conjunction with that parameter. In addition, the request must be authorized using a CMS account that is linked to the content owner that the onBehalfOfContentOwner parameter specifies. Finally, the channel that the onBehalfOfContentOwnerChannel parameter value specifies must be linked to the content owner that the onBehalfOfContentOwner parameter specifies.

This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and perform actions on behalf of the channel specified in the parameter value, without having to provide authentication credentials for each separate channel.
   *
   * [stabilize] - The stabilize parameter indicates whether YouTube should adjust the video to remove shaky camera motions.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Video> insert(Video request, core.String part, {core.String content, core.String contentType, core.bool autoLevels, core.bool notifySubscribers, core.String onBehalfOfContentOwner, core.String onBehalfOfContentOwnerChannel, core.bool stabilize, core.Map optParams}) {
    var url = "videos";
    var uploadUrl = "/upload/youtube/v3/videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoLevels != null) queryParams["autoLevels"] = autoLevels;
    if (notifySubscribers != null) queryParams["notifySubscribers"] = notifySubscribers;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (onBehalfOfContentOwnerChannel != null) queryParams["onBehalfOfContentOwnerChannel"] = onBehalfOfContentOwnerChannel;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (stabilize != null) queryParams["stabilize"] = stabilize;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response
      .then((data) => new Video.fromJson(data));
  }

  /**
   * Returns a list of videos that match the API request parameters.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more video resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, fileDetails, player, processingDetails, recordingDetails, statistics, status, suggestions, and topicDetails.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set part=snippet, the API response will contain all of those properties.
   *
   * [chart] - The chart parameter identifies the chart that you want to retrieve.
   *   Allowed values:
   *     mostPopular - Return the most popular videos for the specified content region and video category.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) that are being retrieved. In a video resource, the id property specifies the video's ID.
   *
   * [locale] - DEPRECATED
   *
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set.

Note: This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter.
   *   Default: 5
   *   Minimum: 1
   *   Maximum: 50
   *
   * [myRating] - Set this parameter's value to like or dislike to instruct the API to only return videos liked or disliked by the authenticated user.
   *   Allowed values:
   *     dislike - Returns only videos disliked by the authenticated user.
   *     like - Returns only video liked by the authenticated user.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [pageToken] - The pageToken parameter identifies a specific page in the result set that should be returned. In an API response, the nextPageToken and prevPageToken properties identify other pages that could be retrieved.

Note: This parameter is supported for use in conjunction with the myRating parameter, but it is not supported for use in conjunction with the id parameter.
   *
   * [regionCode] - The regionCode parameter instructs the API to select a video chart available in the specified region. If using this parameter, chart must also be set. The parameter value is an ISO 3166-1 alpha-2 country code.
   *
   * [videoCategoryId] - The videoCategoryId parameter identifies the video category for which the chart should be retrieved. This parameter can only be used in conjunction with the chart parameter. By default, charts are not restricted to a particular category.
   *   Default: 0
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VideoListResponse> list(core.String part, {core.String chart, core.String id, core.String locale, core.int maxResults, core.String myRating, core.String onBehalfOfContentOwner, core.String pageToken, core.String regionCode, core.String videoCategoryId, core.Map optParams}) {
    var url = "videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (chart != null && !["mostPopular"].contains(chart)) {
      paramErrors.add("Allowed values for chart: mostPopular");
    }
    if (chart != null) queryParams["chart"] = chart;
    if (id != null) queryParams["id"] = id;
    if (locale != null) queryParams["locale"] = locale;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (myRating != null && !["dislike", "like"].contains(myRating)) {
      paramErrors.add("Allowed values for myRating: dislike, like");
    }
    if (myRating != null) queryParams["myRating"] = myRating;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (regionCode != null) queryParams["regionCode"] = regionCode;
    if (videoCategoryId != null) queryParams["videoCategoryId"] = videoCategoryId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new VideoListResponse.fromJson(data));
  }

  /**
   * Add a like or dislike rating to a video or remove a rating from a video.
   *
   * [id] - The id parameter specifies the YouTube video ID of the video that is being rated or having its rating removed.
   *
   * [rating] - Specifies the rating to record.
   *   Allowed values:
   *     dislike - Records that the authenticated user disliked the video.
   *     like - Records that the authenticated user liked the video.
   *     none - Removes any rating that the authenticated user had previously set for the video.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> rate(core.String id, core.String rating, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "videos/rate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (rating == null) paramErrors.add("rating is required");
    if (rating != null && !["dislike", "like", "none"].contains(rating)) {
      paramErrors.add("Allowed values for rating: dislike, like, none");
    }
    if (rating != null) queryParams["rating"] = rating;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Updates a video's metadata.
   *
   * [request] - Video to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, fileDetails, player, processingDetails, recordingDetails, statistics, status, suggestions, and topicDetails.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a video's privacy setting is contained in the status part. As such, if your request is updating a private video, and the request's part parameter value includes the status part, the video's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the video will revert to the default privacy setting.

In addition, not all of those parts contain properties that can be set when setting or updating a video's metadata. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.
   *
   * [onBehalfOfContentOwner] - Note: This parameter is intended exclusively for YouTube content partners.

The onBehalfOfContentOwner parameter indicates that the request's authorization credentials identify a YouTube CMS user who is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with must be linked to the specified YouTube content owner.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Video> update(Video request, core.String part, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (part == null) paramErrors.add("part is required");
    if (part != null) queryParams["part"] = part;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Video.fromJson(data));
  }
}

class WatermarksResource_ {

  final Client _client;

  WatermarksResource_(Client client) :
      _client = client;

  /**
   * Uploads a watermark image to YouTube and sets it for a channel.
   *
   * [request] - InvideoBranding to send in this request
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID for which the watermark is being provided.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- channels:list:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> set(InvideoBranding request, core.String channelId, {core.String content, core.String contentType, core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "watermarks/set";
    var uploadUrl = "/upload/youtube/v3/watermarks/set";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId == null) paramErrors.add("channelId is required");
    if (channelId != null) queryParams["channelId"] = channelId;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    if (content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    return response;
  }

  /**
   * Deletes a watermark.
   *
   * [channelId] - The channelId parameter specifies a YouTube channel ID for which the watermark is being unset.
   *
   * [onBehalfOfContentOwner] - USE_DESCRIPTION --- channels:list:onBehalfOfContentOwner
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> unset(core.String channelId, {core.String onBehalfOfContentOwner, core.Map optParams}) {
    var url = "watermarks/unset";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId == null) paramErrors.add("channelId is required");
    if (channelId != null) queryParams["channelId"] = channelId;
    if (onBehalfOfContentOwner != null) queryParams["onBehalfOfContentOwner"] = onBehalfOfContentOwner;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response;
  }
}

