part of youtube_v3_api_client;

/** Rights management policy for YouTube resources. */
class AccessPolicy {

  /** The value of allowed indicates whether the access to the policy is allowed or denied by default. */
  core.bool allowed;

  /** A list of region codes that identify countries where the default policy do not apply. */
  core.List<core.String> exception;

  /** Create new AccessPolicy from JSON data */
  AccessPolicy.fromJson(core.Map json) {
    if (json.containsKey("allowed")) {
      allowed = json["allowed"];
    }
    if (json.containsKey("exception")) {
      exception = [];
      json["exception"].forEach((item) {
        exception.add(item);
      });
    }
  }

  /** Create JSON Object for AccessPolicy */
  core.Map toJson() {
    var output = new core.Map();

    if (allowed != null) {
      output["allowed"] = allowed;
    }
    if (exception != null) {
      output["exception"] = new core.List();
      exception.forEach((item) {
        output["exception"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of AccessPolicy */
  core.String toString() => JSON.stringify(this.toJson());

}

/** An activity resource contains information about an action that a particular channel, or user, has taken on YouTube.The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded. */
class Activity {

  /** The contentDetails object contains information about the content associated with the activity. For example, if the snippet.type value is videoRated, then the contentDetails object's content identifies the rated video. */
  ActivityContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the activity. */
  core.String id;

  /** The kind, fixed to "youtube#activity". */
  core.String kind;

  /** The snippet object contains basic details about the activity, including the activity's type and group ID. */
  ActivitySnippet snippet;

  /** Create new Activity from JSON data */
  Activity.fromJson(core.Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new ActivityContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new ActivitySnippet.fromJson(json["snippet"]);
    }
  }

  /** Create JSON Object for Activity */
  core.Map toJson() {
    var output = new core.Map();

    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }

    return output;
  }

  /** Return String representation of Activity */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of an activity: the video that was shared, the channel that was subscribed to, etc. */
class ActivityContentDetails {

  /** The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin. */
  ActivityContentDetailsBulletin bulletin;

  /** The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem. */
  ActivityContentDetailsChannelItem channelItem;

  /** The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment. */
  ActivityContentDetailsComment comment;

  /** The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite. */
  ActivityContentDetailsFavorite favorite;

  /** The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like. */
  ActivityContentDetailsLike like;

  /** The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem. */
  ActivityContentDetailsPlaylistItem playlistItem;

  /** The promotedItem object contains details about a resource which is being promoted. This property is only present if the snippet.type is promotedItem. */
  ActivityContentDetailsPromotedItem promotedItem;

  /** The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation. */
  ActivityContentDetailsRecommendation recommendation;

  /** The social object contains details about a social network post. This property is only present if the snippet.type is social. */
  ActivityContentDetailsSocial social;

  /** The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription. */
  ActivityContentDetailsSubscription subscription;

  /** The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload. */
  ActivityContentDetailsUpload upload;

  /** Create new ActivityContentDetails from JSON data */
  ActivityContentDetails.fromJson(core.Map json) {
    if (json.containsKey("bulletin")) {
      bulletin = new ActivityContentDetailsBulletin.fromJson(json["bulletin"]);
    }
    if (json.containsKey("channelItem")) {
      channelItem = new ActivityContentDetailsChannelItem.fromJson(json["channelItem"]);
    }
    if (json.containsKey("comment")) {
      comment = new ActivityContentDetailsComment.fromJson(json["comment"]);
    }
    if (json.containsKey("favorite")) {
      favorite = new ActivityContentDetailsFavorite.fromJson(json["favorite"]);
    }
    if (json.containsKey("like")) {
      like = new ActivityContentDetailsLike.fromJson(json["like"]);
    }
    if (json.containsKey("playlistItem")) {
      playlistItem = new ActivityContentDetailsPlaylistItem.fromJson(json["playlistItem"]);
    }
    if (json.containsKey("promotedItem")) {
      promotedItem = new ActivityContentDetailsPromotedItem.fromJson(json["promotedItem"]);
    }
    if (json.containsKey("recommendation")) {
      recommendation = new ActivityContentDetailsRecommendation.fromJson(json["recommendation"]);
    }
    if (json.containsKey("social")) {
      social = new ActivityContentDetailsSocial.fromJson(json["social"]);
    }
    if (json.containsKey("subscription")) {
      subscription = new ActivityContentDetailsSubscription.fromJson(json["subscription"]);
    }
    if (json.containsKey("upload")) {
      upload = new ActivityContentDetailsUpload.fromJson(json["upload"]);
    }
  }

  /** Create JSON Object for ActivityContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (bulletin != null) {
      output["bulletin"] = bulletin.toJson();
    }
    if (channelItem != null) {
      output["channelItem"] = channelItem.toJson();
    }
    if (comment != null) {
      output["comment"] = comment.toJson();
    }
    if (favorite != null) {
      output["favorite"] = favorite.toJson();
    }
    if (like != null) {
      output["like"] = like.toJson();
    }
    if (playlistItem != null) {
      output["playlistItem"] = playlistItem.toJson();
    }
    if (promotedItem != null) {
      output["promotedItem"] = promotedItem.toJson();
    }
    if (recommendation != null) {
      output["recommendation"] = recommendation.toJson();
    }
    if (social != null) {
      output["social"] = social.toJson();
    }
    if (subscription != null) {
      output["subscription"] = subscription.toJson();
    }
    if (upload != null) {
      output["upload"] = upload.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about a channel bulletin post. */
class ActivityContentDetailsBulletin {

  /** The resourceId object contains information that identifies the resource associated with a bulletin post. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsBulletin from JSON data */
  ActivityContentDetailsBulletin.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsBulletin */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsBulletin */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about a resource which was added to a channel. */
class ActivityContentDetailsChannelItem {

  /** The resourceId object contains information that identifies the resource that was added to the channel. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsChannelItem from JSON data */
  ActivityContentDetailsChannelItem.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsChannelItem */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsChannelItem */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a resource that received a comment. */
class ActivityContentDetailsComment {

  /** The resourceId object contains information that identifies the resource associated with the comment. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsComment from JSON data */
  ActivityContentDetailsComment.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsComment */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsComment */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a video that was marked as a favorite video. */
class ActivityContentDetailsFavorite {

  /** The resourceId object contains information that identifies the resource that was marked as a favorite. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsFavorite from JSON data */
  ActivityContentDetailsFavorite.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsFavorite */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsFavorite */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a resource that received a positive (like) rating. */
class ActivityContentDetailsLike {

  /** The resourceId object contains information that identifies the rated resource. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsLike from JSON data */
  ActivityContentDetailsLike.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsLike */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsLike */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a new playlist item. */
class ActivityContentDetailsPlaylistItem {

  /** The value that YouTube uses to uniquely identify the playlist. */
  core.String playlistId;

  /** ID of the item within the playlist. */
  core.String playlistItemId;

  /** The resourceId object contains information about the resource that was added to the playlist. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsPlaylistItem from JSON data */
  ActivityContentDetailsPlaylistItem.fromJson(core.Map json) {
    if (json.containsKey("playlistId")) {
      playlistId = json["playlistId"];
    }
    if (json.containsKey("playlistItemId")) {
      playlistItemId = json["playlistItemId"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsPlaylistItem */
  core.Map toJson() {
    var output = new core.Map();

    if (playlistId != null) {
      output["playlistId"] = playlistId;
    }
    if (playlistItemId != null) {
      output["playlistItemId"] = playlistItemId;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsPlaylistItem */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about a resource which is being promoted. */
class ActivityContentDetailsPromotedItem {

  /** The URL the client should fetch to request a promoted item. */
  core.String adTag;

  /** The URL the client should ping to indicate that the user clicked through on this promoted item. */
  core.String clickTrackingUrl;

  /** The URL the client should ping to indicate that the user was shown this promoted item. */
  core.String creativeViewUrl;

  /** The type of call-to-action, a message to the user indicating action that can be taken. */
  core.String ctaType;

  /** The text description to accompany the promoted item. */
  core.String descriptionText;

  /** The URL the client should direct the user to, if the user chooses to visit the advertiser's website. */
  core.String destinationUrl;

  /** The ID that YouTube uses to uniquely identify the promoted video. */
  core.String videoId;

  /** Create new ActivityContentDetailsPromotedItem from JSON data */
  ActivityContentDetailsPromotedItem.fromJson(core.Map json) {
    if (json.containsKey("adTag")) {
      adTag = json["adTag"];
    }
    if (json.containsKey("clickTrackingUrl")) {
      clickTrackingUrl = json["clickTrackingUrl"];
    }
    if (json.containsKey("creativeViewUrl")) {
      creativeViewUrl = json["creativeViewUrl"];
    }
    if (json.containsKey("ctaType")) {
      ctaType = json["ctaType"];
    }
    if (json.containsKey("descriptionText")) {
      descriptionText = json["descriptionText"];
    }
    if (json.containsKey("destinationUrl")) {
      destinationUrl = json["destinationUrl"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for ActivityContentDetailsPromotedItem */
  core.Map toJson() {
    var output = new core.Map();

    if (adTag != null) {
      output["adTag"] = adTag;
    }
    if (clickTrackingUrl != null) {
      output["clickTrackingUrl"] = clickTrackingUrl;
    }
    if (creativeViewUrl != null) {
      output["creativeViewUrl"] = creativeViewUrl;
    }
    if (ctaType != null) {
      output["ctaType"] = ctaType;
    }
    if (descriptionText != null) {
      output["descriptionText"] = descriptionText;
    }
    if (destinationUrl != null) {
      output["destinationUrl"] = destinationUrl;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsPromotedItem */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information that identifies the recommended resource. */
class ActivityContentDetailsRecommendation {

  /** The reason that the resource is recommended to the user. */
  core.String reason;

  /** The resourceId object contains information that identifies the recommended resource. */
  ResourceId resourceId;

  /** The seedResourceId object contains information about the resource that caused the recommendation. */
  ResourceId seedResourceId;

  /** Create new ActivityContentDetailsRecommendation from JSON data */
  ActivityContentDetailsRecommendation.fromJson(core.Map json) {
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
    if (json.containsKey("seedResourceId")) {
      seedResourceId = new ResourceId.fromJson(json["seedResourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsRecommendation */
  core.Map toJson() {
    var output = new core.Map();

    if (reason != null) {
      output["reason"] = reason;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }
    if (seedResourceId != null) {
      output["seedResourceId"] = seedResourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsRecommendation */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about a social network post. */
class ActivityContentDetailsSocial {

  /** The author of the social network post. */
  core.String author;

  /** An image of the post's author. */
  core.String imageUrl;

  /** The URL of the social network post. */
  core.String referenceUrl;

  /** The resourceId object encapsulates information that identifies the resource associated with a social network post. */
  ResourceId resourceId;

  /** The name of the social network. */
  core.String type;

  /** Create new ActivityContentDetailsSocial from JSON data */
  ActivityContentDetailsSocial.fromJson(core.Map json) {
    if (json.containsKey("author")) {
      author = json["author"];
    }
    if (json.containsKey("imageUrl")) {
      imageUrl = json["imageUrl"];
    }
    if (json.containsKey("referenceUrl")) {
      referenceUrl = json["referenceUrl"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ActivityContentDetailsSocial */
  core.Map toJson() {
    var output = new core.Map();

    if (author != null) {
      output["author"] = author;
    }
    if (imageUrl != null) {
      output["imageUrl"] = imageUrl;
    }
    if (referenceUrl != null) {
      output["referenceUrl"] = referenceUrl;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsSocial */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a channel that a user subscribed to. */
class ActivityContentDetailsSubscription {

  /** The resourceId object contains information that identifies the resource that the user subscribed to. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsSubscription from JSON data */
  ActivityContentDetailsSubscription.fromJson(core.Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsSubscription */
  core.Map toJson() {
    var output = new core.Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsSubscription */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about the uploaded video. */
class ActivityContentDetailsUpload {

  /** The ID that YouTube uses to uniquely identify the uploaded video. */
  core.String videoId;

  /** Create new ActivityContentDetailsUpload from JSON data */
  ActivityContentDetailsUpload.fromJson(core.Map json) {
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for ActivityContentDetailsUpload */
  core.Map toJson() {
    var output = new core.Map();

    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsUpload */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of activities returned as a response to youtube.activities.list calls. */
class ActivityListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of activities, or events, that match the request criteria. */
  core.List<Activity> items;

  /** The type of the API response. For this operation, the value will be youtube#activityListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new ActivityListResponse from JSON data */
  ActivityListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Activity.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for ActivityListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of ActivityListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about an activity, including title, description, thumbnails, activity type and group. */
class ActivitySnippet {

  /** The ID that YouTube uses to uniquely identify the channel associated with the activity. */
  core.String channelId;

  /** Channel title for the channel responsible for this activity */
  core.String channelTitle;

  /** The description of the resource primarily associated with the activity. */
  core.String description;

  /** The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value. */
  core.String groupId;

  /** The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The title of the resource primarily associated with the activity. */
  core.String title;

  /** The type of activity that the resource describes. */
  core.String type;

  /** Create new ActivitySnippet from JSON data */
  ActivitySnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("groupId")) {
      groupId = json["groupId"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ActivitySnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (groupId != null) {
      output["groupId"] = groupId;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ActivitySnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A channel resource contains information about a YouTube channel. */
class Channel {

  /** The brandingSettings object encapsulates information about the branding of the channel. */
  ChannelBrandingSettings brandingSettings;

  /** The contentDetails object encapsulates information about the channel's content. */
  ChannelContentDetails contentDetails;

  /** The conversionPings object encapsulates information about conversion pings that need to be respected by the channel. */
  ChannelConversionPings conversionPings;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the channel. */
  core.String id;

  /** The invideoPromotion object encapsulates information about promotion campaign associated with the channel. */
  InvideoPromotion invideoPromotion;

  /** The kind, fixed to "youtube#channel". */
  core.String kind;

  /** The snippet object contains basic details about the channel, such as its title, description, and thumbnail images. */
  ChannelSnippet snippet;

  /** The statistics object encapsulates statistics for the channel. */
  ChannelStatistics statistics;

  /** The status object encapsulates information about the privacy status of the channel. */
  ChannelStatus status;

  /** The topicDetails object encapsulates information about Freebase topics associated with the channel. */
  ChannelTopicDetails topicDetails;

  /** Create new Channel from JSON data */
  Channel.fromJson(core.Map json) {
    if (json.containsKey("brandingSettings")) {
      brandingSettings = new ChannelBrandingSettings.fromJson(json["brandingSettings"]);
    }
    if (json.containsKey("contentDetails")) {
      contentDetails = new ChannelContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("conversionPings")) {
      conversionPings = new ChannelConversionPings.fromJson(json["conversionPings"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("invideoPromotion")) {
      invideoPromotion = new InvideoPromotion.fromJson(json["invideoPromotion"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new ChannelSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("statistics")) {
      statistics = new ChannelStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new ChannelStatus.fromJson(json["status"]);
    }
    if (json.containsKey("topicDetails")) {
      topicDetails = new ChannelTopicDetails.fromJson(json["topicDetails"]);
    }
  }

  /** Create JSON Object for Channel */
  core.Map toJson() {
    var output = new core.Map();

    if (brandingSettings != null) {
      output["brandingSettings"] = brandingSettings.toJson();
    }
    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (conversionPings != null) {
      output["conversionPings"] = conversionPings.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (invideoPromotion != null) {
      output["invideoPromotion"] = invideoPromotion.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }
    if (topicDetails != null) {
      output["topicDetails"] = topicDetails.toJson();
    }

    return output;
  }

  /** Return String representation of Channel */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A channel banner returned as the response to a channel_banner.insert call. */
class ChannelBannerResource {

  /** Etag of this resource. */
  core.String etag;

  /** The kind, fixed to "youtube#channelBannerResource". */
  core.String kind;

  /** The URL of this banner image. */
  core.String url;

  /** Create new ChannelBannerResource from JSON data */
  ChannelBannerResource.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ChannelBannerResource */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ChannelBannerResource */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Branding properties of a YouTube channel. */
class ChannelBrandingSettings {

  /** Branding properties for the channel view. */
  ChannelSettings channel;

  /** Additional experimental branding properties. */
  core.List<PropertyValue> hints;

  /** Branding properties for branding images. */
  ImageSettings image;

  /** Branding properties for the watch page. */
  WatchSettings watch;

  /** Create new ChannelBrandingSettings from JSON data */
  ChannelBrandingSettings.fromJson(core.Map json) {
    if (json.containsKey("channel")) {
      channel = new ChannelSettings.fromJson(json["channel"]);
    }
    if (json.containsKey("hints")) {
      hints = [];
      json["hints"].forEach((item) {
        hints.add(new PropertyValue.fromJson(item));
      });
    }
    if (json.containsKey("image")) {
      image = new ImageSettings.fromJson(json["image"]);
    }
    if (json.containsKey("watch")) {
      watch = new WatchSettings.fromJson(json["watch"]);
    }
  }

  /** Create JSON Object for ChannelBrandingSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (channel != null) {
      output["channel"] = channel.toJson();
    }
    if (hints != null) {
      output["hints"] = new core.List();
      hints.forEach((item) {
        output["hints"].add(item.toJson());
      });
    }
    if (image != null) {
      output["image"] = image.toJson();
    }
    if (watch != null) {
      output["watch"] = watch.toJson();
    }

    return output;
  }

  /** Return String representation of ChannelBrandingSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a channel. */
class ChannelContentDetails {

  /** The googlePlusUserId object identifies the Google+ profile ID associated with this channel. */
  core.String googlePlusUserId;
  ChannelContentDetailsRelatedPlaylists relatedPlaylists;

  /** Create new ChannelContentDetails from JSON data */
  ChannelContentDetails.fromJson(core.Map json) {
    if (json.containsKey("googlePlusUserId")) {
      googlePlusUserId = json["googlePlusUserId"];
    }
    if (json.containsKey("relatedPlaylists")) {
      relatedPlaylists = new ChannelContentDetailsRelatedPlaylists.fromJson(json["relatedPlaylists"]);
    }
  }

  /** Create JSON Object for ChannelContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (googlePlusUserId != null) {
      output["googlePlusUserId"] = googlePlusUserId;
    }
    if (relatedPlaylists != null) {
      output["relatedPlaylists"] = relatedPlaylists.toJson();
    }

    return output;
  }

  /** Return String representation of ChannelContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

class ChannelContentDetailsRelatedPlaylists {

  /** The ID of the playlist that contains the channel"s favorite videos. Use the  playlistItems.insert and  playlistItems.delete to add or remove items from that list. */
  core.String favorites;

  /** The ID of the playlist that contains the channel"s liked videos. Use the   playlistItems.insert and  playlistItems.delete to add or remove items from that list. */
  core.String likes;

  /** The ID of the playlist that contains the channel"s uploaded videos. Use the  videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos. */
  core.String uploads;

  /** The ID of the playlist that contains the channel"s watch history. Use the  playlistItems.insert and  playlistItems.delete to add or remove items from that list. */
  core.String watchHistory;

  /** The ID of the playlist that contains the channel"s watch later playlist. Use the playlistItems.insert and  playlistItems.delete to add or remove items from that list. */
  core.String watchLater;

  /** Create new ChannelContentDetailsRelatedPlaylists from JSON data */
  ChannelContentDetailsRelatedPlaylists.fromJson(core.Map json) {
    if (json.containsKey("favorites")) {
      favorites = json["favorites"];
    }
    if (json.containsKey("likes")) {
      likes = json["likes"];
    }
    if (json.containsKey("uploads")) {
      uploads = json["uploads"];
    }
    if (json.containsKey("watchHistory")) {
      watchHistory = json["watchHistory"];
    }
    if (json.containsKey("watchLater")) {
      watchLater = json["watchLater"];
    }
  }

  /** Create JSON Object for ChannelContentDetailsRelatedPlaylists */
  core.Map toJson() {
    var output = new core.Map();

    if (favorites != null) {
      output["favorites"] = favorites;
    }
    if (likes != null) {
      output["likes"] = likes;
    }
    if (uploads != null) {
      output["uploads"] = uploads;
    }
    if (watchHistory != null) {
      output["watchHistory"] = watchHistory;
    }
    if (watchLater != null) {
      output["watchLater"] = watchLater;
    }

    return output;
  }

  /** Return String representation of ChannelContentDetailsRelatedPlaylists */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping. */
class ChannelConversionPing {

  /** Defines the context of the ping. */
  core.String context;

  /** The url (without the schema) that the player shall send the ping to. It's at caller's descretion to decide which schema to use (http vs https) Example of a returned url: //googleads.g.doubleclick.net/pagead/ viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D cview%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA&labe=default The caller must append biscotti authentication (ms param in case of mobile, for example) to this ping. */
  core.String conversionUrl;

  /** Create new ChannelConversionPing from JSON data */
  ChannelConversionPing.fromJson(core.Map json) {
    if (json.containsKey("context")) {
      context = json["context"];
    }
    if (json.containsKey("conversionUrl")) {
      conversionUrl = json["conversionUrl"];
    }
  }

  /** Create JSON Object for ChannelConversionPing */
  core.Map toJson() {
    var output = new core.Map();

    if (context != null) {
      output["context"] = context;
    }
    if (conversionUrl != null) {
      output["conversionUrl"] = conversionUrl;
    }

    return output;
  }

  /** Return String representation of ChannelConversionPing */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The conversionPings object encapsulates information about conversion pings that need to be respected by the channel. */
class ChannelConversionPings {

  /** Pings that the app shall fire (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping. */
  core.List<ChannelConversionPing> pings;

  /** Create new ChannelConversionPings from JSON data */
  ChannelConversionPings.fromJson(core.Map json) {
    if (json.containsKey("pings")) {
      pings = [];
      json["pings"].forEach((item) {
        pings.add(new ChannelConversionPing.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ChannelConversionPings */
  core.Map toJson() {
    var output = new core.Map();

    if (pings != null) {
      output["pings"] = new core.List();
      pings.forEach((item) {
        output["pings"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ChannelConversionPings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of channels returned as the response to a youtube.channels.list call. */
class ChannelListResponse {

  /** The ETag for the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of channels that match the request criteria. */
  core.List<Channel> items;

  /** The type of the API response. For this operation, the value will be youtube#channelListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new ChannelListResponse from JSON data */
  ChannelListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Channel.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for ChannelListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of ChannelListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Branding properties for the channel view. */
class ChannelSettings {

  /** Which content tab users should see when viewing the channel. */
  core.String defaultTab;

  /** Specifies the channel description. */
  core.String description;

  /** Title for the featured channels tab. */
  core.String featuredChannelsTitle;

  /** The list of featured channels. */
  core.List<core.String> featuredChannelsUrls;

  /** Lists keywords associated with the channel, comma-separated. */
  core.String keywords;

  /** Whether user-submitted comments left on the channel page need to be approved by the channel owner to be publicly visible. */
  core.bool moderateComments;

  /** A prominent color that can be rendered on this channel page. */
  core.String profileColor;

  /** Whether the tab to browse the videos should be displayed. */
  core.bool showBrowseView;

  /** Whether related channels should be proposed. */
  core.bool showRelatedChannels;

  /** Specifies the channel title. */
  core.String title;

  /** The ID for a Google Analytics account to track and measure traffic to the channels. */
  core.String trackingAnalyticsAccountId;

  /** The trailer of the channel, for users that are not subscribers. */
  core.String unsubscribedTrailer;

  /** Create new ChannelSettings from JSON data */
  ChannelSettings.fromJson(core.Map json) {
    if (json.containsKey("defaultTab")) {
      defaultTab = json["defaultTab"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("featuredChannelsTitle")) {
      featuredChannelsTitle = json["featuredChannelsTitle"];
    }
    if (json.containsKey("featuredChannelsUrls")) {
      featuredChannelsUrls = [];
      json["featuredChannelsUrls"].forEach((item) {
        featuredChannelsUrls.add(item);
      });
    }
    if (json.containsKey("keywords")) {
      keywords = json["keywords"];
    }
    if (json.containsKey("moderateComments")) {
      moderateComments = json["moderateComments"];
    }
    if (json.containsKey("profileColor")) {
      profileColor = json["profileColor"];
    }
    if (json.containsKey("showBrowseView")) {
      showBrowseView = json["showBrowseView"];
    }
    if (json.containsKey("showRelatedChannels")) {
      showRelatedChannels = json["showRelatedChannels"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("trackingAnalyticsAccountId")) {
      trackingAnalyticsAccountId = json["trackingAnalyticsAccountId"];
    }
    if (json.containsKey("unsubscribedTrailer")) {
      unsubscribedTrailer = json["unsubscribedTrailer"];
    }
  }

  /** Create JSON Object for ChannelSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultTab != null) {
      output["defaultTab"] = defaultTab;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (featuredChannelsTitle != null) {
      output["featuredChannelsTitle"] = featuredChannelsTitle;
    }
    if (featuredChannelsUrls != null) {
      output["featuredChannelsUrls"] = new core.List();
      featuredChannelsUrls.forEach((item) {
        output["featuredChannelsUrls"].add(item);
      });
    }
    if (keywords != null) {
      output["keywords"] = keywords;
    }
    if (moderateComments != null) {
      output["moderateComments"] = moderateComments;
    }
    if (profileColor != null) {
      output["profileColor"] = profileColor;
    }
    if (showBrowseView != null) {
      output["showBrowseView"] = showBrowseView;
    }
    if (showRelatedChannels != null) {
      output["showRelatedChannels"] = showRelatedChannels;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (trackingAnalyticsAccountId != null) {
      output["trackingAnalyticsAccountId"] = trackingAnalyticsAccountId;
    }
    if (unsubscribedTrailer != null) {
      output["unsubscribedTrailer"] = unsubscribedTrailer;
    }

    return output;
  }

  /** Return String representation of ChannelSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a channel, including title, description and thumbnails. */
class ChannelSnippet {

  /** The description of the channel. */
  core.String description;

  /** The date and time that the channel was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The channel's title. */
  core.String title;

  /** Create new ChannelSnippet from JSON data */
  ChannelSnippet.fromJson(core.Map json) {
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for ChannelSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of ChannelSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Statistics about a channel: number of subscribers, number of videos in the channel, etc. */
class ChannelStatistics {

  /** The number of comments for the channel. */
  core.String commentCount;

  /** The number of subscribers that the channel has. */
  core.String subscriberCount;

  /** The number of videos uploaded to the channel. */
  core.String videoCount;

  /** The number of times the channel has been viewed. */
  core.String viewCount;

  /** Create new ChannelStatistics from JSON data */
  ChannelStatistics.fromJson(core.Map json) {
    if (json.containsKey("commentCount")) {
      commentCount = json["commentCount"];
    }
    if (json.containsKey("subscriberCount")) {
      subscriberCount = json["subscriberCount"];
    }
    if (json.containsKey("videoCount")) {
      videoCount = json["videoCount"];
    }
    if (json.containsKey("viewCount")) {
      viewCount = json["viewCount"];
    }
  }

  /** Create JSON Object for ChannelStatistics */
  core.Map toJson() {
    var output = new core.Map();

    if (commentCount != null) {
      output["commentCount"] = commentCount;
    }
    if (subscriberCount != null) {
      output["subscriberCount"] = subscriberCount;
    }
    if (videoCount != null) {
      output["videoCount"] = videoCount;
    }
    if (viewCount != null) {
      output["viewCount"] = viewCount;
    }

    return output;
  }

  /** Return String representation of ChannelStatistics */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for the status part of a channel. */
class ChannelStatus {

  /** If true, then the user is linked to either a YouTube username or G+ account. Otherwise, the user doesn't have a public YouTube identity. */
  core.bool isLinked;

  /** Privacy status of the channel. */
  core.String privacyStatus;

  /** Create new ChannelStatus from JSON data */
  ChannelStatus.fromJson(core.Map json) {
    if (json.containsKey("isLinked")) {
      isLinked = json["isLinked"];
    }
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for ChannelStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (isLinked != null) {
      output["isLinked"] = isLinked;
    }
    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of ChannelStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Freebase topic information related to the channel. */
class ChannelTopicDetails {

  /** A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API. */
  core.List<core.String> topicIds;

  /** Create new ChannelTopicDetails from JSON data */
  ChannelTopicDetails.fromJson(core.Map json) {
    if (json.containsKey("topicIds")) {
      topicIds = [];
      json["topicIds"].forEach((item) {
        topicIds.add(item);
      });
    }
  }

  /** Create JSON Object for ChannelTopicDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (topicIds != null) {
      output["topicIds"] = new core.List();
      topicIds.forEach((item) {
        output["topicIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ChannelTopicDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Ratings schemes. The country-specific ratings are mostly for movies and shows. */
class ContentRating {

  /** Rating system in Australia - Australian Classification Board */
  core.String acbRating;

  /** British Board of Film Classification */
  core.String bbfcRating;

  /** Rating system in India - Central Board of Film Certification */
  core.String cbfcRating;

  /** Canadian Home Video Rating System */
  core.String chvrsRating;

  /** Rating system in Brazil - Department of Justice, Rating, Titles and Qualification */
  core.String djctqRating;

  /** Rating system in Japan - Eiga Rinri Kanri Iinkai */
  core.String eirinRating;

  /** Rating system in France - French Minister of Culture */
  core.String fmocRating;

  /** Rating system in Germany - Voluntary Self Regulation of the Movie Industry */
  core.String fskRating;

  /** Rating system in Spain - Instituto de Cinematografia y de las Artes Audiovisuales */
  core.String icaaRating;

  /** Rating system in South Korea - Korea Media Rating Board */
  core.String kmrbRating;

  /** Motion Picture Association of America rating for the content. */
  core.String mpaaRating;

  /** Rating system in New Zealand - Office of Film and Literature Classification */
  core.String oflcRating;

  /** Rating system in Mexico - General Directorate of Radio, Television and Cinematography */
  core.String rtcRating;

  /** Rating system in Russia */
  core.String russiaRating;

  /** TV Parental Guidelines rating of the content. */
  core.String tvpgRating;

  /** Internal YouTube rating. */
  core.String ytRating;

  /** Create new ContentRating from JSON data */
  ContentRating.fromJson(core.Map json) {
    if (json.containsKey("acbRating")) {
      acbRating = json["acbRating"];
    }
    if (json.containsKey("bbfcRating")) {
      bbfcRating = json["bbfcRating"];
    }
    if (json.containsKey("cbfcRating")) {
      cbfcRating = json["cbfcRating"];
    }
    if (json.containsKey("chvrsRating")) {
      chvrsRating = json["chvrsRating"];
    }
    if (json.containsKey("djctqRating")) {
      djctqRating = json["djctqRating"];
    }
    if (json.containsKey("eirinRating")) {
      eirinRating = json["eirinRating"];
    }
    if (json.containsKey("fmocRating")) {
      fmocRating = json["fmocRating"];
    }
    if (json.containsKey("fskRating")) {
      fskRating = json["fskRating"];
    }
    if (json.containsKey("icaaRating")) {
      icaaRating = json["icaaRating"];
    }
    if (json.containsKey("kmrbRating")) {
      kmrbRating = json["kmrbRating"];
    }
    if (json.containsKey("mpaaRating")) {
      mpaaRating = json["mpaaRating"];
    }
    if (json.containsKey("oflcRating")) {
      oflcRating = json["oflcRating"];
    }
    if (json.containsKey("rtcRating")) {
      rtcRating = json["rtcRating"];
    }
    if (json.containsKey("russiaRating")) {
      russiaRating = json["russiaRating"];
    }
    if (json.containsKey("tvpgRating")) {
      tvpgRating = json["tvpgRating"];
    }
    if (json.containsKey("ytRating")) {
      ytRating = json["ytRating"];
    }
  }

  /** Create JSON Object for ContentRating */
  core.Map toJson() {
    var output = new core.Map();

    if (acbRating != null) {
      output["acbRating"] = acbRating;
    }
    if (bbfcRating != null) {
      output["bbfcRating"] = bbfcRating;
    }
    if (cbfcRating != null) {
      output["cbfcRating"] = cbfcRating;
    }
    if (chvrsRating != null) {
      output["chvrsRating"] = chvrsRating;
    }
    if (djctqRating != null) {
      output["djctqRating"] = djctqRating;
    }
    if (eirinRating != null) {
      output["eirinRating"] = eirinRating;
    }
    if (fmocRating != null) {
      output["fmocRating"] = fmocRating;
    }
    if (fskRating != null) {
      output["fskRating"] = fskRating;
    }
    if (icaaRating != null) {
      output["icaaRating"] = icaaRating;
    }
    if (kmrbRating != null) {
      output["kmrbRating"] = kmrbRating;
    }
    if (mpaaRating != null) {
      output["mpaaRating"] = mpaaRating;
    }
    if (oflcRating != null) {
      output["oflcRating"] = oflcRating;
    }
    if (rtcRating != null) {
      output["rtcRating"] = rtcRating;
    }
    if (russiaRating != null) {
      output["russiaRating"] = russiaRating;
    }
    if (tvpgRating != null) {
      output["tvpgRating"] = tvpgRating;
    }
    if (ytRating != null) {
      output["ytRating"] = ytRating;
    }

    return output;
  }

  /** Return String representation of ContentRating */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Geographical coordinates of a point, in WGS84. */
class GeoPoint {

  /** Altitude above the reference ellipsoid, in meters. */
  core.num altitude;

  /** Latitude in degrees. */
  core.num latitude;

  /** Longitude in degrees. */
  core.num longitude;

  /** Create new GeoPoint from JSON data */
  GeoPoint.fromJson(core.Map json) {
    if (json.containsKey("altitude")) {
      altitude = json["altitude"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for GeoPoint */
  core.Map toJson() {
    var output = new core.Map();

    if (altitude != null) {
      output["altitude"] = altitude;
    }
    if (latitude != null) {
      output["latitude"] = latitude;
    }
    if (longitude != null) {
      output["longitude"] = longitude;
    }

    return output;
  }

  /** Return String representation of GeoPoint */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A guideCategory resource identifies a category that YouTube algorithmically assigns based on a channel's content or other indicators, such as the channel's popularity. The list is similar to video categories, with the difference being that a video's uploader can assign a video category but only YouTube can assign a channel category. */
class GuideCategory {

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the guide category. */
  core.String id;

  /** The kind, fixed to "youtube#guideCategory". */
  core.String kind;

  /** The snippet object contains basic details about the category, such as its title. */
  GuideCategorySnippet snippet;

  /** Create new GuideCategory from JSON data */
  GuideCategory.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new GuideCategorySnippet.fromJson(json["snippet"]);
    }
  }

  /** Create JSON Object for GuideCategory */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }

    return output;
  }

  /** Return String representation of GuideCategory */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of guide categories returned as the response to a youtube.guideCategories.list call. */
class GuideCategoryListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of categories that can be associated with YouTube channels. In this map, the category ID is the map key, and its value is the corresponding guideCategory resource. */
  core.List<GuideCategory> items;

  /** The type of the API response. For this operation, the value will be youtube#guideCategoryListResponse. */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new GuideCategoryListResponse from JSON data */
  GuideCategoryListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new GuideCategory.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for GuideCategoryListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of GuideCategoryListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a guide category. */
class GuideCategorySnippet {
  core.String channelId;

  /** Description of the guide category. */
  core.String title;

  /** Create new GuideCategorySnippet from JSON data */
  GuideCategorySnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for GuideCategorySnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of GuideCategorySnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Branding properties for images associated with the channel. */
class ImageSettings {

  /** The URL for the background image shown on the video watch page. The image should be 1200px by 615px, with a maximum file size of 128k. */
  LocalizedProperty backgroundImageUrl;

  /** This is used only in update requests; if it's set, we use this URL to generate all of the above banner URLs. */
  core.String bannerExternalUrl;

  /** Banner image. Desktop size (1060x175). */
  core.String bannerImageUrl;

  /** Banner image. Mobile size high resolution (1440x395). */
  core.String bannerMobileExtraHdImageUrl;

  /** Banner image. Mobile size high resolution (1280x360). */
  core.String bannerMobileHdImageUrl;

  /** Banner image. Mobile size (640x175). */
  core.String bannerMobileImageUrl;

  /** Banner image. Mobile size low resolution (320x88). */
  core.String bannerMobileLowImageUrl;

  /** Banner image. Mobile size medium/high resolution (960x263). */
  core.String bannerMobileMediumHdImageUrl;

  /** Banner image. Tablet size extra high resolution (2560x424). */
  core.String bannerTabletExtraHdImageUrl;

  /** Banner image. Tablet size high resolution (2276x377). */
  core.String bannerTabletHdImageUrl;

  /** Banner image. Tablet size (1707x283). */
  core.String bannerTabletImageUrl;

  /** Banner image. Tablet size low resolution (1138x188). */
  core.String bannerTabletLowImageUrl;

  /** Banner image. TV size (2120x1192). */
  core.String bannerTvImageUrl;

  /** The image map script for the large banner image. */
  LocalizedProperty largeBrandedBannerImageImapScript;

  /** The URL for the 854px by 70px image that appears below the video player in the expanded video view of the video watch page. */
  LocalizedProperty largeBrandedBannerImageUrl;

  /** The image map script for the small banner image. */
  LocalizedProperty smallBrandedBannerImageImapScript;

  /** The URL for the 640px by 70px banner image that appears below the video player in the default view of the video watch page. */
  LocalizedProperty smallBrandedBannerImageUrl;

  /** The URL for a 1px by 1px tracking pixel that can be used to collect statistics for views of the channel or video pages. */
  core.String trackingImageUrl;

  /** The URL for the image that appears above the top-left corner of the video player. This is a 25-pixel-high image with a flexible width that cannot exceed 170 pixels. */
  core.String watchIconImageUrl;

  /** Create new ImageSettings from JSON data */
  ImageSettings.fromJson(core.Map json) {
    if (json.containsKey("backgroundImageUrl")) {
      backgroundImageUrl = new LocalizedProperty.fromJson(json["backgroundImageUrl"]);
    }
    if (json.containsKey("bannerExternalUrl")) {
      bannerExternalUrl = json["bannerExternalUrl"];
    }
    if (json.containsKey("bannerImageUrl")) {
      bannerImageUrl = json["bannerImageUrl"];
    }
    if (json.containsKey("bannerMobileExtraHdImageUrl")) {
      bannerMobileExtraHdImageUrl = json["bannerMobileExtraHdImageUrl"];
    }
    if (json.containsKey("bannerMobileHdImageUrl")) {
      bannerMobileHdImageUrl = json["bannerMobileHdImageUrl"];
    }
    if (json.containsKey("bannerMobileImageUrl")) {
      bannerMobileImageUrl = json["bannerMobileImageUrl"];
    }
    if (json.containsKey("bannerMobileLowImageUrl")) {
      bannerMobileLowImageUrl = json["bannerMobileLowImageUrl"];
    }
    if (json.containsKey("bannerMobileMediumHdImageUrl")) {
      bannerMobileMediumHdImageUrl = json["bannerMobileMediumHdImageUrl"];
    }
    if (json.containsKey("bannerTabletExtraHdImageUrl")) {
      bannerTabletExtraHdImageUrl = json["bannerTabletExtraHdImageUrl"];
    }
    if (json.containsKey("bannerTabletHdImageUrl")) {
      bannerTabletHdImageUrl = json["bannerTabletHdImageUrl"];
    }
    if (json.containsKey("bannerTabletImageUrl")) {
      bannerTabletImageUrl = json["bannerTabletImageUrl"];
    }
    if (json.containsKey("bannerTabletLowImageUrl")) {
      bannerTabletLowImageUrl = json["bannerTabletLowImageUrl"];
    }
    if (json.containsKey("bannerTvImageUrl")) {
      bannerTvImageUrl = json["bannerTvImageUrl"];
    }
    if (json.containsKey("largeBrandedBannerImageImapScript")) {
      largeBrandedBannerImageImapScript = new LocalizedProperty.fromJson(json["largeBrandedBannerImageImapScript"]);
    }
    if (json.containsKey("largeBrandedBannerImageUrl")) {
      largeBrandedBannerImageUrl = new LocalizedProperty.fromJson(json["largeBrandedBannerImageUrl"]);
    }
    if (json.containsKey("smallBrandedBannerImageImapScript")) {
      smallBrandedBannerImageImapScript = new LocalizedProperty.fromJson(json["smallBrandedBannerImageImapScript"]);
    }
    if (json.containsKey("smallBrandedBannerImageUrl")) {
      smallBrandedBannerImageUrl = new LocalizedProperty.fromJson(json["smallBrandedBannerImageUrl"]);
    }
    if (json.containsKey("trackingImageUrl")) {
      trackingImageUrl = json["trackingImageUrl"];
    }
    if (json.containsKey("watchIconImageUrl")) {
      watchIconImageUrl = json["watchIconImageUrl"];
    }
  }

  /** Create JSON Object for ImageSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (backgroundImageUrl != null) {
      output["backgroundImageUrl"] = backgroundImageUrl.toJson();
    }
    if (bannerExternalUrl != null) {
      output["bannerExternalUrl"] = bannerExternalUrl;
    }
    if (bannerImageUrl != null) {
      output["bannerImageUrl"] = bannerImageUrl;
    }
    if (bannerMobileExtraHdImageUrl != null) {
      output["bannerMobileExtraHdImageUrl"] = bannerMobileExtraHdImageUrl;
    }
    if (bannerMobileHdImageUrl != null) {
      output["bannerMobileHdImageUrl"] = bannerMobileHdImageUrl;
    }
    if (bannerMobileImageUrl != null) {
      output["bannerMobileImageUrl"] = bannerMobileImageUrl;
    }
    if (bannerMobileLowImageUrl != null) {
      output["bannerMobileLowImageUrl"] = bannerMobileLowImageUrl;
    }
    if (bannerMobileMediumHdImageUrl != null) {
      output["bannerMobileMediumHdImageUrl"] = bannerMobileMediumHdImageUrl;
    }
    if (bannerTabletExtraHdImageUrl != null) {
      output["bannerTabletExtraHdImageUrl"] = bannerTabletExtraHdImageUrl;
    }
    if (bannerTabletHdImageUrl != null) {
      output["bannerTabletHdImageUrl"] = bannerTabletHdImageUrl;
    }
    if (bannerTabletImageUrl != null) {
      output["bannerTabletImageUrl"] = bannerTabletImageUrl;
    }
    if (bannerTabletLowImageUrl != null) {
      output["bannerTabletLowImageUrl"] = bannerTabletLowImageUrl;
    }
    if (bannerTvImageUrl != null) {
      output["bannerTvImageUrl"] = bannerTvImageUrl;
    }
    if (largeBrandedBannerImageImapScript != null) {
      output["largeBrandedBannerImageImapScript"] = largeBrandedBannerImageImapScript.toJson();
    }
    if (largeBrandedBannerImageUrl != null) {
      output["largeBrandedBannerImageUrl"] = largeBrandedBannerImageUrl.toJson();
    }
    if (smallBrandedBannerImageImapScript != null) {
      output["smallBrandedBannerImageImapScript"] = smallBrandedBannerImageImapScript.toJson();
    }
    if (smallBrandedBannerImageUrl != null) {
      output["smallBrandedBannerImageUrl"] = smallBrandedBannerImageUrl.toJson();
    }
    if (trackingImageUrl != null) {
      output["trackingImageUrl"] = trackingImageUrl;
    }
    if (watchIconImageUrl != null) {
      output["watchIconImageUrl"] = watchIconImageUrl;
    }

    return output;
  }

  /** Return String representation of ImageSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes information necessary for ingesting an RTMP or an HTTP stream. */
class IngestionInfo {

  /** The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL. */
  core.String backupIngestionAddress;

  /** The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL.

Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format:

STREAM_URL/STREAM_NAME */
  core.String ingestionAddress;

  /** The HTTP or RTMP stream name that YouTube assigns to the video stream. */
  core.String streamName;

  /** Create new IngestionInfo from JSON data */
  IngestionInfo.fromJson(core.Map json) {
    if (json.containsKey("backupIngestionAddress")) {
      backupIngestionAddress = json["backupIngestionAddress"];
    }
    if (json.containsKey("ingestionAddress")) {
      ingestionAddress = json["ingestionAddress"];
    }
    if (json.containsKey("streamName")) {
      streamName = json["streamName"];
    }
  }

  /** Create JSON Object for IngestionInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (backupIngestionAddress != null) {
      output["backupIngestionAddress"] = backupIngestionAddress;
    }
    if (ingestionAddress != null) {
      output["ingestionAddress"] = ingestionAddress;
    }
    if (streamName != null) {
      output["streamName"] = streamName;
    }

    return output;
  }

  /** Return String representation of IngestionInfo */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes the spatial position of a visual widget inside a video. It is a union of various position types, out of which only will be set one. */
class InvideoPosition {

  /** Describes in which corner of the video the visual widget will appear. */
  core.String cornerPosition;

  /** Defines the position type. */
  core.String type;

  /** Create new InvideoPosition from JSON data */
  InvideoPosition.fromJson(core.Map json) {
    if (json.containsKey("cornerPosition")) {
      cornerPosition = json["cornerPosition"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for InvideoPosition */
  core.Map toJson() {
    var output = new core.Map();

    if (cornerPosition != null) {
      output["cornerPosition"] = cornerPosition;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of InvideoPosition */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes an invideo promotion campaign consisting of multiple promoted items. A campaign belongs to a single channel_id. */
class InvideoPromotion {

  /** List of promoted items in decreasing priority. */
  core.List<PromotedItemId> items;

  /** The spatial position within the video where the promoted item will be displayed. */
  InvideoPosition position;

  /** The temporal position within the video where the promoted item will be displayed. */
  InvideoTiming timing;

  /** Create new InvideoPromotion from JSON data */
  InvideoPromotion.fromJson(core.Map json) {
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new PromotedItemId.fromJson(item));
      });
    }
    if (json.containsKey("position")) {
      position = new InvideoPosition.fromJson(json["position"]);
    }
    if (json.containsKey("timing")) {
      timing = new InvideoTiming.fromJson(json["timing"]);
    }
  }

  /** Create JSON Object for InvideoPromotion */
  core.Map toJson() {
    var output = new core.Map();

    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (position != null) {
      output["position"] = position.toJson();
    }
    if (timing != null) {
      output["timing"] = timing.toJson();
    }

    return output;
  }

  /** Return String representation of InvideoPromotion */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes a temporal position of a visual widget inside a video. */
class InvideoTiming {

  /** Defines the time at which the promotion will appear. Depending on the value of type the value of the offsetMs field will represent a time offset from the start or from the end of the video, expressed in milliseconds. */
  core.String offsetMs;

  /** Describes a timing type. If the value is offsetFromStart, then the offsetMs field represents an offset from the start of the video. If the value is offsetFromEnd, then the offsetMs field represents an offset from the end of the video. */
  core.String type;

  /** Create new InvideoTiming from JSON data */
  InvideoTiming.fromJson(core.Map json) {
    if (json.containsKey("offsetMs")) {
      offsetMs = json["offsetMs"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for InvideoTiming */
  core.Map toJson() {
    var output = new core.Map();

    if (offsetMs != null) {
      output["offsetMs"] = offsetMs;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of InvideoTiming */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A liveBroadcast resource represents an event that will be streamed, via live video, on YouTube. */
class LiveBroadcast {

  /** The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded. */
  LiveBroadcastContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube assigns to uniquely identify the broadcast. */
  core.String id;

  /** The kind, fixed to "youtube#liveBroadcast". */
  core.String kind;

  /** The snippet object contains basic details about the event, including its title, description, start time, and end time. */
  LiveBroadcastSnippet snippet;

  /** The status object contains information about the event's status. */
  LiveBroadcastStatus status;

  /** Create new LiveBroadcast from JSON data */
  LiveBroadcast.fromJson(core.Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new LiveBroadcastContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new LiveBroadcastSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("status")) {
      status = new LiveBroadcastStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for LiveBroadcast */
  core.Map toJson() {
    var output = new core.Map();

    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of LiveBroadcast */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Slate settings of a broadcast. */
class LiveBroadcastContentDetails {

  /** This value uniquely identifies the live stream bound to the broadcast. */
  core.String boundStreamId;

  /** This setting indicates whether YouTube should enable content encryption for the broadcast. */
  core.bool enableContentEncryption;

  /** This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true.



Important: You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends. */
  core.bool enableDvr;

  /** This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video. */
  core.bool enableEmbed;

  /** The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. */
  MonitorStreamInfo monitorStream;

  /** Automatically start recording after the event goes live. The default value for this property is true.



Important: You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback. */
  core.bool recordFromStart;

  /** This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers. */
  core.bool startWithSlate;

  /** Create new LiveBroadcastContentDetails from JSON data */
  LiveBroadcastContentDetails.fromJson(core.Map json) {
    if (json.containsKey("boundStreamId")) {
      boundStreamId = json["boundStreamId"];
    }
    if (json.containsKey("enableContentEncryption")) {
      enableContentEncryption = json["enableContentEncryption"];
    }
    if (json.containsKey("enableDvr")) {
      enableDvr = json["enableDvr"];
    }
    if (json.containsKey("enableEmbed")) {
      enableEmbed = json["enableEmbed"];
    }
    if (json.containsKey("monitorStream")) {
      monitorStream = new MonitorStreamInfo.fromJson(json["monitorStream"]);
    }
    if (json.containsKey("recordFromStart")) {
      recordFromStart = json["recordFromStart"];
    }
    if (json.containsKey("startWithSlate")) {
      startWithSlate = json["startWithSlate"];
    }
  }

  /** Create JSON Object for LiveBroadcastContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (boundStreamId != null) {
      output["boundStreamId"] = boundStreamId;
    }
    if (enableContentEncryption != null) {
      output["enableContentEncryption"] = enableContentEncryption;
    }
    if (enableDvr != null) {
      output["enableDvr"] = enableDvr;
    }
    if (enableEmbed != null) {
      output["enableEmbed"] = enableEmbed;
    }
    if (monitorStream != null) {
      output["monitorStream"] = monitorStream.toJson();
    }
    if (recordFromStart != null) {
      output["recordFromStart"] = recordFromStart;
    }
    if (startWithSlate != null) {
      output["startWithSlate"] = startWithSlate;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** JSON template for list of broadcasts. */
class LiveBroadcastList {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of broadcasts that match the request criteria. */
  core.List<LiveBroadcast> items;

  /** The type of the API response. For this operation, the value will be youtube#liveBroadcastList. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new LiveBroadcastList from JSON data */
  LiveBroadcastList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new LiveBroadcast.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for LiveBroadcastList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastList */
  core.String toString() => JSON.stringify(this.toJson());

}

class LiveBroadcastSnippet {

  /** The date and time that the broadcast actually ended. This information is only available once the broadcast's state is complete. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String actualEndTime;

  /** The date and time that the broadcast actually started. This information is only available once the broadcast's state is live. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String actualStartTime;

  /** The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast. */
  core.String channelId;

  /** The broadcast's description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource. */
  core.String description;

  /** The date and time that the broadcast was added to YouTube's live broadcast schedule. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** The date and time that the broadcast is scheduled to end. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String scheduledEndTime;

  /** The date and time that the broadcast is scheduled to start. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String scheduledStartTime;

  /** A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource. */
  core.String title;

  /** Create new LiveBroadcastSnippet from JSON data */
  LiveBroadcastSnippet.fromJson(core.Map json) {
    if (json.containsKey("actualEndTime")) {
      actualEndTime = json["actualEndTime"];
    }
    if (json.containsKey("actualStartTime")) {
      actualStartTime = json["actualStartTime"];
    }
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("scheduledEndTime")) {
      scheduledEndTime = json["scheduledEndTime"];
    }
    if (json.containsKey("scheduledStartTime")) {
      scheduledStartTime = json["scheduledStartTime"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for LiveBroadcastSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (actualEndTime != null) {
      output["actualEndTime"] = actualEndTime;
    }
    if (actualStartTime != null) {
      output["actualStartTime"] = actualStartTime;
    }
    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (scheduledEndTime != null) {
      output["scheduledEndTime"] = scheduledEndTime;
    }
    if (scheduledStartTime != null) {
      output["scheduledStartTime"] = scheduledStartTime;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

class LiveBroadcastStatus {

  /** The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method. */
  core.String lifeCycleStatus;

  /** The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource. */
  core.String privacyStatus;

  /** The broadcast's recording status. */
  core.String recordingStatus;

  /** Create new LiveBroadcastStatus from JSON data */
  LiveBroadcastStatus.fromJson(core.Map json) {
    if (json.containsKey("lifeCycleStatus")) {
      lifeCycleStatus = json["lifeCycleStatus"];
    }
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
    if (json.containsKey("recordingStatus")) {
      recordingStatus = json["recordingStatus"];
    }
  }

  /** Create JSON Object for LiveBroadcastStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (lifeCycleStatus != null) {
      output["lifeCycleStatus"] = lifeCycleStatus;
    }
    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }
    if (recordingStatus != null) {
      output["recordingStatus"] = recordingStatus;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A live stream describes a live ingestion point. */
class LiveStream {

  /** The cdn object defines the live stream's content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube. */
  LiveStreamCdn cdn;

  /** The ETag of the stream resource. */
  core.String etag;

  /** The ID that YouTube assigns to uniquely identify the stream. */
  core.String id;

  /** The type of the API resource. For live stream resources, the value will be youtube#liveStream. */
  core.String kind;

  /** The snippet object contains basic details about the stream, including its channel, title, and description. */
  LiveStreamSnippet snippet;

  /** The status object contains information about live stream's status. */
  LiveStreamStatus status;

  /** Create new LiveStream from JSON data */
  LiveStream.fromJson(core.Map json) {
    if (json.containsKey("cdn")) {
      cdn = new LiveStreamCdn.fromJson(json["cdn"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new LiveStreamSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("status")) {
      status = new LiveStreamStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for LiveStream */
  core.Map toJson() {
    var output = new core.Map();

    if (cdn != null) {
      output["cdn"] = cdn.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of LiveStream */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Brief description of the live stream cdn settings. */
class LiveStreamCdn {

  /** The format of the video stream that you are sending to YouTube. */
  core.String format;

  /** The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube. */
  IngestionInfo ingestionInfo;

  /** The method or protocol used to transmit the video stream. */
  core.String ingestionType;

  /** Create new LiveStreamCdn from JSON data */
  LiveStreamCdn.fromJson(core.Map json) {
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("ingestionInfo")) {
      ingestionInfo = new IngestionInfo.fromJson(json["ingestionInfo"]);
    }
    if (json.containsKey("ingestionType")) {
      ingestionType = json["ingestionType"];
    }
  }

  /** Create JSON Object for LiveStreamCdn */
  core.Map toJson() {
    var output = new core.Map();

    if (format != null) {
      output["format"] = format;
    }
    if (ingestionInfo != null) {
      output["ingestionInfo"] = ingestionInfo.toJson();
    }
    if (ingestionType != null) {
      output["ingestionType"] = ingestionType;
    }

    return output;
  }

  /** Return String representation of LiveStreamCdn */
  core.String toString() => JSON.stringify(this.toJson());

}

/** List of live streams. */
class LiveStreamList {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of live streams that match the request criteria. */
  core.List<LiveStream> items;

  /** The type of the API response. For this operation, the value will be youtube#liveStreamList. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new LiveStreamList from JSON data */
  LiveStreamList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new LiveStream.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for LiveStreamList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of LiveStreamList */
  core.String toString() => JSON.stringify(this.toJson());

}

class LiveStreamSnippet {

  /** The ID that YouTube uses to uniquely identify the channel that is transmitting the stream. */
  core.String channelId;

  /** The stream's description. The value cannot be longer than 10000 characters. */
  core.String description;

  /** The date and time that the stream was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** The stream's title. The value must be between 1 and 128 characters long. */
  core.String title;

  /** Create new LiveStreamSnippet from JSON data */
  LiveStreamSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for LiveStreamSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of LiveStreamSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Brief description of the live stream status. */
class LiveStreamStatus {
  core.String streamStatus;

  /** Create new LiveStreamStatus from JSON data */
  LiveStreamStatus.fromJson(core.Map json) {
    if (json.containsKey("streamStatus")) {
      streamStatus = json["streamStatus"];
    }
  }

  /** Create JSON Object for LiveStreamStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (streamStatus != null) {
      output["streamStatus"] = streamStatus;
    }

    return output;
  }

  /** Return String representation of LiveStreamStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represent a property available in different languages. */
class LocalizedProperty {

  /** Default value for the localized property. */
  core.String defaultProperty;

  /** The localized values. */
  core.List<LocalizedString> localized;

  /** Create new LocalizedProperty from JSON data */
  LocalizedProperty.fromJson(core.Map json) {
    if (json.containsKey("default")) {
      defaultProperty = json["default"];
    }
    if (json.containsKey("localized")) {
      localized = [];
      json["localized"].forEach((item) {
        localized.add(new LocalizedString.fromJson(item));
      });
    }
  }

  /** Create JSON Object for LocalizedProperty */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultProperty != null) {
      output["default"] = defaultProperty;
    }
    if (localized != null) {
      output["localized"] = new core.List();
      localized.forEach((item) {
        output["localized"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of LocalizedProperty */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A localized string. */
class LocalizedString {

  /** Language associated to this value. */
  core.String language;

  /** Value of the property. */
  core.String value;

  /** Create new LocalizedString from JSON data */
  LocalizedString.fromJson(core.Map json) {
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for LocalizedString */
  core.Map toJson() {
    var output = new core.Map();

    if (language != null) {
      output["language"] = language;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of LocalizedString */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Settings and Info of the monitor stream */
class MonitorStreamInfo {

  /** If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay. */
  core.int broadcastStreamDelayMs;

  /** HTML code that embeds a player that plays the monitor stream. */
  core.String embedHtml;

  /** This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints.

You need to set this value to true if you intend to have a broadcast delay for your event.

Note: This property cannot be updated once the broadcast is in the testing or live state. */
  core.bool enableMonitorStream;

  /** Create new MonitorStreamInfo from JSON data */
  MonitorStreamInfo.fromJson(core.Map json) {
    if (json.containsKey("broadcastStreamDelayMs")) {
      broadcastStreamDelayMs = json["broadcastStreamDelayMs"];
    }
    if (json.containsKey("embedHtml")) {
      embedHtml = json["embedHtml"];
    }
    if (json.containsKey("enableMonitorStream")) {
      enableMonitorStream = json["enableMonitorStream"];
    }
  }

  /** Create JSON Object for MonitorStreamInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (broadcastStreamDelayMs != null) {
      output["broadcastStreamDelayMs"] = broadcastStreamDelayMs;
    }
    if (embedHtml != null) {
      output["embedHtml"] = embedHtml;
    }
    if (enableMonitorStream != null) {
      output["enableMonitorStream"] = enableMonitorStream;
    }

    return output;
  }

  /** Return String representation of MonitorStreamInfo */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Paging details for lists of resources, including total number of items available and number of resources returned in a single page. */
class PageInfo {

  /** The number of results included in the API response. */
  core.int resultsPerPage;

  /** The total number of results in the result set. */
  core.int totalResults;

  /** Create new PageInfo from JSON data */
  PageInfo.fromJson(core.Map json) {
    if (json.containsKey("resultsPerPage")) {
      resultsPerPage = json["resultsPerPage"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for PageInfo */
  core.Map toJson() {
    var output = new core.Map();

    if (resultsPerPage != null) {
      output["resultsPerPage"] = resultsPerPage;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of PageInfo */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A playlist resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private.

YouTube also uses playlists to identify special collections of videos for a channel, such as:  
- uploaded videos 
- favorite videos 
- positively rated (liked) videos 
- watch history 
- watch later  To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the  channel resource for a given channel.

You can then use the   playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the   playlistItems.insert and   playlistItems.delete methods. */
class Playlist {

  /** The contentDetails object contains information like video count. */
  PlaylistContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the playlist. */
  core.String id;

  /** The kind, fixed to "youtube#playlist". */
  core.String kind;

  /** The player object contains information that you would use to play the playlist in an embedded player. */
  PlaylistPlayer player;

  /** The snippet object contains basic details about the playlist, such as its title and description. */
  PlaylistSnippet snippet;

  /** The status object contains status information for the playlist. */
  PlaylistStatus status;

  /** Create new Playlist from JSON data */
  Playlist.fromJson(core.Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new PlaylistContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("player")) {
      player = new PlaylistPlayer.fromJson(json["player"]);
    }
    if (json.containsKey("snippet")) {
      snippet = new PlaylistSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("status")) {
      status = new PlaylistStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for Playlist */
  core.Map toJson() {
    var output = new core.Map();

    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (player != null) {
      output["player"] = player.toJson();
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of Playlist */
  core.String toString() => JSON.stringify(this.toJson());

}

class PlaylistContentDetails {

  /** The number of videos in the playlist. */
  core.int itemCount;

  /** Create new PlaylistContentDetails from JSON data */
  PlaylistContentDetails.fromJson(core.Map json) {
    if (json.containsKey("itemCount")) {
      itemCount = json["itemCount"];
    }
  }

  /** Create JSON Object for PlaylistContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (itemCount != null) {
      output["itemCount"] = itemCount;
    }

    return output;
  }

  /** Return String representation of PlaylistContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A playlistItem resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem  resource contains details about the included resource that pertain specifically to how that resource is used in that playlist.

YouTube uses playlists to identify special collections of videos for a channel, such as:  
- uploaded videos 
- favorite videos 
- positively rated (liked) videos 
- watch history 
- watch later  To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information.

You can retrieve the playlist IDs for each of these lists from the  channel resource  for a given channel. You can then use the   playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the   playlistItems.insert and   playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel. */
class PlaylistItem {

  /** The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video. */
  PlaylistItemContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the playlist item. */
  core.String id;

  /** The kind, fixed to "youtube#playlistItem". */
  core.String kind;

  /** The snippet object contains basic details about the playlist item, such as its title and position in the playlist. */
  PlaylistItemSnippet snippet;

  /** The status object contains information about the playlist item's privacy status. */
  PlaylistItemStatus status;

  /** Create new PlaylistItem from JSON data */
  PlaylistItem.fromJson(core.Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new PlaylistItemContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new PlaylistItemSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("status")) {
      status = new PlaylistItemStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for PlaylistItem */
  core.Map toJson() {
    var output = new core.Map();

    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }

    return output;
  }

  /** Return String representation of PlaylistItem */
  core.String toString() => JSON.stringify(this.toJson());

}

class PlaylistItemContentDetails {

  /** The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video. */
  core.String endAtMs;

  /** A user-generated note for this item. */
  core.String note;

  /** The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0. */
  core.String startAtMs;

  /** The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request. */
  core.String videoId;

  /** Create new PlaylistItemContentDetails from JSON data */
  PlaylistItemContentDetails.fromJson(core.Map json) {
    if (json.containsKey("endAtMs")) {
      endAtMs = json["endAtMs"];
    }
    if (json.containsKey("note")) {
      note = json["note"];
    }
    if (json.containsKey("startAtMs")) {
      startAtMs = json["startAtMs"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for PlaylistItemContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (endAtMs != null) {
      output["endAtMs"] = endAtMs;
    }
    if (note != null) {
      output["note"] = note;
    }
    if (startAtMs != null) {
      output["startAtMs"] = startAtMs;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of PlaylistItemContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of playlist items returned as the response to a youtube.playlistItems.list call. */
class PlaylistItemListResponse {

  /** The ETag for the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of playlist items that match the request criteria. */
  core.List<PlaylistItem> items;

  /** The type of the API response. For this operation, the value will be youtube#playlistItemListResponse. */
  core.String kind;

  /** A token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** A token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new PlaylistItemListResponse from JSON data */
  PlaylistItemListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new PlaylistItem.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for PlaylistItemListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of PlaylistItemListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a playlist, including title, description and thumbnails. */
class PlaylistItemSnippet {

  /** The ID that YouTube uses to uniquely identify the user that added the item to the playlist. */
  core.String channelId;

  /** Channel title for the channel that the playlist item belongs to. */
  core.String channelTitle;

  /** The item's description. */
  core.String description;

  /** The ID that YouTube uses to uniquely identify the playlist that the playlist item is in. */
  core.String playlistId;

  /** The order in which the item appears in the playlist. The value uses a zero-based index, so the first item has a position of 0, the second item has a position of 1, and so forth. */
  core.int position;

  /** The date and time that the item was added to the playlist. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** The id object contains information that can be used to uniquely identify the resource that is included in the playlist as the playlist item. */
  ResourceId resourceId;

  /** A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The item's title. */
  core.String title;

  /** Create new PlaylistItemSnippet from JSON data */
  PlaylistItemSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("playlistId")) {
      playlistId = json["playlistId"];
    }
    if (json.containsKey("position")) {
      position = json["position"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for PlaylistItemSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (playlistId != null) {
      output["playlistId"] = playlistId;
    }
    if (position != null) {
      output["position"] = position;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of PlaylistItemSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about the playlist item's privacy status. */
class PlaylistItemStatus {

  /** This resource's privacy status. */
  core.String privacyStatus;

  /** Create new PlaylistItemStatus from JSON data */
  PlaylistItemStatus.fromJson(core.Map json) {
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for PlaylistItemStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of PlaylistItemStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of playlists returned as the response to a youtube.playlists.list call. */
class PlaylistListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of playlists that match the request criteria. */
  core.List<Playlist> items;

  /** The type of the API response. For this operation, the value will be youtube#playlistListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new PlaylistListResponse from JSON data */
  PlaylistListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Playlist.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for PlaylistListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of PlaylistListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

class PlaylistPlayer {

  /** An <iframe> tag that embeds a player that will play the playlist. */
  core.String embedHtml;

  /** Create new PlaylistPlayer from JSON data */
  PlaylistPlayer.fromJson(core.Map json) {
    if (json.containsKey("embedHtml")) {
      embedHtml = json["embedHtml"];
    }
  }

  /** Create JSON Object for PlaylistPlayer */
  core.Map toJson() {
    var output = new core.Map();

    if (embedHtml != null) {
      output["embedHtml"] = embedHtml;
    }

    return output;
  }

  /** Return String representation of PlaylistPlayer */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a playlist, including title, description and thumbnails. */
class PlaylistSnippet {

  /** The ID that YouTube uses to uniquely identify the channel that published the playlist. */
  core.String channelId;

  /** The channel title of the channel that the video belongs to. */
  core.String channelTitle;

  /** The playlist's description. */
  core.String description;

  /** The date and time that the playlist was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** Keyword tags associated with the playlist. */
  core.List<core.String> tags;

  /** A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The playlist's title. */
  core.String title;

  /** Create new PlaylistSnippet from JSON data */
  PlaylistSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("tags")) {
      tags = [];
      json["tags"].forEach((item) {
        tags.add(item);
      });
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for PlaylistSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (tags != null) {
      output["tags"] = new core.List();
      tags.forEach((item) {
        output["tags"].add(item);
      });
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of PlaylistSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

class PlaylistStatus {

  /** The playlist's privacy status. */
  core.String privacyStatus;

  /** Create new PlaylistStatus from JSON data */
  PlaylistStatus.fromJson(core.Map json) {
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for PlaylistStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of PlaylistStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes a single promoted item. It is a union of various possible types. */
class PromotedItemId {

  /** Describes the type of the promoted item. */
  core.String type;

  /** If the promoted item represents a video, this field represents the unique YouTube ID identifying it. This field will be present only if type has the value video. */
  core.String videoId;

  /** Create new PromotedItemId from JSON data */
  PromotedItemId.fromJson(core.Map json) {
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for PromotedItemId */
  core.Map toJson() {
    var output = new core.Map();

    if (type != null) {
      output["type"] = type;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of PromotedItemId */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A pair Property / Value. */
class PropertyValue {

  /** A property. */
  core.String property;

  /** The property's value. */
  core.String value;

  /** Create new PropertyValue from JSON data */
  PropertyValue.fromJson(core.Map json) {
    if (json.containsKey("property")) {
      property = json["property"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PropertyValue */
  core.Map toJson() {
    var output = new core.Map();

    if (property != null) {
      output["property"] = property;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PropertyValue */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A resource id is a generic reference that points to another YouTube resource. */
class ResourceId {

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel. */
  core.String channelId;

  /** The type of the API resource. */
  core.String kind;

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist. */
  core.String playlistId;

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video. */
  core.String videoId;

  /** Create new ResourceId from JSON data */
  ResourceId.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("playlistId")) {
      playlistId = json["playlistId"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for ResourceId */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (playlistId != null) {
      output["playlistId"] = playlistId;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of ResourceId */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of search results returned as the response to a youtube.search.list call. */
class SearchListResponse {

  /** The ETag for the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of results that match the search criteria. */
  core.List<SearchResult> items;

  /** The type of the API response. For this operation, the value will be youtube#searchListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the search result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new SearchListResponse from JSON data */
  SearchListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new SearchResult.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for SearchListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of SearchListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data. */
class SearchResult {

  /** Etag of this resource. */
  core.String etag;

  /** The id object contains information that can be used to uniquely identify the resource that matches the search request. */
  ResourceId id;

  /** The kind, fixed to "youtube#searchResult". */
  core.String kind;

  /** The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video's title and the description will be the video's description. */
  SearchResultSnippet snippet;

  /** Create new SearchResult from JSON data */
  SearchResult.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = new ResourceId.fromJson(json["id"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new SearchResultSnippet.fromJson(json["snippet"]);
    }
  }

  /** Create JSON Object for SearchResult */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }

    return output;
  }

  /** Return String representation of SearchResult */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a search result, including title, description and thumbnails of the item referenced by the search result. */
class SearchResultSnippet {

  /** The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies. */
  core.String channelId;

  /** The title of the channel that published the resource that the search result identifies. */
  core.String channelTitle;

  /** A description of the search result. */
  core.String description;

  /** The creation date and time of the resource that the search result identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The title of the search result. */
  core.String title;

  /** Create new SearchResultSnippet from JSON data */
  SearchResultSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for SearchResultSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of SearchResultSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A subscription resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video. */
class Subscription {

  /** The contentDetails object contains basic statistics about the subscription. */
  SubscriptionContentDetails contentDetails;

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the subscription. */
  core.String id;

  /** The kind, fixed to "youtube#subscription". */
  core.String kind;

  /** The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to. */
  SubscriptionSnippet snippet;

  /** The subscriberSnippet object contains basic details about the sbuscriber. */
  SubscriptionSubscriberSnippet subscriberSnippet;

  /** Create new Subscription from JSON data */
  Subscription.fromJson(core.Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new SubscriptionContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new SubscriptionSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("subscriberSnippet")) {
      subscriberSnippet = new SubscriptionSubscriberSnippet.fromJson(json["subscriberSnippet"]);
    }
  }

  /** Create JSON Object for Subscription */
  core.Map toJson() {
    var output = new core.Map();

    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (subscriberSnippet != null) {
      output["subscriberSnippet"] = subscriberSnippet.toJson();
    }

    return output;
  }

  /** Return String representation of Subscription */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about the content to witch a subscription refers. */
class SubscriptionContentDetails {

  /** The number of new items in the subscription since its content was last read. */
  core.int newItemCount;

  /** The approximate number of items that the subscription points to. */
  core.int totalItemCount;

  /** Create new SubscriptionContentDetails from JSON data */
  SubscriptionContentDetails.fromJson(core.Map json) {
    if (json.containsKey("newItemCount")) {
      newItemCount = json["newItemCount"];
    }
    if (json.containsKey("totalItemCount")) {
      totalItemCount = json["totalItemCount"];
    }
  }

  /** Create JSON Object for SubscriptionContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (newItemCount != null) {
      output["newItemCount"] = newItemCount;
    }
    if (totalItemCount != null) {
      output["totalItemCount"] = totalItemCount;
    }

    return output;
  }

  /** Return String representation of SubscriptionContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of subscriptions returned as the response to a youtube.subscriptions.list call. */
class SubscriptionListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of subscriptions that match the request criteria. */
  core.List<Subscription> items;

  /** The type of the API response. For this operation, the value will be youtube#subscriptionListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new SubscriptionListResponse from JSON data */
  SubscriptionListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Subscription.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for SubscriptionListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of SubscriptionListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a subscription, including title, description and thumbnails of the subscribed item. */
class SubscriptionSnippet {

  /** The ID that YouTube uses to uniquely identify the subscriber's channel. */
  core.String channelId;

  /** Channel title for the channel that the subscription belongs to. */
  core.String channelTitle;

  /** The subscription's details. */
  core.String description;

  /** The date and time that the subscription was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** The id object contains information about the channel that the user subscribed to. */
  ResourceId resourceId;

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The subscription's title. */
  core.String title;

  /** Create new SubscriptionSnippet from JSON data */
  SubscriptionSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for SubscriptionSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of SubscriptionSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a subscription's subscriber including title, description, channel ID and thumbnails. */
class SubscriptionSubscriberSnippet {

  /** The channel ID of the subscriber. */
  core.String channelId;

  /** The description of the subscriber. */
  core.String description;

  /** Thumbnails for this subscriber. */
  ThumbnailDetails thumbnails;

  /** The title of the subscriber. */
  core.String title;

  /** Create new SubscriptionSubscriberSnippet from JSON data */
  SubscriptionSubscriberSnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for SubscriptionSubscriberSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of SubscriptionSubscriberSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A thumbnail is an image representing a YouTube resource. */
class Thumbnail {

  /** (Optional) Height of the thumbnail image. */
  core.int height;

  /** The thumbnail image's URL. */
  core.String url;

  /** (Optional) Width of the thumbnail image. */
  core.int width;

  /** Create new Thumbnail from JSON data */
  Thumbnail.fromJson(core.Map json) {
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for Thumbnail */
  core.Map toJson() {
    var output = new core.Map();

    if (height != null) {
      output["height"] = height;
    }
    if (url != null) {
      output["url"] = url;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of Thumbnail */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Internal representation of thumbnails for a YouTube resource. */
class ThumbnailDetails {

  /** The default image for this resource. */
  Thumbnail defaultProperty;

  /** The high quality image for this resource. */
  Thumbnail high;

  /** The maximum resolution quality image for this resource. */
  Thumbnail maxres;

  /** The medium quality image for this resource. */
  Thumbnail medium;

  /** The standard quality image for this resource. */
  Thumbnail standard;

  /** Create new ThumbnailDetails from JSON data */
  ThumbnailDetails.fromJson(core.Map json) {
    if (json.containsKey("default")) {
      defaultProperty = new Thumbnail.fromJson(json["default"]);
    }
    if (json.containsKey("high")) {
      high = new Thumbnail.fromJson(json["high"]);
    }
    if (json.containsKey("maxres")) {
      maxres = new Thumbnail.fromJson(json["maxres"]);
    }
    if (json.containsKey("medium")) {
      medium = new Thumbnail.fromJson(json["medium"]);
    }
    if (json.containsKey("standard")) {
      standard = new Thumbnail.fromJson(json["standard"]);
    }
  }

  /** Create JSON Object for ThumbnailDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (defaultProperty != null) {
      output["default"] = defaultProperty.toJson();
    }
    if (high != null) {
      output["high"] = high.toJson();
    }
    if (maxres != null) {
      output["maxres"] = maxres.toJson();
    }
    if (medium != null) {
      output["medium"] = medium.toJson();
    }
    if (standard != null) {
      output["standard"] = standard.toJson();
    }

    return output;
  }

  /** Return String representation of ThumbnailDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of thumbnails returned as the response to a thumbnails.set call. */
class ThumbnailListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** A list of thumbnails. */
  core.List<ThumbnailDetails> items;

  /** The type of the API response. For this operation, the value will be youtube#thumbnailListResponse. */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new ThumbnailListResponse from JSON data */
  ThumbnailListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new ThumbnailDetails.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for ThumbnailListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of ThumbnailListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A video resource represents a YouTube video. */
class Video {

  /** Age restriction details related to a video. */
  VideoAgeGating ageGating;

  /** The contentDetails object contains information about the video content, including the length of the video and its aspect ratio. */
  VideoContentDetails contentDetails;

  /** The conversionPings object encapsulates information about url pings that need to be respected by the App in different video contexts. */
  VideoConversionPings conversionPings;

  /** Etag of this resource. */
  core.String etag;

  /** The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner. */
  VideoFileDetails fileDetails;

  /** The ID that YouTube uses to uniquely identify the video. */
  core.String id;

  /** The kind, fixed to "youtube#video". */
  core.String kind;

  /** The monetizationDetails object encapsulates information about the monetization status of the video. */
  VideoMonetizationDetails monetizationDetails;

  /** The player object contains information that you would use to play the video in an embedded player. */
  VideoPlayer player;

  /** The processingProgress object encapsulates information about YouTube's progress in processing the uploaded video file. The properties in the object identify the current processing status and an estimate of the time remaining until YouTube finishes processing the video. This part also indicates whether different types of data or content, such as file details or thumbnail images, are available for the video.

The processingProgress object is designed to be polled so that the video uploaded can track the progress that YouTube has made in processing the uploaded video file. This data can only be retrieved by the video owner. */
  VideoProcessingDetails processingDetails;

  /** The projectDetails object contains information about the project specific video metadata. */
  VideoProjectDetails projectDetails;

  /** The recordingDetails object encapsulates information about the location, date and address where the video was recorded. */
  VideoRecordingDetails recordingDetails;

  /** The snippet object contains basic details about the video, such as its title, description, and category. */
  VideoSnippet snippet;

  /** The statistics object contains statistics about the video. */
  VideoStatistics statistics;

  /** The status object contains information about the video's uploading, processing, and privacy statuses. */
  VideoStatus status;

  /** The suggestions object encapsulates suggestions that identify opportunities to improve the video quality or the metadata for the uploaded video. This data can only be retrieved by the video owner. */
  VideoSuggestions suggestions;

  /** The topicDetails object encapsulates information about Freebase topics associated with the video. */
  VideoTopicDetails topicDetails;

  /** Create new Video from JSON data */
  Video.fromJson(core.Map json) {
    if (json.containsKey("ageGating")) {
      ageGating = new VideoAgeGating.fromJson(json["ageGating"]);
    }
    if (json.containsKey("contentDetails")) {
      contentDetails = new VideoContentDetails.fromJson(json["contentDetails"]);
    }
    if (json.containsKey("conversionPings")) {
      conversionPings = new VideoConversionPings.fromJson(json["conversionPings"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileDetails")) {
      fileDetails = new VideoFileDetails.fromJson(json["fileDetails"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("monetizationDetails")) {
      monetizationDetails = new VideoMonetizationDetails.fromJson(json["monetizationDetails"]);
    }
    if (json.containsKey("player")) {
      player = new VideoPlayer.fromJson(json["player"]);
    }
    if (json.containsKey("processingDetails")) {
      processingDetails = new VideoProcessingDetails.fromJson(json["processingDetails"]);
    }
    if (json.containsKey("projectDetails")) {
      projectDetails = new VideoProjectDetails.fromJson(json["projectDetails"]);
    }
    if (json.containsKey("recordingDetails")) {
      recordingDetails = new VideoRecordingDetails.fromJson(json["recordingDetails"]);
    }
    if (json.containsKey("snippet")) {
      snippet = new VideoSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("statistics")) {
      statistics = new VideoStatistics.fromJson(json["statistics"]);
    }
    if (json.containsKey("status")) {
      status = new VideoStatus.fromJson(json["status"]);
    }
    if (json.containsKey("suggestions")) {
      suggestions = new VideoSuggestions.fromJson(json["suggestions"]);
    }
    if (json.containsKey("topicDetails")) {
      topicDetails = new VideoTopicDetails.fromJson(json["topicDetails"]);
    }
  }

  /** Create JSON Object for Video */
  core.Map toJson() {
    var output = new core.Map();

    if (ageGating != null) {
      output["ageGating"] = ageGating.toJson();
    }
    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
    }
    if (conversionPings != null) {
      output["conversionPings"] = conversionPings.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileDetails != null) {
      output["fileDetails"] = fileDetails.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (monetizationDetails != null) {
      output["monetizationDetails"] = monetizationDetails.toJson();
    }
    if (player != null) {
      output["player"] = player.toJson();
    }
    if (processingDetails != null) {
      output["processingDetails"] = processingDetails.toJson();
    }
    if (projectDetails != null) {
      output["projectDetails"] = projectDetails.toJson();
    }
    if (recordingDetails != null) {
      output["recordingDetails"] = recordingDetails.toJson();
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }
    if (statistics != null) {
      output["statistics"] = statistics.toJson();
    }
    if (status != null) {
      output["status"] = status.toJson();
    }
    if (suggestions != null) {
      output["suggestions"] = suggestions.toJson();
    }
    if (topicDetails != null) {
      output["topicDetails"] = topicDetails.toJson();
    }

    return output;
  }

  /** Return String representation of Video */
  core.String toString() => JSON.stringify(this.toJson());

}

class VideoAgeGating {

  /** Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content. */
  core.bool alcoholContent;

  /** Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present. */
  core.bool restricted;

  /** Video game rating, if any. */
  core.String videoGameRating;

  /** Create new VideoAgeGating from JSON data */
  VideoAgeGating.fromJson(core.Map json) {
    if (json.containsKey("alcoholContent")) {
      alcoholContent = json["alcoholContent"];
    }
    if (json.containsKey("restricted")) {
      restricted = json["restricted"];
    }
    if (json.containsKey("videoGameRating")) {
      videoGameRating = json["videoGameRating"];
    }
  }

  /** Create JSON Object for VideoAgeGating */
  core.Map toJson() {
    var output = new core.Map();

    if (alcoholContent != null) {
      output["alcoholContent"] = alcoholContent;
    }
    if (restricted != null) {
      output["restricted"] = restricted;
    }
    if (videoGameRating != null) {
      output["videoGameRating"] = videoGameRating;
    }

    return output;
  }

  /** Return String representation of VideoAgeGating */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A videoCategory resource identifies a category that has been or could be associated with uploaded videos. */
class VideoCategory {

  /** Etag of this resource. */
  core.String etag;

  /** The ID that YouTube uses to uniquely identify the video category. */
  core.String id;

  /** The kind, fixed to "youtube#videoCategory". */
  core.String kind;

  /** The snippet object contains basic details about the video category, including its title. */
  VideoCategorySnippet snippet;

  /** Create new VideoCategory from JSON data */
  VideoCategory.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("snippet")) {
      snippet = new VideoCategorySnippet.fromJson(json["snippet"]);
    }
  }

  /** Create JSON Object for VideoCategory */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (snippet != null) {
      output["snippet"] = snippet.toJson();
    }

    return output;
  }

  /** Return String representation of VideoCategory */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of video categories returned as the response to a youtube.videoCategory.list call. */
class VideoCategoryListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of video categories that can be associated with YouTube videos. In this map, the video category ID is the map key, and its value is the corresponding videoCategory resource. */
  core.List<VideoCategory> items;

  /** The type of the API response. For this operation, the value will be youtube#videoCategoryListResponse. */
  core.String kind;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new VideoCategoryListResponse from JSON data */
  VideoCategoryListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new VideoCategory.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for VideoCategoryListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of VideoCategoryListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a video category, such as its localized title. */
class VideoCategorySnippet {

  /** The YouTube channel that created the video category. */
  core.String channelId;

  /** The video category's title. */
  core.String title;

  /** Create new VideoCategorySnippet from JSON data */
  VideoCategorySnippet.fromJson(core.Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for VideoCategorySnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of VideoCategorySnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a YouTube Video. */
class VideoContentDetails {

  /** The value of captions indicates whether the video has captions or not. */
  core.String caption;

  /** Specifies the ratings that the video received under various rating schemes. */
  ContentRating contentRating;

  /** The countryRestriction object contains information about the countries where a video is (or is not) viewable. */
  AccessPolicy countryRestriction;

  /** The value of definition indicates whether the video is available in high definition or only in standard definition. */
  core.String definition;

  /** The value of dimension indicates whether the video is available in 3D or in 2D. */
  core.String dimension;

  /** The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long. */
  core.String duration;

  /** The value of is_license_content indicates whether the video is licensed content. */
  core.bool licensedContent;

  /** The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property. */
  VideoContentDetailsRegionRestriction regionRestriction;

  /** Create new VideoContentDetails from JSON data */
  VideoContentDetails.fromJson(core.Map json) {
    if (json.containsKey("caption")) {
      caption = json["caption"];
    }
    if (json.containsKey("contentRating")) {
      contentRating = new ContentRating.fromJson(json["contentRating"]);
    }
    if (json.containsKey("countryRestriction")) {
      countryRestriction = new AccessPolicy.fromJson(json["countryRestriction"]);
    }
    if (json.containsKey("definition")) {
      definition = json["definition"];
    }
    if (json.containsKey("dimension")) {
      dimension = json["dimension"];
    }
    if (json.containsKey("duration")) {
      duration = json["duration"];
    }
    if (json.containsKey("licensedContent")) {
      licensedContent = json["licensedContent"];
    }
    if (json.containsKey("regionRestriction")) {
      regionRestriction = new VideoContentDetailsRegionRestriction.fromJson(json["regionRestriction"]);
    }
  }

  /** Create JSON Object for VideoContentDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (caption != null) {
      output["caption"] = caption;
    }
    if (contentRating != null) {
      output["contentRating"] = contentRating.toJson();
    }
    if (countryRestriction != null) {
      output["countryRestriction"] = countryRestriction.toJson();
    }
    if (definition != null) {
      output["definition"] = definition;
    }
    if (dimension != null) {
      output["dimension"] = dimension;
    }
    if (duration != null) {
      output["duration"] = duration;
    }
    if (licensedContent != null) {
      output["licensedContent"] = licensedContent;
    }
    if (regionRestriction != null) {
      output["regionRestriction"] = regionRestriction.toJson();
    }

    return output;
  }

  /** Return String representation of VideoContentDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** DEPRECATED Region restriction of the video. */
class VideoContentDetailsRegionRestriction {

  /** A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries. */
  core.List<core.String> allowed;

  /** A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries. */
  core.List<core.String> blocked;

  /** Create new VideoContentDetailsRegionRestriction from JSON data */
  VideoContentDetailsRegionRestriction.fromJson(core.Map json) {
    if (json.containsKey("allowed")) {
      allowed = [];
      json["allowed"].forEach((item) {
        allowed.add(item);
      });
    }
    if (json.containsKey("blocked")) {
      blocked = [];
      json["blocked"].forEach((item) {
        blocked.add(item);
      });
    }
  }

  /** Create JSON Object for VideoContentDetailsRegionRestriction */
  core.Map toJson() {
    var output = new core.Map();

    if (allowed != null) {
      output["allowed"] = new core.List();
      allowed.forEach((item) {
        output["allowed"].add(item);
      });
    }
    if (blocked != null) {
      output["blocked"] = new core.List();
      blocked.forEach((item) {
        output["blocked"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoContentDetailsRegionRestriction */
  core.String toString() => JSON.stringify(this.toJson());

}

class VideoConversionPing {

  /** Defines the context of the ping. */
  core.String context;

  /** The url (without the schema) that the app shall send the ping to. It's at caller's descretion to decide which schema to use (http vs https) Example of a returned url: //googleads.g.doubleclick.net/pagead/ viewthroughconversion/962985656/?data=path%3DtHe_path%3Btype%3D like%3Butuid%3DGISQtTNGYqaYl4sKxoVvKA%3Bytvid%3DUrIaJUvIQDg&labe=default The caller must append biscotti authentication (ms param in case of mobile, for example) to this ping. */
  core.String conversionUrl;

  /** Create new VideoConversionPing from JSON data */
  VideoConversionPing.fromJson(core.Map json) {
    if (json.containsKey("context")) {
      context = json["context"];
    }
    if (json.containsKey("conversionUrl")) {
      conversionUrl = json["conversionUrl"];
    }
  }

  /** Create JSON Object for VideoConversionPing */
  core.Map toJson() {
    var output = new core.Map();

    if (context != null) {
      output["context"] = context;
    }
    if (conversionUrl != null) {
      output["conversionUrl"] = conversionUrl;
    }

    return output;
  }

  /** Return String representation of VideoConversionPing */
  core.String toString() => JSON.stringify(this.toJson());

}

class VideoConversionPings {

  /** Pings that the app shall fire for a video (authenticated by biscotti cookie). Each ping has a context, in which the app must fire the ping, and a url identifying the ping. */
  core.List<VideoConversionPing> pings;

  /** Create new VideoConversionPings from JSON data */
  VideoConversionPings.fromJson(core.Map json) {
    if (json.containsKey("pings")) {
      pings = [];
      json["pings"].forEach((item) {
        pings.add(new VideoConversionPing.fromJson(item));
      });
    }
  }

  /** Create JSON Object for VideoConversionPings */
  core.Map toJson() {
    var output = new core.Map();

    if (pings != null) {
      output["pings"] = new core.List();
      pings.forEach((item) {
        output["pings"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VideoConversionPings */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information. */
class VideoFileDetails {

  /** A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream. */
  core.List<VideoFileDetailsAudioStream> audioStreams;

  /** The uploaded video file's combined (video and audio) bitrate in bits per second. */
  core.String bitrateBps;

  /** The uploaded video file's container format. */
  core.String container;

  /** The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported:  
- Date only: YYYY-MM-DD 
- Naive time: YYYY-MM-DDTHH:MM:SS 
- Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM */
  core.String creationTime;

  /** The length of the uploaded video in milliseconds. */
  core.String durationMs;

  /** The uploaded file's name. This field is present whether a video file or another type of file was uploaded. */
  core.String fileName;

  /** The uploaded file's size in bytes. This field is present whether a video file or another type of file was uploaded. */
  core.String fileSize;

  /** The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded. */
  core.String fileType;

  /** Geographic coordinates that identify the place where the uploaded video was recorded. Coordinates are defined using WGS 84. */
  GeoPoint recordingLocation;

  /** A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream. */
  core.List<VideoFileDetailsVideoStream> videoStreams;

  /** Create new VideoFileDetails from JSON data */
  VideoFileDetails.fromJson(core.Map json) {
    if (json.containsKey("audioStreams")) {
      audioStreams = [];
      json["audioStreams"].forEach((item) {
        audioStreams.add(new VideoFileDetailsAudioStream.fromJson(item));
      });
    }
    if (json.containsKey("bitrateBps")) {
      bitrateBps = json["bitrateBps"];
    }
    if (json.containsKey("container")) {
      container = json["container"];
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("durationMs")) {
      durationMs = json["durationMs"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("fileSize")) {
      fileSize = json["fileSize"];
    }
    if (json.containsKey("fileType")) {
      fileType = json["fileType"];
    }
    if (json.containsKey("recordingLocation")) {
      recordingLocation = new GeoPoint.fromJson(json["recordingLocation"]);
    }
    if (json.containsKey("videoStreams")) {
      videoStreams = [];
      json["videoStreams"].forEach((item) {
        videoStreams.add(new VideoFileDetailsVideoStream.fromJson(item));
      });
    }
  }

  /** Create JSON Object for VideoFileDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (audioStreams != null) {
      output["audioStreams"] = new core.List();
      audioStreams.forEach((item) {
        output["audioStreams"].add(item.toJson());
      });
    }
    if (bitrateBps != null) {
      output["bitrateBps"] = bitrateBps;
    }
    if (container != null) {
      output["container"] = container;
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (durationMs != null) {
      output["durationMs"] = durationMs;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (fileSize != null) {
      output["fileSize"] = fileSize;
    }
    if (fileType != null) {
      output["fileType"] = fileType;
    }
    if (recordingLocation != null) {
      output["recordingLocation"] = recordingLocation.toJson();
    }
    if (videoStreams != null) {
      output["videoStreams"] = new core.List();
      videoStreams.forEach((item) {
        output["videoStreams"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VideoFileDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about an audio stream. */
class VideoFileDetailsAudioStream {

  /** The audio stream's bitrate, in bits per second. */
  core.String bitrateBps;

  /** The number of audio channels that the stream contains. */
  core.int channelCount;

  /** The audio codec that the stream uses. */
  core.String codec;

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  core.String vendor;

  /** Create new VideoFileDetailsAudioStream from JSON data */
  VideoFileDetailsAudioStream.fromJson(core.Map json) {
    if (json.containsKey("bitrateBps")) {
      bitrateBps = json["bitrateBps"];
    }
    if (json.containsKey("channelCount")) {
      channelCount = json["channelCount"];
    }
    if (json.containsKey("codec")) {
      codec = json["codec"];
    }
    if (json.containsKey("vendor")) {
      vendor = json["vendor"];
    }
  }

  /** Create JSON Object for VideoFileDetailsAudioStream */
  core.Map toJson() {
    var output = new core.Map();

    if (bitrateBps != null) {
      output["bitrateBps"] = bitrateBps;
    }
    if (channelCount != null) {
      output["channelCount"] = channelCount;
    }
    if (codec != null) {
      output["codec"] = codec;
    }
    if (vendor != null) {
      output["vendor"] = vendor;
    }

    return output;
  }

  /** Return String representation of VideoFileDetailsAudioStream */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Information about a video stream. */
class VideoFileDetailsVideoStream {

  /** The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed. */
  core.num aspectRatio;

  /** The video stream's bitrate, in bits per second. */
  core.String bitrateBps;

  /** The video codec that the stream uses. */
  core.String codec;

  /** The video stream's frame rate, in frames per second. */
  core.num frameRateFps;

  /** The encoded video content's height in pixels. */
  core.int heightPixels;

  /** The amount that YouTube needs to rotate the original source content to properly display the video. */
  core.String rotation;

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  core.String vendor;

  /** The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as width_pixelsÂ /Â height_pixels. */
  core.int widthPixels;

  /** Create new VideoFileDetailsVideoStream from JSON data */
  VideoFileDetailsVideoStream.fromJson(core.Map json) {
    if (json.containsKey("aspectRatio")) {
      aspectRatio = json["aspectRatio"];
    }
    if (json.containsKey("bitrateBps")) {
      bitrateBps = json["bitrateBps"];
    }
    if (json.containsKey("codec")) {
      codec = json["codec"];
    }
    if (json.containsKey("frameRateFps")) {
      frameRateFps = json["frameRateFps"];
    }
    if (json.containsKey("heightPixels")) {
      heightPixels = json["heightPixels"];
    }
    if (json.containsKey("rotation")) {
      rotation = json["rotation"];
    }
    if (json.containsKey("vendor")) {
      vendor = json["vendor"];
    }
    if (json.containsKey("widthPixels")) {
      widthPixels = json["widthPixels"];
    }
  }

  /** Create JSON Object for VideoFileDetailsVideoStream */
  core.Map toJson() {
    var output = new core.Map();

    if (aspectRatio != null) {
      output["aspectRatio"] = aspectRatio;
    }
    if (bitrateBps != null) {
      output["bitrateBps"] = bitrateBps;
    }
    if (codec != null) {
      output["codec"] = codec;
    }
    if (frameRateFps != null) {
      output["frameRateFps"] = frameRateFps;
    }
    if (heightPixels != null) {
      output["heightPixels"] = heightPixels;
    }
    if (rotation != null) {
      output["rotation"] = rotation;
    }
    if (vendor != null) {
      output["vendor"] = vendor;
    }
    if (widthPixels != null) {
      output["widthPixels"] = widthPixels;
    }

    return output;
  }

  /** Return String representation of VideoFileDetailsVideoStream */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A list of video ratings returned as the response to a youtube.videos.getRating call. */
class VideoGetRatingResponse {

  /** The ETag of the response. */
  core.String etag;

  /** A list of ratings that match the request criteria. */
  core.List<VideoRating> items;

  /** The type of the API response. For this operation, the value will be youtube#videoGetRatingResponse. */
  core.String kind;

  /** Create new VideoGetRatingResponse from JSON data */
  VideoGetRatingResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new VideoRating.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for VideoGetRatingResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of VideoGetRatingResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of videos returned as the response to a youtube.videos.list call. */
class VideoListResponse {

  /** The ETag of the response. */
  core.String etag;

  /** Serialized EventId of the request which produced this response. */
  core.String eventId;

  /** A list of videos that match the request criteria. */
  core.List<Video> items;

  /** The type of the API response. For this operation, the value will be youtube#videoListResponse. */
  core.String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  core.String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  core.String prevPageToken;

  /** The visitorId identifies the visitor. */
  core.String visitorId;

  /** Create new VideoListResponse from JSON data */
  VideoListResponse.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("eventId")) {
      eventId = json["eventId"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Video.fromJson(item));
      });
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
    if (json.containsKey("pageInfo")) {
      pageInfo = new PageInfo.fromJson(json["pageInfo"]);
    }
    if (json.containsKey("prevPageToken")) {
      prevPageToken = json["prevPageToken"];
    }
    if (json.containsKey("visitorId")) {
      visitorId = json["visitorId"];
    }
  }

  /** Create JSON Object for VideoListResponse */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (eventId != null) {
      output["eventId"] = eventId;
    }
    if (items != null) {
      output["items"] = new core.List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }
    if (pageInfo != null) {
      output["pageInfo"] = pageInfo.toJson();
    }
    if (prevPageToken != null) {
      output["prevPageToken"] = prevPageToken;
    }
    if (visitorId != null) {
      output["visitorId"] = visitorId;
    }

    return output;
  }

  /** Return String representation of VideoListResponse */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Details about monetization of a YouTube Video. */
class VideoMonetizationDetails {

  /** The value of access indicates whether the video can be monetized or not. */
  AccessPolicy access;

  /** Create new VideoMonetizationDetails from JSON data */
  VideoMonetizationDetails.fromJson(core.Map json) {
    if (json.containsKey("access")) {
      access = new AccessPolicy.fromJson(json["access"]);
    }
  }

  /** Create JSON Object for VideoMonetizationDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (access != null) {
      output["access"] = access.toJson();
    }

    return output;
  }

  /** Return String representation of VideoMonetizationDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Player to be used for a video playback. */
class VideoPlayer {

  /** An <iframe> tag that embeds a player that will play the video. */
  core.String embedHtml;

  /** Create new VideoPlayer from JSON data */
  VideoPlayer.fromJson(core.Map json) {
    if (json.containsKey("embedHtml")) {
      embedHtml = json["embedHtml"];
    }
  }

  /** Create JSON Object for VideoPlayer */
  core.Map toJson() {
    var output = new core.Map();

    if (embedHtml != null) {
      output["embedHtml"] = embedHtml;
    }

    return output;
  }

  /** Return String representation of VideoPlayer */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Describes processing status and progress and availability of some other Video resource parts. */
class VideoProcessingDetails {

  /** This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  core.String editorSuggestionsAvailability;

  /** This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the fileDetails part in your videos.list() request. */
  core.String fileDetailsAvailability;

  /** The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed. */
  core.String processingFailureReason;

  /** This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  core.String processingIssuesAvailability;

  /** The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing. */
  VideoProcessingDetailsProcessingProgress processingProgress;

  /** The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. */
  core.String processingStatus;

  /** This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  core.String tagSuggestionsAvailability;

  /** This value indicates whether thumbnail images have been generated for the video. */
  core.String thumbnailsAvailability;

  /** Create new VideoProcessingDetails from JSON data */
  VideoProcessingDetails.fromJson(core.Map json) {
    if (json.containsKey("editorSuggestionsAvailability")) {
      editorSuggestionsAvailability = json["editorSuggestionsAvailability"];
    }
    if (json.containsKey("fileDetailsAvailability")) {
      fileDetailsAvailability = json["fileDetailsAvailability"];
    }
    if (json.containsKey("processingFailureReason")) {
      processingFailureReason = json["processingFailureReason"];
    }
    if (json.containsKey("processingIssuesAvailability")) {
      processingIssuesAvailability = json["processingIssuesAvailability"];
    }
    if (json.containsKey("processingProgress")) {
      processingProgress = new VideoProcessingDetailsProcessingProgress.fromJson(json["processingProgress"]);
    }
    if (json.containsKey("processingStatus")) {
      processingStatus = json["processingStatus"];
    }
    if (json.containsKey("tagSuggestionsAvailability")) {
      tagSuggestionsAvailability = json["tagSuggestionsAvailability"];
    }
    if (json.containsKey("thumbnailsAvailability")) {
      thumbnailsAvailability = json["thumbnailsAvailability"];
    }
  }

  /** Create JSON Object for VideoProcessingDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (editorSuggestionsAvailability != null) {
      output["editorSuggestionsAvailability"] = editorSuggestionsAvailability;
    }
    if (fileDetailsAvailability != null) {
      output["fileDetailsAvailability"] = fileDetailsAvailability;
    }
    if (processingFailureReason != null) {
      output["processingFailureReason"] = processingFailureReason;
    }
    if (processingIssuesAvailability != null) {
      output["processingIssuesAvailability"] = processingIssuesAvailability;
    }
    if (processingProgress != null) {
      output["processingProgress"] = processingProgress.toJson();
    }
    if (processingStatus != null) {
      output["processingStatus"] = processingStatus;
    }
    if (tagSuggestionsAvailability != null) {
      output["tagSuggestionsAvailability"] = tagSuggestionsAvailability;
    }
    if (thumbnailsAvailability != null) {
      output["thumbnailsAvailability"] = thumbnailsAvailability;
    }

    return output;
  }

  /** Return String representation of VideoProcessingDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Video processing progress and completion time estimate. */
class VideoProcessingDetailsProcessingProgress {

  /** The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating:
100 * parts_processed / parts_total

Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video. */
  core.String partsProcessed;

  /** An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video. */
  core.String partsTotal;

  /** An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video. */
  core.String timeLeftMs;

  /** Create new VideoProcessingDetailsProcessingProgress from JSON data */
  VideoProcessingDetailsProcessingProgress.fromJson(core.Map json) {
    if (json.containsKey("partsProcessed")) {
      partsProcessed = json["partsProcessed"];
    }
    if (json.containsKey("partsTotal")) {
      partsTotal = json["partsTotal"];
    }
    if (json.containsKey("timeLeftMs")) {
      timeLeftMs = json["timeLeftMs"];
    }
  }

  /** Create JSON Object for VideoProcessingDetailsProcessingProgress */
  core.Map toJson() {
    var output = new core.Map();

    if (partsProcessed != null) {
      output["partsProcessed"] = partsProcessed;
    }
    if (partsTotal != null) {
      output["partsTotal"] = partsTotal;
    }
    if (timeLeftMs != null) {
      output["timeLeftMs"] = timeLeftMs;
    }

    return output;
  }

  /** Return String representation of VideoProcessingDetailsProcessingProgress */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Project specific details about the content of a YouTube Video. */
class VideoProjectDetails {

  /** A list of project tags associated with the video during the upload. */
  core.List<core.String> tags;

  /** Create new VideoProjectDetails from JSON data */
  VideoProjectDetails.fromJson(core.Map json) {
    if (json.containsKey("tags")) {
      tags = [];
      json["tags"].forEach((item) {
        tags.add(item);
      });
    }
  }

  /** Create JSON Object for VideoProjectDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (tags != null) {
      output["tags"] = new core.List();
      tags.forEach((item) {
        output["tags"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoProjectDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about rating of a video. */
class VideoRating {

  /** Rating of a video. */
  core.String rating;

  /** The ID that YouTube uses to uniquely identify the video. */
  core.String videoId;

  /** Create new VideoRating from JSON data */
  VideoRating.fromJson(core.Map json) {
    if (json.containsKey("rating")) {
      rating = json["rating"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for VideoRating */
  core.Map toJson() {
    var output = new core.Map();

    if (rating != null) {
      output["rating"] = rating;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of VideoRating */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Recording information associated with the video. */
class VideoRecordingDetails {

  /** The geolocation information associated with the video. */
  GeoPoint location;

  /** The text description of the location where the video was recorded. */
  core.String locationDescription;

  /** The date and time when the video was recorded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String recordingDate;

  /** Create new VideoRecordingDetails from JSON data */
  VideoRecordingDetails.fromJson(core.Map json) {
    if (json.containsKey("location")) {
      location = new GeoPoint.fromJson(json["location"]);
    }
    if (json.containsKey("locationDescription")) {
      locationDescription = json["locationDescription"];
    }
    if (json.containsKey("recordingDate")) {
      recordingDate = json["recordingDate"];
    }
  }

  /** Create JSON Object for VideoRecordingDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (location != null) {
      output["location"] = location.toJson();
    }
    if (locationDescription != null) {
      output["locationDescription"] = locationDescription;
    }
    if (recordingDate != null) {
      output["recordingDate"] = recordingDate;
    }

    return output;
  }

  /** Return String representation of VideoRecordingDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a video, including title, description, uploader, thumbnails and category. */
class VideoSnippet {

  /** The YouTube video category associated with the video. */
  core.String categoryId;

  /** The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. */
  core.String channelId;

  /** Channel title for the channel that the video belongs to. */
  core.String channelTitle;

  /** The video's description. */
  core.String description;

  /** The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  core.String publishedAt;

  /** A list of keyword tags associated with the video. Tags may contain spaces. This field is only visible to the video's uploader. */
  core.List<core.String> tags;

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The video's title. */
  core.String title;

  /** Create new VideoSnippet from JSON data */
  VideoSnippet.fromJson(core.Map json) {
    if (json.containsKey("categoryId")) {
      categoryId = json["categoryId"];
    }
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("tags")) {
      tags = [];
      json["tags"].forEach((item) {
        tags.add(item);
      });
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new ThumbnailDetails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for VideoSnippet */
  core.Map toJson() {
    var output = new core.Map();

    if (categoryId != null) {
      output["categoryId"] = categoryId;
    }
    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAt != null) {
      output["publishedAt"] = publishedAt;
    }
    if (tags != null) {
      output["tags"] = new core.List();
      tags.forEach((item) {
        output["tags"].add(item);
      });
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of VideoSnippet */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Statistics about the video, such as the number of times the video was viewed or liked. */
class VideoStatistics {

  /** The number of comments for the video. */
  core.String commentCount;

  /** The number of users who have indicated that they disliked the video by giving it a negative rating. */
  core.String dislikeCount;

  /** The number of users who currently have the video marked as a favorite video. */
  core.String favoriteCount;

  /** The number of users who have indicated that they liked the video by giving it a positive rating. */
  core.String likeCount;

  /** The number of times the video has been viewed. */
  core.String viewCount;

  /** Create new VideoStatistics from JSON data */
  VideoStatistics.fromJson(core.Map json) {
    if (json.containsKey("commentCount")) {
      commentCount = json["commentCount"];
    }
    if (json.containsKey("dislikeCount")) {
      dislikeCount = json["dislikeCount"];
    }
    if (json.containsKey("favoriteCount")) {
      favoriteCount = json["favoriteCount"];
    }
    if (json.containsKey("likeCount")) {
      likeCount = json["likeCount"];
    }
    if (json.containsKey("viewCount")) {
      viewCount = json["viewCount"];
    }
  }

  /** Create JSON Object for VideoStatistics */
  core.Map toJson() {
    var output = new core.Map();

    if (commentCount != null) {
      output["commentCount"] = commentCount;
    }
    if (dislikeCount != null) {
      output["dislikeCount"] = dislikeCount;
    }
    if (favoriteCount != null) {
      output["favoriteCount"] = favoriteCount;
    }
    if (likeCount != null) {
      output["likeCount"] = likeCount;
    }
    if (viewCount != null) {
      output["viewCount"] = viewCount;
    }

    return output;
  }

  /** Return String representation of VideoStatistics */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a video category, such as its localized title. */
class VideoStatus {

  /** This value indicates if the video can be embedded on another website. */
  core.bool embeddable;

  /** This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed. */
  core.String failureReason;

  /** The video's license. */
  core.String license;

  /** The video's privacy status. */
  core.String privacyStatus;

  /** This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. */
  core.bool publicStatsViewable;

  /** This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected. */
  core.String rejectionReason;

  /** The status of the uploaded video. */
  core.String uploadStatus;

  /** Create new VideoStatus from JSON data */
  VideoStatus.fromJson(core.Map json) {
    if (json.containsKey("embeddable")) {
      embeddable = json["embeddable"];
    }
    if (json.containsKey("failureReason")) {
      failureReason = json["failureReason"];
    }
    if (json.containsKey("license")) {
      license = json["license"];
    }
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
    if (json.containsKey("publicStatsViewable")) {
      publicStatsViewable = json["publicStatsViewable"];
    }
    if (json.containsKey("rejectionReason")) {
      rejectionReason = json["rejectionReason"];
    }
    if (json.containsKey("uploadStatus")) {
      uploadStatus = json["uploadStatus"];
    }
  }

  /** Create JSON Object for VideoStatus */
  core.Map toJson() {
    var output = new core.Map();

    if (embeddable != null) {
      output["embeddable"] = embeddable;
    }
    if (failureReason != null) {
      output["failureReason"] = failureReason;
    }
    if (license != null) {
      output["license"] = license;
    }
    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }
    if (publicStatsViewable != null) {
      output["publicStatsViewable"] = publicStatsViewable;
    }
    if (rejectionReason != null) {
      output["rejectionReason"] = rejectionReason;
    }
    if (uploadStatus != null) {
      output["uploadStatus"] = uploadStatus;
    }

    return output;
  }

  /** Return String representation of VideoStatus */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions. */
class VideoSuggestions {

  /** A list of video editing operations that might improve the video quality or playback experience of the uploaded video. */
  core.List<core.String> editorSuggestions;

  /** A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed. */
  core.List<core.String> processingErrors;

  /** A list of suggestions that may improve YouTube's ability to process the video. */
  core.List<core.String> processingHints;

  /** A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track. */
  core.List<core.String> processingWarnings;

  /** A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube. */
  core.List<VideoSuggestionsTagSuggestion> tagSuggestions;

  /** Create new VideoSuggestions from JSON data */
  VideoSuggestions.fromJson(core.Map json) {
    if (json.containsKey("editorSuggestions")) {
      editorSuggestions = [];
      json["editorSuggestions"].forEach((item) {
        editorSuggestions.add(item);
      });
    }
    if (json.containsKey("processingErrors")) {
      processingErrors = [];
      json["processingErrors"].forEach((item) {
        processingErrors.add(item);
      });
    }
    if (json.containsKey("processingHints")) {
      processingHints = [];
      json["processingHints"].forEach((item) {
        processingHints.add(item);
      });
    }
    if (json.containsKey("processingWarnings")) {
      processingWarnings = [];
      json["processingWarnings"].forEach((item) {
        processingWarnings.add(item);
      });
    }
    if (json.containsKey("tagSuggestions")) {
      tagSuggestions = [];
      json["tagSuggestions"].forEach((item) {
        tagSuggestions.add(new VideoSuggestionsTagSuggestion.fromJson(item));
      });
    }
  }

  /** Create JSON Object for VideoSuggestions */
  core.Map toJson() {
    var output = new core.Map();

    if (editorSuggestions != null) {
      output["editorSuggestions"] = new core.List();
      editorSuggestions.forEach((item) {
        output["editorSuggestions"].add(item);
      });
    }
    if (processingErrors != null) {
      output["processingErrors"] = new core.List();
      processingErrors.forEach((item) {
        output["processingErrors"].add(item);
      });
    }
    if (processingHints != null) {
      output["processingHints"] = new core.List();
      processingHints.forEach((item) {
        output["processingHints"].add(item);
      });
    }
    if (processingWarnings != null) {
      output["processingWarnings"] = new core.List();
      processingWarnings.forEach((item) {
        output["processingWarnings"].add(item);
      });
    }
    if (tagSuggestions != null) {
      output["tagSuggestions"] = new core.List();
      tagSuggestions.forEach((item) {
        output["tagSuggestions"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VideoSuggestions */
  core.String toString() => JSON.stringify(this.toJson());

}

/** A single tag suggestion with it's relevance information. */
class VideoSuggestionsTagSuggestion {

  /** A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword. */
  core.List<core.String> categoryRestricts;

  /** The keyword tag suggested for the video. */
  core.String tag;

  /** Create new VideoSuggestionsTagSuggestion from JSON data */
  VideoSuggestionsTagSuggestion.fromJson(core.Map json) {
    if (json.containsKey("categoryRestricts")) {
      categoryRestricts = [];
      json["categoryRestricts"].forEach((item) {
        categoryRestricts.add(item);
      });
    }
    if (json.containsKey("tag")) {
      tag = json["tag"];
    }
  }

  /** Create JSON Object for VideoSuggestionsTagSuggestion */
  core.Map toJson() {
    var output = new core.Map();

    if (categoryRestricts != null) {
      output["categoryRestricts"] = new core.List();
      categoryRestricts.forEach((item) {
        output["categoryRestricts"].add(item);
      });
    }
    if (tag != null) {
      output["tag"] = tag;
    }

    return output;
  }

  /** Return String representation of VideoSuggestionsTagSuggestion */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Freebase topic information related to the video. */
class VideoTopicDetails {

  /** A list of Freebase topic IDs associated with the video. You can retrieve information about each topic using the Freebase Topic API. */
  core.List<core.String> topicIds;

  /** Create new VideoTopicDetails from JSON data */
  VideoTopicDetails.fromJson(core.Map json) {
    if (json.containsKey("topicIds")) {
      topicIds = [];
      json["topicIds"].forEach((item) {
        topicIds.add(item);
      });
    }
  }

  /** Create JSON Object for VideoTopicDetails */
  core.Map toJson() {
    var output = new core.Map();

    if (topicIds != null) {
      output["topicIds"] = new core.List();
      topicIds.forEach((item) {
        output["topicIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoTopicDetails */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Branding properties for the watch. */
class WatchSettings {

  /** The text color for the video watch page's branded area. */
  core.String backgroundColor;

  /** An ID that uniquely identifies a playlist that displays next to the video player. */
  core.String featuredPlaylistId;

  /** The background color for the video watch page's branded area. */
  core.String textColor;

  /** Create new WatchSettings from JSON data */
  WatchSettings.fromJson(core.Map json) {
    if (json.containsKey("backgroundColor")) {
      backgroundColor = json["backgroundColor"];
    }
    if (json.containsKey("featuredPlaylistId")) {
      featuredPlaylistId = json["featuredPlaylistId"];
    }
    if (json.containsKey("textColor")) {
      textColor = json["textColor"];
    }
  }

  /** Create JSON Object for WatchSettings */
  core.Map toJson() {
    var output = new core.Map();

    if (backgroundColor != null) {
      output["backgroundColor"] = backgroundColor;
    }
    if (featuredPlaylistId != null) {
      output["featuredPlaylistId"] = featuredPlaylistId;
    }
    if (textColor != null) {
      output["textColor"] = textColor;
    }

    return output;
  }

  /** Return String representation of WatchSettings */
  core.String toString() => JSON.stringify(this.toJson());

}

