part of youtube_v3_api_client;

class ActivitiesResource_ extends Resource {

  ActivitiesResource_(Client client) : super(client) {
  }

  /**
   * Posts a bulletin for a specific channel. (The user submitting the request must be authorized to act on the channel's behalf.)
   *
   * [request] - Activity to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and contentDetails.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Activity> insert(Activity request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Activity.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the authenticated user's activities.
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
   *
   * [publishedAfter] - The publishedAfter parameter specifies the earliest date and time that an activity could have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be included in the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   *
   * [publishedBefore] - The publishedBefore parameter specifies the date and time before which an activity must have occurred for that activity to be included in the API response. If the parameter value specifies a day, but not a time, then any activities that occurred that day will be excluded from the result set. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format.
   *
   * [regionCode] - The regionCode parameter instructs the API to return results for the specified country. The parameter value is an ISO 3166-1 alpha-2 country code.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ActivityListResponse> list(core.String part, {core.String channelId, core.String home, core.int maxResults, core.bool mine, core.String pageToken, core.String publishedAfter, core.String publishedBefore, core.String regionCode, core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ActivityListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ChannelBannersResource_ extends Resource {

  ChannelBannersResource_(Client client) : super(client) {
  }

  /**
   * Uploads a channel banner to YouTube.
   *
   * [request] - ChannelBannerInsertResponse to send in this request
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ChannelBannerInsertResponse> insert(ChannelBannerInsertResponse request, {core.String content, core.String contentType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "channelBanners/insert";
    var uploadUrl = "/upload/youtube/v3/channelBanners/insert";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new ChannelBannerInsertResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ChannelsResource_ extends Resource {

  ChannelsResource_(Client client) : super(client) {
  }

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
  async.Future<ChannelListResponse> list(core.String part, {core.String categoryId, core.String forUsername, core.String id, core.bool managedByMe, core.int maxResults, core.bool mine, core.String mySubscribers, core.String onBehalfOfContentOwner, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new ChannelListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<Channel> update(Channel request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "channels";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Channel.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class GuideCategoriesResource_ extends Resource {

  GuideCategoriesResource_(Client client) : super(client) {
  }

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
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new GuideCategoryListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LiveBroadcastsResource_ extends Resource {

  LiveBroadcastsResource_(Client client) : super(client) {
  }

  /**
   * Binds a YouTube broadcast to a stream or removes an existing binding between a broadcast and a stream. A broadcast can only be bound to one video stream.
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is being bound to a video stream.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [streamId] - The streamId parameter specifies the unique ID of the video stream that is being bound to a broadcast. If this parameter is omitted, the API will remove any existing binding between the broadcast and a video stream.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> bind(core.String id, core.String part, {core.String streamId, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "liveBroadcasts/bind";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcast.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Control the slate of the broadacast.
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID for the resource that is being deleted.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [displaySlate] - The displaySlate parameter specifies whether to enable or disable the slate.
   *
   * [offsetTimeMs] - The offsetTimeMs parameter specifies a point in time in the video when the specified action (e.g. display a slate) is executed. The property value identifies a positive time offset, in milliseconds, from the beginning of the monitor stream. Though measured in milliseconds, the value is actually an approximation, and YouTube will act as closely as possible to that time. If not specified, it indicates that the action should be performed as soon as possible. If your broadcast stream is not delayed, then it should not be specified. However, if your broadcast stream is delayed, then the parameter can specify the time when the operation should be executed. See the Getting started guide for more details. Note: The offset is measured from the time that the testing phase began.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> control(core.String id, core.String part, {core.bool displaySlate, core.String offsetTimeMs, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "liveBroadcasts/control";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (displaySlate != null) queryParams["displaySlate"] = displaySlate;
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
    if (offsetTimeMs != null) queryParams["offsetTimeMs"] = offsetTimeMs;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcast.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Deletes a broadcast.
   *
   * [id] - The id parameter specifies the YouTube live broadcast ID for the resource that is being deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "liveBroadcasts";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a broadcast.
   *
   * [request] - LiveBroadcast to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part properties that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> insert(LiveBroadcast request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "liveBroadcasts";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcast.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [maxResults] - The maxResults parameter specifies the maximum number of items that should be returned in the result set. Acceptable values are 0 to 50, inclusive. The default value is 5.
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
  async.Future<LiveBroadcastList> list(core.String part, {core.String broadcastStatus, core.String id, core.int maxResults, core.bool mine, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcastList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Changes the status of a YouTube live broadcast and initiates any processes associated with the new status. For example, when you transition a broadcast's status to testing, YouTube starts to transmit video to that broadcast's monitor stream.
   *
   * [broadcastStatus] - The broadcastStatus parameter identifies the state to which the broadcast is changing.
   *   Allowed values:
   *     complete - The broadcast is over. YouTube stops transmitting video.
   *     live - The broadcast is visible to its audience. YouTube transmits video to the broadcast's monitor stream and its broadcast stream.
   *     testing - Start testing the broadcast. YouTube transmits video to the broadcast's monitor stream. Note that you can only transition a broadcast to the testing state if its contentDetails.monitorStream.enableMonitorStream property is set to true.
   *
   * [id] - The id parameter specifies the unique ID of the broadcast that is transitioning to another status.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more liveBroadcast resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, and status.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> transition(core.String broadcastStatus, core.String id, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcast.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<LiveBroadcast> update(LiveBroadcast request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "liveBroadcasts";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveBroadcast.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class LiveStreamsResource_ extends Resource {

  LiveStreamsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a video stream.
   *
   * [id] - The id parameter specifies the YouTube live stream ID for the resource that is being deleted.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveStream.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
  async.Future<LiveStreamList> list(core.String part, {core.String id, core.int maxResults, core.bool mine, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveStreamList.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new LiveStream.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PlaylistItemsResource_ extends Resource {

  PlaylistItemsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a playlist item.
   *
   * [id] - The id parameter specifies the YouTube playlist item ID for the playlist item that is being deleted. In a playlistItem resource, the id property specifies the playlist item's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Adds a resource to a playlist.
   *
   * [request] - PlaylistItem to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and contentDetails.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItem> insert(PlaylistItem request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PlaylistItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns a collection of playlist items that match the API request parameters. You can retrieve all of the playlist items in a specified playlist or retrieve one or more playlist items by their unique IDs.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more playlistItem resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, and contentDetails.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a playlistItem resource, the snippet property contains numerous fields, including the title, description, position, and resourceId properties. As such, if you set part=snippet, the API response will contain all of those properties.
   *
   * [id] - The id parameter specifies a comma-separated list of one or more unique playlist item IDs.
   *
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
   *
   * [playlistId] - The playlistId parameter specifies the unique ID of the playlist for which you want to retrieve playlist items. Note that even though this is an optional parameter, every request to retrieve playlist items must specify a value for either the id parameter or the playlistId parameter.
   *
   * [videoId] - The videoId parameter specifies that the request should return only the playlist items that contain the specified video.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItemListResponse> list(core.String part, {core.String id, core.int maxResults, core.String pageToken, core.String playlistId, core.String videoId, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "playlistItems";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PlaylistItemListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Modifies a playlist item. For example, you could update the item's position in the playlist.
   *
   * [request] - PlaylistItem to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and contentDetails.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a playlist item can specify a start time and end time, which identify the times portion of the video that should play when users watch the video in the playlist. If your request is updating a playlist item that sets these values, and the request's part parameter value includes the contentDetails part, the playlist item's start and end times will be updated to whatever value the request body specifies. If the request body does not specify values, the existing start and end times will be removed and replaced with the default settings.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistItem> update(PlaylistItem request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PlaylistItem.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class PlaylistsResource_ extends Resource {

  PlaylistsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a playlist.
   *
   * [id] - The id parameter specifies the YouTube playlist ID for the playlist that is being deleted. In a playlist resource, the id property specifies the playlist's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "playlists";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Creates a playlist.
   *
   * [request] - Playlist to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet and status.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Playlist> insert(Playlist request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "playlists";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Playlist.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to instruct the API to only return playlists owned by the authenticated user.
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
   *
   * [optParams] - Additional query parameters
   */
  async.Future<PlaylistListResponse> list(core.String part, {core.String channelId, core.String id, core.int maxResults, core.bool mine, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "playlists";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new PlaylistListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [optParams] - Additional query parameters
   */
  async.Future<Playlist> update(Playlist request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "playlists";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Playlist.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SearchResource_ extends Resource {

  SearchResource_(Client client) : super(client) {
  }

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
   * [forContentOwner] - The forContentOwner parameter restricts the search to only retrieve resources owned by the content owner specified by the onBehalfOfContentOwner parameter. The user must be authenticated as a CMS account linked to the specified content owner and onBehalfOfContentOwner must be provided.
   *
   * [forMine] - The forMine parameter restricts the search to only retrieve videos owned by the authenticated user.
   *
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner.
   *
   * [order] - The order parameter specifies the method that will be used to order resources in the API response.
   *   Default: SEARCH_SORT_RELEVANCE
   *   Allowed values:
   *     date - Resources are sorted in reverse chronological order based on the date they were created.
   *     rating - Resources are sorted from highest to lowest rating.
   *     relevance - Resources are sorted based on their relevance to the search query. This is the default value for this parameter.
   *     title - Resources are sorted based on their title.
   *     videoCount - Channels are sorted from highest to lowest number of video uploaded.
   *     viewCount - Resources are sorted from highest to lowest number of views.
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
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
   *     moderate - YouTube will filter some content from search results and, at the least, will filter content that is restricted in your locale. Based on their content, search results could be removed from search results or demoted in search results. Note: The default value for the safeSearch parameter is moderate.
   *     none - YouTube will not perform any filtering on the search result set.
   *     strict - YouTube will try to exclude all restricted content from the search result set. Based on their content, search results could be removed from search results or demoted in search results.
   *
   * [topicId] - The topicId parameter indicates that the API response should only contain resources associated with the specified topic. The value identifies a Freebase topic ID.
   *
   * [type] - The type parameter restricts a search query to only retrieve a particular type of resource.
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
  async.Future<SearchListResponse> list(core.String part, {core.String channelId, core.String channelType, core.bool forContentOwner, core.bool forMine, core.int maxResults, core.String onBehalfOfContentOwner, core.String order, core.String pageToken, core.String publishedAfter, core.String publishedBefore, core.String q, core.String regionCode, core.String relatedToVideoId, core.String safeSearch, core.String topicId, core.String type, core.String videoCaption, core.String videoCategoryId, core.String videoDefinition, core.String videoDimension, core.String videoDuration, core.String videoEmbeddable, core.String videoLicense, core.String videoSyndicated, core.String videoType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "search";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (channelId != null) queryParams["channelId"] = channelId;
    if (channelType != null && !["any", "show"].contains(channelType)) {
      paramErrors.add("Allowed values for channelType: any, show");
    }
    if (channelType != null) queryParams["channelType"] = channelType;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SearchListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class SubscriptionsResource_ extends Resource {

  SubscriptionsResource_(Client client) : super(client) {
  }

  /**
   * Deletes a subscription.
   *
   * [id] - The id parameter specifies the YouTube subscription ID for the resource that is being deleted. In a subscription resource, the id property specifies the YouTube subscription ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Subscription.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
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
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 0
   *   Maximum: 50
   *
   * [mine] - Set this parameter's value to true to retrieve a feed of the authenticated user's subscriptions.
   *
   * [mySubscribers] - Set this parameter's value to true to retrieve a feed of the subscribers of the authenticated user.
   *
   * [order] - The order parameter specifies the method that will be used to sort resources in the API response.
   *   Default: SUBSCRIPTION_ORDER_RELEVANCE
   *   Allowed values:
   *     alphabetical - Sort alphabetically.
   *     relevance - Sort by relevance.
   *     unread - Sort by order of activity.
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
   *
   * [optParams] - Additional query parameters
   */
  async.Future<SubscriptionListResponse> list(core.String part, {core.String channelId, core.String forChannelId, core.String id, core.int maxResults, core.bool mine, core.bool mySubscribers, core.String order, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new SubscriptionListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class ThumbnailsResource_ extends Resource {

  ThumbnailsResource_(Client client) : super(client) {
  }

  /**
   * Uploads a custom video thumbnail to YouTube and sets it for a video.
   *
   * [videoId] - The videoId parameter specifies a YouTube video ID for which the custom video thumbnail is being provided.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ThumbnailListResponse> set(core.String videoId, {core.String content, core.String contentType, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "thumbnails/set";
    var uploadUrl = "/upload/youtube/v3/thumbnails/set";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", null, content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new ThumbnailListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class VideoCategoriesResource_ extends Resource {

  VideoCategoriesResource_(Client client) : super(client) {
  }

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
    var completer = new async.Completer();
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new VideoCategoryListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

class VideosResource_ extends Resource {

  VideosResource_(Client client) : super(client) {
  }

  /**
   * Deletes a YouTube video.
   *
   * [id] - The id parameter specifies the YouTube video ID for the resource that is being deleted. In a video resource, the id property specifies the video's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Get user ratings for videos.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) that are being retrieved. In a video resource, the id property specifies the video's ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VideoGetRatingResponse> getRating(core.String id, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos/getRating";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new VideoGetRatingResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Uploads a video to YouTube and optionally sets the video's metadata.
   *
   * [request] - Video to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, player, statistics, status, and topicDetails. However, not all of those parts contain properties that can be set when setting or updating a video's metadata. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.
   *
   * [content] - Base64 Data of the file content to be uploaded
   *
   * [contentType] - MimeType of the file to be uploaded
   *
   * [autoLevels] - The autoLevels parameter specifies whether the video should be auto-leveled by YouTube.
   *
   * [stabilize] - The stabilize parameter specifies whether the video should be stabilized by YouTube.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Video> insert(Video request, core.String part, {core.String content, core.String contentType, core.bool autoLevels, core.bool stabilize, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos";
    var uploadUrl = "/upload/youtube/v3/videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (autoLevels != null) queryParams["autoLevels"] = autoLevels;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    if (?content && content != null) {
      response = _client.upload(uploadUrl, "POST", request.toString(), content, contentType, urlParams: urlParams, queryParams: queryParams);
    } else {
      response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    }
    response
      .then((data) => completer.complete(new Video.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns a list of videos that match the API request parameters.
   *
   * [part] - The part parameter specifies a comma-separated list of one or more video resource properties that the API response will include. The part names that you can include in the parameter value are id, snippet, contentDetails, player, statistics, status, and topicDetails.

If the parameter identifies a property that contains child properties, the child properties will be included in the response. For example, in a video resource, the snippet property contains the channelId, title, description, tags, and categoryId properties. As such, if you set part=snippet, the API response will contain all of those properties.
   *
   * [id] - The id parameter specifies a comma-separated list of the YouTube video ID(s) for the resource(s) that are being retrieved. In a video resource, the id property specifies the video's ID.
   *
   * [maxResults] - USE_DESCRIPTION --- channels:list:maxResults
   *   Default: 5
   *   Minimum: 1
   *   Maximum: 50
   *
   * [myRating] - Set this parameter's value to like or dislike to instruct the API to only return videos liked or disliked by the authenticated user.
   *   Allowed values:
   *     dislike - Returns only videos disliked by the authenticated user.
   *     like - Returns only video liked by the authenticated user.
   *
   * [onBehalfOfContentOwner] - The onBehalfOfContentOwner parameter indicates that the authenticated user is acting on behalf of the content owner specified in the parameter value. This parameter is intended for YouTube content partners that own and manage many different YouTube channels. It allows content owners to authenticate once and get access to all their video and channel data, without having to provide authentication credentials for each individual channel. The actual CMS account that the user authenticates with needs to be linked to the specified YouTube content owner.
   *
   * [pageToken] - USE_DESCRIPTION --- channels:list:pageToken
   *
   * [optParams] - Additional query parameters
   */
  async.Future<VideoListResponse> list(core.String part, {core.String id, core.int maxResults, core.String myRating, core.String onBehalfOfContentOwner, core.String pageToken, core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id != null) queryParams["id"] = id;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (myRating != null && !["dislike", "like"].contains(myRating)) {
      paramErrors.add("Allowed values for myRating: dislike, like");
    }
    if (myRating != null) queryParams["myRating"] = myRating;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new VideoListResponse.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Like, dislike, or remove rating from a video.
   *
   * [id] - The id parameter specifies the YouTube video ID.
   *
   * [rating] - Specifies the rating to record.
   *   Allowed values:
   *     dislike - Records that the authenticated user disliked the video.
   *     like - Records that the authenticated user liked the video.
   *     none - Removes any vote (like or dislike) the authenticated user had for the video.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> rate(core.String id, core.String rating, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos/rate";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (id == null) paramErrors.add("id is required");
    if (id != null) queryParams["id"] = id;
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(data))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Updates a video's metadata.
   *
   * [request] - Video to send in this request
   *
   * [part] - The part parameter serves two purposes in this operation. It identifies the properties that the write operation will set as well as the properties that the API response will include.

The part names that you can include in the parameter value are snippet, contentDetails, player, statistics, status, and topicDetails.

Note that this method will override the existing values for all of the mutable properties that are contained in any parts that the parameter value specifies. For example, a video's privacy setting is contained in the status part. As such, if your request is updating a private video, and the request's part parameter value includes the status part, the video's privacy setting will be updated to whatever value the request body specifies. If the request body does not specify a value, the existing privacy setting will be removed and the video will revert to the default privacy setting.

In addition, not all of those parts contain properties that can be set when setting or updating a video's metadata. For example, the statistics object encapsulates statistics that YouTube calculates for a video and does not contain values that you can set or modify. If the parameter value specifies a part that does not contain mutable values, that part will still be included in the API response.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Video> update(Video request, core.String part, {core.Map optParams}) {
    var completer = new async.Completer();
    var url = "videos";
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
      completer.completeError(new core.ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Video.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

