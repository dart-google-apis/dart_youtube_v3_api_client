part of youtube_v3_api_client;

/** Rights management policy for YouTube resources. */
class AccessPolicy {

  /** The value of allowed indicates whether the access to the policy is allowed or denied by default. */
  bool allowed;

  /** A list of region codes that identify countries where the default policy do not apply. */
  List<String> exception;

  /** Create new AccessPolicy from JSON data */
  AccessPolicy.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (allowed != null) {
      output["allowed"] = allowed;
    }
    if (exception != null) {
      output["exception"] = new List();
      exception.forEach((item) {
        output["exception"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of AccessPolicy */
  String toString() => JSON.stringify(this.toJson());

}

/** An activity resource contains information about an action that a particular channel, or user, has taken on YouTube. The actions reported in activity feeds include rating a video, sharing a video, marking a video as a favorite, commenting on a video, uploading a video, and so forth. Each activity resource identifies the type of action, the channel associated with the action, and the resource(s) associated with the action, such as the video that was rated or uploaded. */
class Activity {

  /** The contentDetails object contains information about the content associated with the activity. For example, if the snippet.type value is videoRated, then the contentDetails object's content identifies the rated video. */
  ActivityContentDetails contentDetails;

  /** The ETag of the activity resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the activity. */
  String id;

  /** The type of the API resource. For activity resources, the value will be youtube#activity. */
  String kind;

  /** The snippet object contains basic details about the activity, including the activity's type and group ID. */
  ActivitySnippet snippet;

  /** Create new Activity from JSON data */
  Activity.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

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

  /** The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation. */
  ActivityContentDetailsRecommendation recommendation;

  /** The social object contains details about a social network post. This property is only present if the snippet.type is social. */
  ActivityContentDetailsSocial social;

  /** The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription. */
  ActivityContentDetailsSubscription subscription;

  /** The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload. */
  ActivityContentDetailsUpload upload;

  /** Create new ActivityContentDetails from JSON data */
  ActivityContentDetails.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The upload object contains information about the uploaded video. This property is only present if the snippet.type is upload. */
class ActivityContentDetailsUpload {

  /** The ID that YouTube uses to uniquely identify the uploaded video. */
  String videoId;

  /** Create new ActivityContentDetailsUpload from JSON data */
  ActivityContentDetailsUpload.fromJson(Map json) {
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for ActivityContentDetailsUpload */
  Map toJson() {
    var output = new Map();

    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsUpload */
  String toString() => JSON.stringify(this.toJson());

}

/** The recommendation object contains information about a recommended resource. This property is only present if the snippet.type is recommendation. */
class ActivityContentDetailsRecommendation {

  /** The reason that the resource is recommended to the user. */
  String reason;

  /** The resourceId object contains information that identifies the recommended resource. */
  ResourceId resourceId;

  /** The seedResourceId object contains information about the resource that caused the recommendation. */
  ResourceId seedResourceId;

  /** Create new ActivityContentDetailsRecommendation from JSON data */
  ActivityContentDetailsRecommendation.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The channelItem object contains details about a resource which was added to a channel. This property is only present if the snippet.type is channelItem. */
class ActivityContentDetailsChannelItem {

  /** The resourceId object contains information that identifies the resource that was added to the channel. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsChannelItem from JSON data */
  ActivityContentDetailsChannelItem.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsChannelItem */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsChannelItem */
  String toString() => JSON.stringify(this.toJson());

}

/** The playlistItem object contains information about a new playlist item. This property is only present if the snippet.type is playlistItem. */
class ActivityContentDetailsPlaylistItem {

  /** The value that YouTube uses to uniquely identify the playlist. */
  String playlistId;

  /** ID of the item within the playlist. */
  String playlistItemId;

  /** The resourceId object contains information about the resource that was added to the playlist. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsPlaylistItem from JSON data */
  ActivityContentDetailsPlaylistItem.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The bulletin object contains details about a channel bulletin post. This object is only present if the snippet.type is bulletin. */
class ActivityContentDetailsBulletin {

  /** The resourceId object contains information that identifies the resource associated with a bulletin post. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsBulletin from JSON data */
  ActivityContentDetailsBulletin.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsBulletin */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsBulletin */
  String toString() => JSON.stringify(this.toJson());

}

/** The subscription object contains information about a channel that a user subscribed to. This property is only present if the snippet.type is subscription. */
class ActivityContentDetailsSubscription {

  /** The resourceId object contains information that identifies the resource that the user subscribed to. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsSubscription from JSON data */
  ActivityContentDetailsSubscription.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsSubscription */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsSubscription */
  String toString() => JSON.stringify(this.toJson());

}

/** The favorite object contains information about a video that was marked as a favorite video. This property is only present if the snippet.type is favorite. */
class ActivityContentDetailsFavorite {

  /** The resourceId object contains information that identifies the resource that was marked as a favorite. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsFavorite from JSON data */
  ActivityContentDetailsFavorite.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsFavorite */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsFavorite */
  String toString() => JSON.stringify(this.toJson());

}

/** The like object contains information about a resource that received a positive (like) rating. This property is only present if the snippet.type is like. */
class ActivityContentDetailsLike {

  /** The resourceId object contains information that identifies the rated resource. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsLike from JSON data */
  ActivityContentDetailsLike.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsLike */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsLike */
  String toString() => JSON.stringify(this.toJson());

}

/** The social object contains details about a social network post. This property is only present if the snippet.type is social. */
class ActivityContentDetailsSocial {

  /** The author of the social network post. */
  String author;

  /** An image of the post's author. */
  String imageUrl;

  /** The URL of the social network post. */
  String referenceUrl;

  /** The resourceId object encapsulates information that identifies the resource associated with a social network post. */
  ResourceId resourceId;

  /** The name of the social network. */
  String type;

  /** Create new ActivityContentDetailsSocial from JSON data */
  ActivityContentDetailsSocial.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The comment object contains information about a resource that received a comment. This property is only present if the snippet.type is comment. */
class ActivityContentDetailsComment {

  /** The resourceId object contains information that identifies the resource associated with the comment. */
  ResourceId resourceId;

  /** Create new ActivityContentDetailsComment from JSON data */
  ActivityContentDetailsComment.fromJson(Map json) {
    if (json.containsKey("resourceId")) {
      resourceId = new ResourceId.fromJson(json["resourceId"]);
    }
  }

  /** Create JSON Object for ActivityContentDetailsComment */
  Map toJson() {
    var output = new Map();

    if (resourceId != null) {
      output["resourceId"] = resourceId.toJson();
    }

    return output;
  }

  /** Return String representation of ActivityContentDetailsComment */
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of activities returned as a response to youtube.activities.list calls. */
class ActivityListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of activities, or events, that match the request criteria. */
  List<Activity> items;

  /** The type of the API response. For this operation, the value will be youtube#activityListResponse. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new ActivityListResponse from JSON data */
  ActivityListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for ActivityListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of ActivityListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about an activity, including title, description, thumbnails, activity type and group. */
class ActivitySnippet {

  /** The ID that YouTube uses to uniquely identify the channel associated with the activity. */
  String channelId;

  /** Channel title for the channel responsible for this activity */
  String channelTitle;

  /** The description of the resource primarily associated with the activity. */
  String description;

  /** The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value. */
  String groupId;

  /** The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The title of the resource primarily associated with the activity. */
  String title;

  /** The type of activity that the resource describes. */
  String type;

  /** Create new ActivitySnippet from JSON data */
  ActivitySnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A channel resource contains information about a YouTube channel. */
class Channel {

  /** The brandingSettings object encapsulates information about the branding of the channel. */
  ChannelBrandingSettings brandingSettings;

  /** The contentDetails object encapsulates information about the channel's content. */
  ChannelContentDetails contentDetails;

  /** The ETag for the channel resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the channel. */
  String id;

  /** The type of the API resource. For channel resources, the value will be youtube#channel. */
  String kind;

  /** The snippet object contains basic details about the channel, such as its title, description, and thumbnail images. */
  ChannelSnippet snippet;

  /** The statistics object encapsulates statistics for the channel. */
  ChannelStatistics statistics;

  /** The status object encapsulates information about the privacy status of the channel. */
  ChannelStatus status;

  /** The topicDetails object encapsulates information about Freebase topics associated with the channel. */
  ChannelTopicDetails topicDetails;

  /** Create new Channel from JSON data */
  Channel.fromJson(Map json) {
    if (json.containsKey("brandingSettings")) {
      brandingSettings = new ChannelBrandingSettings.fromJson(json["brandingSettings"]);
    }
    if (json.containsKey("contentDetails")) {
      contentDetails = new ChannelContentDetails.fromJson(json["contentDetails"]);
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
  Map toJson() {
    var output = new Map();

    if (brandingSettings != null) {
      output["brandingSettings"] = brandingSettings.toJson();
    }
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
  String toString() => JSON.stringify(this.toJson());

}

/** Branding properties of a YouTube channel. */
class ChannelBrandingSettings {

  /** Branding properties for the channel view. */
  ChannelSettings channel;

  /** Additional experimental branding properties. */
  List<PropertyValue> hints;

  /** Branding properties for branding images. */
  ImageSettings image;

  /** Branding properties for the watch page. */
  WatchSettings watch;

  /** Create new ChannelBrandingSettings from JSON data */
  ChannelBrandingSettings.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (channel != null) {
      output["channel"] = channel.toJson();
    }
    if (hints != null) {
      output["hints"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a channel. */
class ChannelContentDetails {

  /** The googlePlusUserId object identifies the Google+ profile ID associated with this channel. */
  String googlePlusUserId;

  /** The relatedPlaylists object is a map that identifies playlists associated with the channel, such as the channel's uploaded videos or favorite videos. You can retrieve any of these playlists using the playlists.list method. */
  ChannelContentDetailsRelatedPlaylists relatedPlaylists;

  /** Create new ChannelContentDetails from JSON data */
  ChannelContentDetails.fromJson(Map json) {
    if (json.containsKey("googlePlusUserId")) {
      googlePlusUserId = json["googlePlusUserId"];
    }
    if (json.containsKey("relatedPlaylists")) {
      relatedPlaylists = new ChannelContentDetailsRelatedPlaylists.fromJson(json["relatedPlaylists"]);
    }
  }

  /** Create JSON Object for ChannelContentDetails */
  Map toJson() {
    var output = new Map();

    if (googlePlusUserId != null) {
      output["googlePlusUserId"] = googlePlusUserId;
    }
    if (relatedPlaylists != null) {
      output["relatedPlaylists"] = relatedPlaylists.toJson();
    }

    return output;
  }

  /** Return String representation of ChannelContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** The relatedPlaylists object is a map that identifies playlists associated with the channel, such as the channel's uploaded videos or favorite videos. You can retrieve any of these playlists using the playlists.list method. */
class ChannelContentDetailsRelatedPlaylists {

  /** The ID of the playlist that contains the channel's favorite videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
  String favorites;

  /** The ID of the playlist that contains the channel's liked videos. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
  String likes;

  /** The ID of the playlist that contains the channel's uploaded videos. Use the videos.insert method to upload new videos and the videos.delete method to delete previously uploaded videos. */
  String uploads;

  /** The ID of the playlist that contains the channel's watch history. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
  String watchHistory;

  /** The ID of the channel's watch later playlist. Use the playlistItems.insert and playlistItems.delete to add or remove items from that list. */
  String watchLater;

  /** Create new ChannelContentDetailsRelatedPlaylists from JSON data */
  ChannelContentDetailsRelatedPlaylists.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of channels returned as the response to a youtube.channels.list call. */
class ChannelListResponse {

  /** The ETag for the response. */
  String etag;

  /** A list of channels that match the request criteria. */
  List<Channel> items;

  /** The type of the API response. For this operation, the value will be youtube#channelListResponse. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new ChannelListResponse from JSON data */
  ChannelListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for ChannelListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of ChannelListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Branding properties for the channel view. */
class ChannelSettings {
  String defaultTab;
  String description;
  String featuredChannelsTitle;
  List<String> featuredChannelsUrls;
  String keywords;
  bool moderateComments;
  bool showBrowseView;
  bool showRelatedChannels;
  String title;
  String trackingAnalyticsAccountId;
  String unsubscribedTrailer;

  /** Create new ChannelSettings from JSON data */
  ChannelSettings.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
      output["featuredChannelsUrls"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a channel, including title, description and thumbnails. */
class ChannelSnippet {

  /** The description of the channel. */
  String description;

  /** The date and time that the channel was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The channel's title. */
  String title;

  /** Create new ChannelSnippet from JSON data */
  ChannelSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Statistics about a channel: number of subscribers, number of videos in the channel, etc. */
class ChannelStatistics {

  /** The number of comments for the channel. */
  String commentCount;

  /** The number of subscribers that the channel has. */
  String subscriberCount;

  /** The number of videos uploaded to the channel. */
  String videoCount;

  /** The number of times the channel has been viewed. */
  String viewCount;

  /** Create new ChannelStatistics from JSON data */
  ChannelStatistics.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for the status part of a channel. */
class ChannelStatus {

  /** Privacy status of the channel. */
  String privacyStatus;

  /** Create new ChannelStatus from JSON data */
  ChannelStatus.fromJson(Map json) {
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for ChannelStatus */
  Map toJson() {
    var output = new Map();

    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of ChannelStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** Freebase topic information related to the channel. */
class ChannelTopicDetails {

  /** A list of Freebase topic IDs associated with the channel. You can retrieve information about each topic using the Freebase Topic API. */
  List<String> topicIds;

  /** Create new ChannelTopicDetails from JSON data */
  ChannelTopicDetails.fromJson(Map json) {
    if (json.containsKey("topicIds")) {
      topicIds = [];
      json["topicIds"].forEach((item) {
        topicIds.add(item);
      });
    }
  }

  /** Create JSON Object for ChannelTopicDetails */
  Map toJson() {
    var output = new Map();

    if (topicIds != null) {
      output["topicIds"] = new List();
      topicIds.forEach((item) {
        output["topicIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of ChannelTopicDetails */
  String toString() => JSON.stringify(this.toJson());

}

class FeaturedChannel {
  String channelId;
  ChannelSnippet channelSnippet;
  String endTimeMs;
  String featureId;
  String imageUrl;
  String startTimeMs;
  String subscriberCount;

  /** Create new FeaturedChannel from JSON data */
  FeaturedChannel.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelSnippet")) {
      channelSnippet = new ChannelSnippet.fromJson(json["channelSnippet"]);
    }
    if (json.containsKey("endTimeMs")) {
      endTimeMs = json["endTimeMs"];
    }
    if (json.containsKey("featureId")) {
      featureId = json["featureId"];
    }
    if (json.containsKey("imageUrl")) {
      imageUrl = json["imageUrl"];
    }
    if (json.containsKey("startTimeMs")) {
      startTimeMs = json["startTimeMs"];
    }
    if (json.containsKey("subscriberCount")) {
      subscriberCount = json["subscriberCount"];
    }
  }

  /** Create JSON Object for FeaturedChannel */
  Map toJson() {
    var output = new Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelSnippet != null) {
      output["channelSnippet"] = channelSnippet.toJson();
    }
    if (endTimeMs != null) {
      output["endTimeMs"] = endTimeMs;
    }
    if (featureId != null) {
      output["featureId"] = featureId;
    }
    if (imageUrl != null) {
      output["imageUrl"] = imageUrl;
    }
    if (startTimeMs != null) {
      output["startTimeMs"] = startTimeMs;
    }
    if (subscriberCount != null) {
      output["subscriberCount"] = subscriberCount;
    }

    return output;
  }

  /** Return String representation of FeaturedChannel */
  String toString() => JSON.stringify(this.toJson());

}

class FeaturedVideo {
  int concurrentViewers;
  String endTimeMs;
  String featureId;
  bool isLive;
  String lengthS;
  String startTimeMs;
  String videoId;
  VideoSnippet videoSnippet;
  String viewCount;

  /** Create new FeaturedVideo from JSON data */
  FeaturedVideo.fromJson(Map json) {
    if (json.containsKey("concurrentViewers")) {
      concurrentViewers = json["concurrentViewers"];
    }
    if (json.containsKey("endTimeMs")) {
      endTimeMs = json["endTimeMs"];
    }
    if (json.containsKey("featureId")) {
      featureId = json["featureId"];
    }
    if (json.containsKey("isLive")) {
      isLive = json["isLive"];
    }
    if (json.containsKey("lengthS")) {
      lengthS = json["lengthS"];
    }
    if (json.containsKey("startTimeMs")) {
      startTimeMs = json["startTimeMs"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
    if (json.containsKey("videoSnippet")) {
      videoSnippet = new VideoSnippet.fromJson(json["videoSnippet"]);
    }
    if (json.containsKey("viewCount")) {
      viewCount = json["viewCount"];
    }
  }

  /** Create JSON Object for FeaturedVideo */
  Map toJson() {
    var output = new Map();

    if (concurrentViewers != null) {
      output["concurrentViewers"] = concurrentViewers;
    }
    if (endTimeMs != null) {
      output["endTimeMs"] = endTimeMs;
    }
    if (featureId != null) {
      output["featureId"] = featureId;
    }
    if (isLive != null) {
      output["isLive"] = isLive;
    }
    if (lengthS != null) {
      output["lengthS"] = lengthS;
    }
    if (startTimeMs != null) {
      output["startTimeMs"] = startTimeMs;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }
    if (videoSnippet != null) {
      output["videoSnippet"] = videoSnippet.toJson();
    }
    if (viewCount != null) {
      output["viewCount"] = viewCount;
    }

    return output;
  }

  /** Return String representation of FeaturedVideo */
  String toString() => JSON.stringify(this.toJson());

}

/** A geoPoint holds geo location information associated with a YouTube resource. */
class GeoPoint {

  /** Altitude above the Earth, in meters. */
  num elevation;

  /** Latitude in degrees. */
  num latitude;

  /** Longitude in degrees. */
  num longitude;

  /** Create new GeoPoint from JSON data */
  GeoPoint.fromJson(Map json) {
    if (json.containsKey("elevation")) {
      elevation = json["elevation"];
    }
    if (json.containsKey("latitude")) {
      latitude = json["latitude"];
    }
    if (json.containsKey("longitude")) {
      longitude = json["longitude"];
    }
  }

  /** Create JSON Object for GeoPoint */
  Map toJson() {
    var output = new Map();

    if (elevation != null) {
      output["elevation"] = elevation;
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
  String toString() => JSON.stringify(this.toJson());

}

/** A guideCategory resource identifies a category that YouTube algorithmically assigns based on a channel's content or other indicators, such as the channel's popularity. The list is similar to video categories, with the difference being that a video's uploader can assign a video category but only YouTube can assign a channel category. */
class GuideCategory {

  /** The ETag of the guideCategory resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the guide category. */
  String id;

  /** The type of the API resource. For guideCategory resources, the value will be youtube#guideCategory/code>. */
  String kind;

  /** The snippet object contains basic details about the category, such as its title. */
  GuideCategorySnippet snippet;

  /** Create new GuideCategory from JSON data */
  GuideCategory.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of guide categories returned as the response to a youtube.guideCategories.list call. */
class GuideCategoryListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of categories that can be associated with YouTube channels. In this map, the category ID is the map key, and its value is the corresponding guideCategory resource. */
  List<GuideCategory> items;

  /** The type of the API response. For this operation, the value will be youtube#guideCategoryListResponse. */
  String kind;

  /** Create new GuideCategoryListResponse from JSON data */
  GuideCategoryListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for GuideCategoryListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of GuideCategoryListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a guide category. */
class GuideCategorySnippet {

  /** The ID that YouTube uses to uniquely identify the channel publishing the guide category. */
  String channelId;

  /** The category's title. */
  String title;

  /** Create new GuideCategorySnippet from JSON data */
  GuideCategorySnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for GuideCategorySnippet */
  Map toJson() {
    var output = new Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of GuideCategorySnippet */
  String toString() => JSON.stringify(this.toJson());

}

class ImageSettings {
  LocalizedProperty backgroundImageUrl;
  String bannerImageUrl;
  String bannerMobileImageUrl;
  LocalizedProperty largeBrandedBannerImageImapScript;
  LocalizedProperty largeBrandedBannerImageUrl;
  LocalizedProperty smallBrandedBannerImageImapScript;
  LocalizedProperty smallBrandedBannerImageUrl;
  String trackingImageUrl;
  String watchIconImageUrl;

  /** Create new ImageSettings from JSON data */
  ImageSettings.fromJson(Map json) {
    if (json.containsKey("backgroundImageUrl")) {
      backgroundImageUrl = new LocalizedProperty.fromJson(json["backgroundImageUrl"]);
    }
    if (json.containsKey("bannerImageUrl")) {
      bannerImageUrl = json["bannerImageUrl"];
    }
    if (json.containsKey("bannerMobileImageUrl")) {
      bannerMobileImageUrl = json["bannerMobileImageUrl"];
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
  Map toJson() {
    var output = new Map();

    if (backgroundImageUrl != null) {
      output["backgroundImageUrl"] = backgroundImageUrl.toJson();
    }
    if (bannerImageUrl != null) {
      output["bannerImageUrl"] = bannerImageUrl;
    }
    if (bannerMobileImageUrl != null) {
      output["bannerMobileImageUrl"] = bannerMobileImageUrl;
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
  String toString() => JSON.stringify(this.toJson());

}

class InvideoFeature {
  FeaturedChannel featuredChannel;
  FeaturedVideo featuredVideo;

  /** Create new InvideoFeature from JSON data */
  InvideoFeature.fromJson(Map json) {
    if (json.containsKey("featuredChannel")) {
      featuredChannel = new FeaturedChannel.fromJson(json["featuredChannel"]);
    }
    if (json.containsKey("featuredVideo")) {
      featuredVideo = new FeaturedVideo.fromJson(json["featuredVideo"]);
    }
  }

  /** Create JSON Object for InvideoFeature */
  Map toJson() {
    var output = new Map();

    if (featuredChannel != null) {
      output["featuredChannel"] = featuredChannel.toJson();
    }
    if (featuredVideo != null) {
      output["featuredVideo"] = featuredVideo.toJson();
    }

    return output;
  }

  /** Return String representation of InvideoFeature */
  String toString() => JSON.stringify(this.toJson());

}

/** A liveBroadcast resource represents an event that will be streamed, via live video, on YouTube. */
class LiveBroadcast {

  /** The contentDetails object contains information about the event's video content, such as whether the content can be shown in an embedded video player or if it will be archived and therefore available for viewing after the event has concluded. */
  LiveBroadcastContentDetails contentDetails;

  /** The ETag of the broadcast. */
  String etag;

  /** The ID that YouTube assigns to uniquely identify the broadcast. */
  String id;

  /** The type of the API resource. For live broadcast resources, the value will be youtube#liveBroadcast. */
  String kind;

  /** The slateSettings object contains details about the content that will display in the player when you show a broadcast slate. A broadcast slate displays above the video. However, while it displays, the video continues to play and is also audible in the background. */
  LiveBroadcastSlateSettings slateSettings;

  /** The snippet object contains basic details about the event, including its title, description, start time, and end time. */
  LiveBroadcastSnippet snippet;

  /** The status object contains information about the event's status. */
  LiveBroadcastStatus status;

  /** Create new LiveBroadcast from JSON data */
  LiveBroadcast.fromJson(Map json) {
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
    if (json.containsKey("slateSettings")) {
      slateSettings = new LiveBroadcastSlateSettings.fromJson(json["slateSettings"]);
    }
    if (json.containsKey("snippet")) {
      snippet = new LiveBroadcastSnippet.fromJson(json["snippet"]);
    }
    if (json.containsKey("status")) {
      status = new LiveBroadcastStatus.fromJson(json["status"]);
    }
  }

  /** Create JSON Object for LiveBroadcast */
  Map toJson() {
    var output = new Map();

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
    if (slateSettings != null) {
      output["slateSettings"] = slateSettings.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Slate settings of a broadcast. */
class LiveBroadcastContentDetails {

  /** This value uniquely identifies the live stream bound to the broadcast. */
  String boundStreamId;

  /** This setting indicates whether the live event should be archived so that YouTube viewers can watch it at a later date. The default value for this property is true.

Important: You must also set the enableDvr property's value to true if you want the playback to be available immediately after the broadcast ends. If you set this property's value to true but do not also set the enableDvr property to true, there may be a delay of around one day before the archived video will be available for playback. */
  bool enableArchive;

  /** This setting indicates whether YouTube should enable content encryption for the broadcast. */
  bool enableContentEncryption;

  /** This setting determines whether viewers can access DVR controls while watching the video. DVR controls enable the viewer to control the video playback experience by pausing, rewinding, or fast forwarding content. The default value for this property is true.

Important: You must set the value to true and also set the enableArchive property's value to true if you want to make playback available immediately after the broadcast ends. */
  bool enableDvr;

  /** This setting indicates whether the broadcast video can be played in an embedded player. If you choose to archive the video (using the enableArchive property), this setting will also apply to the archived video. */
  bool enableEmbed;

  /** The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. */
  LiveBroadcastContentDetailsMonitorStream monitorStream;

  /** This setting indicates whether the broadcast should automatically begin with an in-stream slate when you update the broadcast's status to live. After updating the status, you then need to send a liveCuepoints.insert request that sets the cuepoint's eventState to end to remove the in-stream slate and make your broadcast stream visible to viewers. */
  bool startWithSlateCuepoint;

  /** Create new LiveBroadcastContentDetails from JSON data */
  LiveBroadcastContentDetails.fromJson(Map json) {
    if (json.containsKey("boundStreamId")) {
      boundStreamId = json["boundStreamId"];
    }
    if (json.containsKey("enableArchive")) {
      enableArchive = json["enableArchive"];
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
      monitorStream = new LiveBroadcastContentDetailsMonitorStream.fromJson(json["monitorStream"]);
    }
    if (json.containsKey("startWithSlateCuepoint")) {
      startWithSlateCuepoint = json["startWithSlateCuepoint"];
    }
  }

  /** Create JSON Object for LiveBroadcastContentDetails */
  Map toJson() {
    var output = new Map();

    if (boundStreamId != null) {
      output["boundStreamId"] = boundStreamId;
    }
    if (enableArchive != null) {
      output["enableArchive"] = enableArchive;
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
    if (startWithSlateCuepoint != null) {
      output["startWithSlateCuepoint"] = startWithSlateCuepoint;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** The monitorStream object contains information about the monitor stream, which the broadcaster can use to review the event content before the broadcast stream is shown publicly. */
class LiveBroadcastContentDetailsMonitorStream {

  /** If you have set the enableMonitorStream property to true, then this property determines the length of the live broadcast delay. */
  int broadcastStreamDelayMs;

  /** HTML code that embeds a player that plays the monitor stream. */
  String embedHtml;

  /** This value determines whether the monitor stream is enabled for the broadcast. If the monitor stream is enabled, then YouTube will broadcast the event content on a special stream intended only for the broadcaster's consumption. The broadcaster can use the stream to review the event content and also to identify the optimal times to insert cuepoints.

You need to set this value to true if you intend to have a broadcast delay for your event.

Note: This property cannot be updated once the broadcast is in the testing or live state. */
  bool enableMonitorStream;

  /** Create new LiveBroadcastContentDetailsMonitorStream from JSON data */
  LiveBroadcastContentDetailsMonitorStream.fromJson(Map json) {
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

  /** Create JSON Object for LiveBroadcastContentDetailsMonitorStream */
  Map toJson() {
    var output = new Map();

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

  /** Return String representation of LiveBroadcastContentDetailsMonitorStream */
  String toString() => JSON.stringify(this.toJson());

}

/** JSON template for list of broadcasts. */
class LiveBroadcastList {

  /** The ETag of the response. */
  String etag;

  /** A list of broadcasts that match the request criteria. */
  List<LiveBroadcast> items;

  /** The type of the API response. For this operation, the value will be youtube#liveBroadcastList. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new LiveBroadcastList from JSON data */
  LiveBroadcastList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for LiveBroadcastList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of LiveBroadcastList */
  String toString() => JSON.stringify(this.toJson());

}

/** Slate settings of a broadcast. */
class LiveBroadcastSlateSettings {

  /** An indication of whether a broadcast slate is enabled for the broadcast. Set this property to true to display the slate. Update the property value to false to remove the slate. You can insert or remove the broadcast slate at any time during an event. */
  bool enableSlates;

  /** A map of slates that are displayed for the broadcast in different regions. */
  LiveBroadcastSlateSettingsSlates slates;

  /** Create new LiveBroadcastSlateSettings from JSON data */
  LiveBroadcastSlateSettings.fromJson(Map json) {
    if (json.containsKey("enableSlates")) {
      enableSlates = json["enableSlates"];
    }
    if (json.containsKey("slates")) {
      slates = new LiveBroadcastSlateSettingsSlates.fromJson(json["slates"]);
    }
  }

  /** Create JSON Object for LiveBroadcastSlateSettings */
  Map toJson() {
    var output = new Map();

    if (enableSlates != null) {
      output["enableSlates"] = enableSlates;
    }
    if (slates != null) {
      output["slates"] = slates.toJson();
    }

    return output;
  }

  /** Return String representation of LiveBroadcastSlateSettings */
  String toString() => JSON.stringify(this.toJson());

}

/** A map of slates that are displayed for the broadcast in different regions. */
class LiveBroadcastSlateSettingsSlates {

  /** Create new LiveBroadcastSlateSettingsSlates from JSON data */
  LiveBroadcastSlateSettingsSlates.fromJson(Map json) {
  }

  /** Create JSON Object for LiveBroadcastSlateSettingsSlates */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of LiveBroadcastSlateSettingsSlates */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a live broadcast, including title, description and thumbnails. */
class LiveBroadcastSnippet {

  /** The date and time that the broadcast actually ended. This information is only available once the broadcast's state is complete. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String actualEndTime;

  /** The date and time that the broadcast actually started. This information is only available once the broadcast's state is live. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String actualStartTime;

  /** The ID that YouTube uses to uniquely identify the channel that is publishing the broadcast. */
  String channelId;

  /** The broadcast's description. As with the title, you can set this field by modifying the broadcast resource or by setting the description field of the corresponding video resource. */
  String description;

  /** The date and time that the broadcast was added to YouTube's live broadcast schedule. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** The date and time that the broadcast is scheduled to end. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String scheduledEndTime;

  /** The date and time that the broadcast is scheduled to start. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String scheduledStartTime;

  /** A map of thumbnail images associated with the broadcast. For each nested object in this object, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The broadcast's title. Note that the broadcast represents exactly one YouTube video. You can set this field by modifying the broadcast resource or by setting the title field of the corresponding video resource. */
  String title;

  /** Create new LiveBroadcastSnippet from JSON data */
  LiveBroadcastSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The status of a live broadcast. */
class LiveBroadcastStatus {

  /** The broadcast's status. The status can be updated using the API's liveBroadcasts.transition method. */
  String lifeCycleStatus;

  /** The broadcast's privacy status. Note that the broadcast represents exactly one YouTube video, so the privacy settings are identical to those supported for videos. In addition, you can set this field by modifying the broadcast resource or by setting the privacyStatus field of the corresponding video resource. */
  String privacyStatus;

  /** Create new LiveBroadcastStatus from JSON data */
  LiveBroadcastStatus.fromJson(Map json) {
    if (json.containsKey("lifeCycleStatus")) {
      lifeCycleStatus = json["lifeCycleStatus"];
    }
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for LiveBroadcastStatus */
  Map toJson() {
    var output = new Map();

    if (lifeCycleStatus != null) {
      output["lifeCycleStatus"] = lifeCycleStatus;
    }
    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of LiveBroadcastStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** A live stream describes a live ingestion point. */
class LiveStream {

  /** The cdn object defines the live stream's content delivery network (CDN) settings. These settings provide details about the manner in which you stream your content to YouTube. */
  LiveStreamCdn cdn;

  /** The ETag of the stream resource. */
  String etag;

  /** The ID that YouTube assigns to uniquely identify the stream. */
  String id;

  /** The type of the API resource. For live stream resources, the value will be youtube#liveStream. */
  String kind;

  /** The snippet object contains basic details about the stream, including its channel, title, and description. */
  LiveStreamSnippet snippet;

  /** The status object contains information about live stream's status. */
  LiveStreamStatus status;

  /** Create new LiveStream from JSON data */
  LiveStream.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Brief description of the live stream cdn settings. */
class LiveStreamCdn {

  /** The format of the video stream that you are sending to YouTube. */
  String format;

  /** The ingestionInfo object contains information that YouTube provides that you need to transmit your RTMP or HTTP stream to YouTube. */
  LiveStreamCdnIngestionInfo ingestionInfo;

  /** The method or protocol used to transmit the video stream. */
  String ingestionType;

  /** Create new LiveStreamCdn from JSON data */
  LiveStreamCdn.fromJson(Map json) {
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("ingestionInfo")) {
      ingestionInfo = new LiveStreamCdnIngestionInfo.fromJson(json["ingestionInfo"]);
    }
    if (json.containsKey("ingestionType")) {
      ingestionType = json["ingestionType"];
    }
  }

  /** Create JSON Object for LiveStreamCdn */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Brief description of the live stream cdn settings. */
class LiveStreamCdnIngestionInfo {

  /** The backup ingestion URL that you should use to stream video to YouTube. You have the option of simultaneously streaming the content that you are sending to the ingestionAddress to this URL. */
  String backupIngestionAddress;

  /** The primary ingestion URL that you should use to stream video to YouTube. You must stream video to this URL.

Depending on which application or tool you use to encode your video stream, you may need to enter the stream URL and stream name separately or you may need to concatenate them in the following format:

STREAM_URL/STREAM_NAME */
  String ingestionAddress;

  /** The HTTP or RTMP stream name that YouTube assigns to the video stream. */
  String streamName;

  /** Create new LiveStreamCdnIngestionInfo from JSON data */
  LiveStreamCdnIngestionInfo.fromJson(Map json) {
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

  /** Create JSON Object for LiveStreamCdnIngestionInfo */
  Map toJson() {
    var output = new Map();

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

  /** Return String representation of LiveStreamCdnIngestionInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** List of live streams. */
class LiveStreamList {

  /** The ETag of the response. */
  String etag;

  /** A list of live streams that match the request criteria. */
  List<LiveStream> items;

  /** The type of the API response. For this operation, the value will be youtube#liveStreamList. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new LiveStreamList from JSON data */
  LiveStreamList.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for LiveStreamList */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of LiveStreamList */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a live stream, including title and description. */
class LiveStreamSnippet {

  /** The ID that YouTube uses to uniquely identify the channel that is transmitting the stream. */
  String channelId;

  /** The stream's description. The value cannot be longer than 10000 characters. */
  String description;

  /** The date and time that the stream was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** The stream's title. The value must be between 1 and 128 characters long. */
  String title;

  /** Create new LiveStreamSnippet from JSON data */
  LiveStreamSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Brief description of the live stream status. */
class LiveStreamStatus {

  /** The stream's status. */
  String streamStatus;

  /** Create new LiveStreamStatus from JSON data */
  LiveStreamStatus.fromJson(Map json) {
    if (json.containsKey("streamStatus")) {
      streamStatus = json["streamStatus"];
    }
  }

  /** Create JSON Object for LiveStreamStatus */
  Map toJson() {
    var output = new Map();

    if (streamStatus != null) {
      output["streamStatus"] = streamStatus;
    }

    return output;
  }

  /** Return String representation of LiveStreamStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** Represent a property available in different languages. */
class LocalizedProperty {
  String default;
  List<LocalizedString> localized;

  /** Create new LocalizedProperty from JSON data */
  LocalizedProperty.fromJson(Map json) {
    if (json.containsKey("default")) {
      default = json["default"];
    }
    if (json.containsKey("localized")) {
      localized = [];
      json["localized"].forEach((item) {
        localized.add(new LocalizedString.fromJson(item));
      });
    }
  }

  /** Create JSON Object for LocalizedProperty */
  Map toJson() {
    var output = new Map();

    if (default != null) {
      output["default"] = default;
    }
    if (localized != null) {
      output["localized"] = new List();
      localized.forEach((item) {
        output["localized"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of LocalizedProperty */
  String toString() => JSON.stringify(this.toJson());

}

/** A localized string. */
class LocalizedString {
  String language;
  String value;

  /** Create new LocalizedString from JSON data */
  LocalizedString.fromJson(Map json) {
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for LocalizedString */
  Map toJson() {
    var output = new Map();

    if (language != null) {
      output["language"] = language;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of LocalizedString */
  String toString() => JSON.stringify(this.toJson());

}

/** Paging details for lists of resources, including total number of items available and number of resources returned in a single page. */
class PageInfo {

  /** The number of results included in the API response. */
  int resultsPerPage;

  /** The total number of results in the result set. */
  int totalResults;

  /** Create new PageInfo from JSON data */
  PageInfo.fromJson(Map json) {
    if (json.containsKey("resultsPerPage")) {
      resultsPerPage = json["resultsPerPage"];
    }
    if (json.containsKey("totalResults")) {
      totalResults = json["totalResults"];
    }
  }

  /** Create JSON Object for PageInfo */
  Map toJson() {
    var output = new Map();

    if (resultsPerPage != null) {
      output["resultsPerPage"] = resultsPerPage;
    }
    if (totalResults != null) {
      output["totalResults"] = totalResults;
    }

    return output;
  }

  /** Return String representation of PageInfo */
  String toString() => JSON.stringify(this.toJson());

}

/** A player resource represents all the information needed to play a video. */
class Player {

  /** The playlist of video ads to show for this playback. */
  PlayerAdsPlaylist adsPlaylist;

  /** The ETag for the player resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the resource. */
  ResourceId id;

  /** The invideo features for the video. */
  InvideoFeature invideoFeature;

  /** The type of the API resource. */
  String kind;

  /** The videoUrls object either contains restriction information or URLs giving access to the content. */
  PlayerVideoUrls videoUrls;

  /** Create new Player from JSON data */
  Player.fromJson(Map json) {
    if (json.containsKey("adsPlaylist")) {
      adsPlaylist = new PlayerAdsPlaylist.fromJson(json["adsPlaylist"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = new ResourceId.fromJson(json["id"]);
    }
    if (json.containsKey("invideoFeature")) {
      invideoFeature = new InvideoFeature.fromJson(json["invideoFeature"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("videoUrls")) {
      videoUrls = new PlayerVideoUrls.fromJson(json["videoUrls"]);
    }
  }

  /** Create JSON Object for Player */
  Map toJson() {
    var output = new Map();

    if (adsPlaylist != null) {
      output["adsPlaylist"] = adsPlaylist.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id.toJson();
    }
    if (invideoFeature != null) {
      output["invideoFeature"] = invideoFeature.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (videoUrls != null) {
      output["videoUrls"] = videoUrls.toJson();
    }

    return output;
  }

  /** Return String representation of Player */
  String toString() => JSON.stringify(this.toJson());

}

/** The playlist of ads which accompany the content video. */
class PlayerAdsPlaylist {

  /** The VMAP XML document that describes where ads should be inserted and what ad formats should be used in those ad breaks. See http://www.iab.net/vmap. */
  String vmap_xml;

  /** Create new PlayerAdsPlaylist from JSON data */
  PlayerAdsPlaylist.fromJson(Map json) {
    if (json.containsKey("vmap_xml")) {
      vmap_xml = json["vmap_xml"];
    }
  }

  /** Create JSON Object for PlayerAdsPlaylist */
  Map toJson() {
    var output = new Map();

    if (vmap_xml != null) {
      output["vmap_xml"] = vmap_xml;
    }

    return output;
  }

  /** Return String representation of PlayerAdsPlaylist */
  String toString() => JSON.stringify(this.toJson());

}

/** A list of players returned from a youtube.player.list call. */
class PlayerListResponse {

  /** The ETag of the response. */
  String etag;

  /** The type of the API response. For this operation, the value will be youtube#playerListResponse. */
  String kind;

  /** A list of players that match the request criteria. */
  List<Player> players;

  /** Create new PlayerListResponse from JSON data */
  PlayerListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("players")) {
      players = [];
      json["players"].forEach((item) {
        players.add(new Player.fromJson(item));
      });
    }
  }

  /** Create JSON Object for PlayerListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (players != null) {
      output["players"] = new List();
      players.forEach((item) {
        output["players"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of PlayerListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Part describing if and why a video can't be played. */
class PlayerRestrictionDetails {

  /** Detailed information about the restriction */
  String reason;

  /** True iff the video can't be played. */
  bool restricted;

  /** A code describing the restriction class. */
  String restriction;

  /** Create new PlayerRestrictionDetails from JSON data */
  PlayerRestrictionDetails.fromJson(Map json) {
    if (json.containsKey("reason")) {
      reason = json["reason"];
    }
    if (json.containsKey("restricted")) {
      restricted = json["restricted"];
    }
    if (json.containsKey("restriction")) {
      restriction = json["restriction"];
    }
  }

  /** Create JSON Object for PlayerRestrictionDetails */
  Map toJson() {
    var output = new Map();

    if (reason != null) {
      output["reason"] = reason;
    }
    if (restricted != null) {
      output["restricted"] = restricted;
    }
    if (restriction != null) {
      output["restriction"] = restriction;
    }

    return output;
  }

  /** Return String representation of PlayerRestrictionDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** A single video format the user can access. */
class PlayerVideoUrl {

  /** itag of the video format. */
  int itag;

  /** Streamer URL serving the video. */
  String url;

  /** Create new PlayerVideoUrl from JSON data */
  PlayerVideoUrl.fromJson(Map json) {
    if (json.containsKey("itag")) {
      itag = json["itag"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for PlayerVideoUrl */
  Map toJson() {
    var output = new Map();

    if (itag != null) {
      output["itag"] = itag;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of PlayerVideoUrl */
  String toString() => JSON.stringify(this.toJson());

}

/** Part containing the URLs pointing to the video data. */
class PlayerVideoUrls {

  /** Possible restriction to the playability of the video. */
  PlayerRestrictionDetails restriction;

  /** URLs to the formats that are available to the caller. */
  List<PlayerVideoUrl> url;

  /** Create new PlayerVideoUrls from JSON data */
  PlayerVideoUrls.fromJson(Map json) {
    if (json.containsKey("restriction")) {
      restriction = new PlayerRestrictionDetails.fromJson(json["restriction"]);
    }
    if (json.containsKey("url")) {
      url = [];
      json["url"].forEach((item) {
        url.add(new PlayerVideoUrl.fromJson(item));
      });
    }
  }

  /** Create JSON Object for PlayerVideoUrls */
  Map toJson() {
    var output = new Map();

    if (restriction != null) {
      output["restriction"] = restriction.toJson();
    }
    if (url != null) {
      output["url"] = new List();
      url.forEach((item) {
        output["url"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of PlayerVideoUrls */
  String toString() => JSON.stringify(this.toJson());

}

/** A playlist resource represents a YouTube playlist. A playlist is a collection of videos that can be viewed sequentially and shared with other users. A playlist can contain up to 200 videos, and YouTube does not limit the number of playlists that each user creates. By default, playlists are publicly visible to other users, but playlists can be public or private.

YouTube also uses playlists to identify special collections of videos for a channel, such as:  
- uploaded videos 
- favorite videos 
- positively rated (liked) videos 
- watch history 
- watch later  To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information. You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel.

You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. */
class Playlist {

  /** The contentDetails object contains information like video count. */
  PlaylistContentDetails contentDetails;

  /** The ETag for the playlist resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the playlist. */
  String id;

  /** The type of the API resource. For video resources, the value will be youtube#playlist. */
  String kind;

  /** The player object contains information that you would use to play the playlist in an embedded player. */
  PlaylistPlayer player;

  /** The snippet object contains basic details about the playlist, such as its title and description. */
  PlaylistSnippet snippet;

  /** The status object contains status information for the playlist. */
  PlaylistStatus status;

  /** Create new Playlist from JSON data */
  Playlist.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a playlist, such as the video count. */
class PlaylistContentDetails {

  /** The number of videos in the playlist. */
  int itemCount;

  /** Create new PlaylistContentDetails from JSON data */
  PlaylistContentDetails.fromJson(Map json) {
    if (json.containsKey("itemCount")) {
      itemCount = json["itemCount"];
    }
  }

  /** Create JSON Object for PlaylistContentDetails */
  Map toJson() {
    var output = new Map();

    if (itemCount != null) {
      output["itemCount"] = itemCount;
    }

    return output;
  }

  /** Return String representation of PlaylistContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** A playlistItem resource identifies another resource, such as a video, that is included in a playlist. In addition, the playlistItem resource contains details about the included resource that pertain specifically to how that resource is used in that playlist.

YouTube uses playlists to identify special collections of videos for a channel, such as:  
- uploaded videos 
- favorite videos 
- positively rated (liked) videos 
- watch history 
- watch later  To be more specific, these lists are associated with a channel, which is a collection of a person, group, or company's videos, playlists, and other YouTube information.

You can retrieve the playlist IDs for each of these lists from the channel resource for a given channel. You can then use the playlistItems.list method to retrieve any of those lists. You can also add or remove items from those lists by calling the playlistItems.insert and playlistItems.delete methods. For example, if a user gives a positive rating to a video, you would insert that video into the liked videos playlist for that user's channel. */
class PlaylistItem {

  /** The contentDetails object is included in the resource if the included item is a YouTube video. The object contains additional information about the video. */
  PlaylistItemContentDetails contentDetails;

  /** The ETag for the playlist item resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the playlist item. */
  String id;

  /** The type of the API resource. For playlist item resources, the value will be youtube#playlistItem. */
  String kind;

  /** The snippet object contains basic details about the playlist item, such as its title and position in the playlist. */
  PlaylistItemSnippet snippet;

  /** Create new PlaylistItem from JSON data */
  PlaylistItem.fromJson(Map json) {
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
  }

  /** Create JSON Object for PlaylistItem */
  Map toJson() {
    var output = new Map();

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

  /** Return String representation of PlaylistItem */
  String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a playlist item, such as the video or the video fragment start and end time included in the playlist. */
class PlaylistItemContentDetails {

  /** The time, measured in seconds from the start of the video, when the video should stop playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) By default, assume that the video.endTime is the end of the video. */
  String endAt;

  /** A user-generated note for this item. */
  String note;

  /** The time, measured in seconds from the start of the video, when the video should start playing. (The playlist owner can specify the times when the video should start and stop playing when the video is played in the context of the playlist.) The default value is 0. */
  String startAt;

  /** The ID that YouTube uses to uniquely identify a video. To retrieve the video resource, set the id query parameter to this value in your API request. */
  String videoId;

  /** Create new PlaylistItemContentDetails from JSON data */
  PlaylistItemContentDetails.fromJson(Map json) {
    if (json.containsKey("endAt")) {
      endAt = json["endAt"];
    }
    if (json.containsKey("note")) {
      note = json["note"];
    }
    if (json.containsKey("startAt")) {
      startAt = json["startAt"];
    }
    if (json.containsKey("videoId")) {
      videoId = json["videoId"];
    }
  }

  /** Create JSON Object for PlaylistItemContentDetails */
  Map toJson() {
    var output = new Map();

    if (endAt != null) {
      output["endAt"] = endAt;
    }
    if (note != null) {
      output["note"] = note;
    }
    if (startAt != null) {
      output["startAt"] = startAt;
    }
    if (videoId != null) {
      output["videoId"] = videoId;
    }

    return output;
  }

  /** Return String representation of PlaylistItemContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of playlist items returned as the response to a youtube.playlistItems.list call. */
class PlaylistItemListResponse {

  /** The ETag for the response. */
  String etag;

  /** A list of playlist items that match the request criteria. */
  List<PlaylistItem> items;

  /** The type of the API response. For this operation, the value will be youtube#playlistItemListResponse. */
  String kind;

  /** A token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** A token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new PlaylistItemListResponse from JSON data */
  PlaylistItemListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for PlaylistItemListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of PlaylistItemListResponse */
  String toString() => JSON.stringify(this.toJson());

}

class PlaylistItemSnippet {

  /** The ID that YouTube uses to uniquely identify the user that added the item to the playlist. */
  String channelId;

  /** Channel title for the channel that the playlist item belongs to. */
  String channelTitle;

  /** The item's description. */
  String description;

  /** The ID that YouTube uses to uniquely identify the playlist that the playlist item is in. */
  String playlistId;

  /** The order in which the item appears in the playlist. The value uses a zero-based index, so the first item has a position of 0, the second item has a position of 1, and so forth. */
  int position;

  /** The date and time that the item was added to the playlist. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** The id object contains information that can be used to uniquely identify the resource that is included in the playlist as the playlist item. */
  ResourceId resourceId;
  ThumbnailDetails thumbnails;

  /** The item's title. */
  String title;

  /** Create new PlaylistItemSnippet from JSON data */
  PlaylistItemSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of playlists returned as the response to a youtube.playlists.list call. */
class PlaylistListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of playlists that match the request criteria. */
  List<Playlist> items;

  /** The type of the API response. For this operation, the value will be youtube#playlistListResponse. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new PlaylistListResponse from JSON data */
  PlaylistListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for PlaylistListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of PlaylistListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Player to be used for a playlist playback. */
class PlaylistPlayer {

  /** An <iframe> tag that embeds a player that will play the playlist. */
  String embedHtml;

  /** Create new PlaylistPlayer from JSON data */
  PlaylistPlayer.fromJson(Map json) {
    if (json.containsKey("embedHtml")) {
      embedHtml = json["embedHtml"];
    }
  }

  /** Create JSON Object for PlaylistPlayer */
  Map toJson() {
    var output = new Map();

    if (embedHtml != null) {
      output["embedHtml"] = embedHtml;
    }

    return output;
  }

  /** Return String representation of PlaylistPlayer */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a playlist, including title, description and thumbnails. */
class PlaylistSnippet {

  /** The ID that YouTube uses to uniquely identify the channel that published the playlist. */
  String channelId;

  /** Channel title for the channel that the video belongs to. */
  String channelTitle;

  /** The playlist's description. */
  String description;

  /** The date and time that the playlist was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAtMs;
  List<String> tags;

  /** A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The playlist's title. */
  String title;
  String updatedAtMs;

  /** Create new PlaylistSnippet from JSON data */
  PlaylistSnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("channelTitle")) {
      channelTitle = json["channelTitle"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAtMs")) {
      publishedAtMs = json["publishedAtMs"];
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
    if (json.containsKey("updatedAtMs")) {
      updatedAtMs = json["updatedAtMs"];
    }
  }

  /** Create JSON Object for PlaylistSnippet */
  Map toJson() {
    var output = new Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (channelTitle != null) {
      output["channelTitle"] = channelTitle;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (publishedAtMs != null) {
      output["publishedAtMs"] = publishedAtMs;
    }
    if (tags != null) {
      output["tags"] = new List();
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
    if (updatedAtMs != null) {
      output["updatedAtMs"] = updatedAtMs;
    }

    return output;
  }

  /** Return String representation of PlaylistSnippet */
  String toString() => JSON.stringify(this.toJson());

}

/** The status details of a playlist describes whether the playlist is private. */
class PlaylistStatus {

  /** The playlist's privacy status. */
  String privacyStatus;

  /** Create new PlaylistStatus from JSON data */
  PlaylistStatus.fromJson(Map json) {
    if (json.containsKey("privacyStatus")) {
      privacyStatus = json["privacyStatus"];
    }
  }

  /** Create JSON Object for PlaylistStatus */
  Map toJson() {
    var output = new Map();

    if (privacyStatus != null) {
      output["privacyStatus"] = privacyStatus;
    }

    return output;
  }

  /** Return String representation of PlaylistStatus */
  String toString() => JSON.stringify(this.toJson());

}

/** A pair Property / Value. */
class PropertyValue {
  String property;
  String value;

  /** Create new PropertyValue from JSON data */
  PropertyValue.fromJson(Map json) {
    if (json.containsKey("property")) {
      property = json["property"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for PropertyValue */
  Map toJson() {
    var output = new Map();

    if (property != null) {
      output["property"] = property;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of PropertyValue */
  String toString() => JSON.stringify(this.toJson());

}

/** A resource id is a generic reference that points to another YouTube resource. */
class ResourceId {

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel. */
  String channelId;
  String kind;

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a playlist. This property is only present if the resourceId.kind value is youtube#playlist. */
  String playlistId;

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a video. This property is only present if the resourceId.kind value is youtube#video. */
  String videoId;

  /** Create new ResourceId from JSON data */
  ResourceId.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of search results returned as the response to a youtube.search.list call. */
class SearchListResponse {

  /** The ETag for the response. */
  String etag;

  /** A list of results that match the search criteria. */
  List<SearchResult> items;

  /** The type of the API response. For this operation, the value will be youtube#searchListResponse. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the search result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new SearchListResponse from JSON data */
  SearchListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for SearchListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of SearchListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** A search result contains information about a YouTube video, channel, or playlist that matches the search parameters specified in an API request. While a search result points to a uniquely identifiable resource, like a video, it does not have its own persistent data. */
class SearchResult {

  /** Etag of this resource. */
  String etag;

  /** The id object contains information that can be used to uniquely identify the resource that matches the search request. */
  ResourceId id;

  /** The kind, fixed to "youtube#searchResult". */
  String kind;

  /** The snippet object contains basic details about a search result, such as its title or description. For example, if the search result is a video, then the title will be the video's title and the description will be the video's description. */
  SearchResultSnippet snippet;

  /** Create new SearchResult from JSON data */
  SearchResult.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class SearchResultSnippet {

  /** The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies. */
  String channelId;

  /** The title of the channel that published the resource that the search result identifies. */
  String channelTitle;

  /** A description of the search result. */
  String description;

  /** The creation date and time of the resource that the search result identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The title of the search result. */
  String title;

  /** Create new SearchResultSnippet from JSON data */
  SearchResultSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A subscription resource contains information about a YouTube user subscription. A subscription notifies a user when new videos are added to a channel or when another user takes one of several actions on YouTube, such as uploading a video, rating a video, or commenting on a video. */
class Subscription {

  /** The contentDetails object contains basic statistics about the subscription. */
  SubscriptionContentDetails contentDetails;

  /** The ETag of the subscription resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the subscription. */
  String id;

  /** The type of the API resource. For subscription resources, the value will be youtube#subscription. */
  String kind;

  /** The snippet object contains basic details about the subscription, including its title and the channel that the user subscribed to. */
  SubscriptionSnippet snippet;

  /** Create new Subscription from JSON data */
  Subscription.fromJson(Map json) {
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
  }

  /** Create JSON Object for Subscription */
  Map toJson() {
    var output = new Map();

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

  /** Return String representation of Subscription */
  String toString() => JSON.stringify(this.toJson());

}

/** Details about the content to witch a subscription refers. */
class SubscriptionContentDetails {

  /** The number of new items in the subscription since its content was last read. */
  int newItemCount;

  /** The approximate number of items that the subscription points to. */
  int totalItemCount;

  /** Create new SubscriptionContentDetails from JSON data */
  SubscriptionContentDetails.fromJson(Map json) {
    if (json.containsKey("newItemCount")) {
      newItemCount = json["newItemCount"];
    }
    if (json.containsKey("totalItemCount")) {
      totalItemCount = json["totalItemCount"];
    }
  }

  /** Create JSON Object for SubscriptionContentDetails */
  Map toJson() {
    var output = new Map();

    if (newItemCount != null) {
      output["newItemCount"] = newItemCount;
    }
    if (totalItemCount != null) {
      output["totalItemCount"] = totalItemCount;
    }

    return output;
  }

  /** Return String representation of SubscriptionContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of subscriptions returned as the response to a youtube.subscriptions.list call. */
class SubscriptionListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of subscriptions that match the request criteria. */
  List<Subscription> items;

  /** The type of the API response. For this operation, the value will be youtube#subscriptionListResponse. */
  String kind;

  /** The token that can be used as the value of the pageToken parameter to retrieve the next page in the result set. */
  String nextPageToken;

  /** The pageInfo object encapsulates paging information for the result set. */
  PageInfo pageInfo;

  /** The token that can be used as the value of the pageToken parameter to retrieve the previous page in the result set. */
  String prevPageToken;

  /** Create new SubscriptionListResponse from JSON data */
  SubscriptionListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for SubscriptionListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
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

    return output;
  }

  /** Return String representation of SubscriptionListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a subscription, including title, description and thumbnails of the subscribed item. */
class SubscriptionSnippet {

  /** The ID that YouTube uses to uniquely identify the subscriber's channel. */
  String channelId;

  /** The subscription's details. */
  String description;

  /** The date and time that the subscription was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** The id object contains information about the channel that the user subscribed to. */
  ResourceId resourceId;

  /** A map of thumbnail images associated with the subscription. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The subscription's title. */
  String title;

  /** Create new SubscriptionSnippet from JSON data */
  SubscriptionSnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
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
  Map toJson() {
    var output = new Map();

    if (channelId != null) {
      output["channelId"] = channelId;
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
  String toString() => JSON.stringify(this.toJson());

}

/** A thumbnail is an image representing a YouTube resource. */
class Thumbnail {

  /** (Optional) Height of the thumbnail image. */
  int height;

  /** The thumbnail image's URL. */
  String url;

  /** (Optional) Width of the thumbnail image. */
  int width;

  /** Create new Thumbnail from JSON data */
  Thumbnail.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class ThumbnailDetails {
  Thumbnail default;
  Thumbnail high;
  Thumbnail maxres;
  Thumbnail medium;
  Thumbnail standard;

  /** Create new ThumbnailDetails from JSON data */
  ThumbnailDetails.fromJson(Map json) {
    if (json.containsKey("default")) {
      default = new Thumbnail.fromJson(json["default"]);
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
  Map toJson() {
    var output = new Map();

    if (default != null) {
      output["default"] = default.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

/** A video resource represents a YouTube video. */
class Video {

  /** Age restriction details related to a video. */
  VideoAgeGating ageGatingDetails;

  /** The contentDetails object contains information about the video content, including the length of the video and its aspect ratio. */
  VideoContentDetails contentDetails;

  /** The ETag of the video resource. */
  String etag;

  /** The fileDetails object encapsulates information about the video file that was uploaded to YouTube, including the file's resolution, duration, audio and video codecs, stream bitrates, and more. This data can only be retrieved by the video owner. */
  VideoFileDetails fileDetails;

  /** The ID that YouTube uses to uniquely identify the video. */
  String id;

  /** The type of the API resource. For video resources, the value will be youtube#video. */
  String kind;

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
  Video.fromJson(Map json) {
    if (json.containsKey("ageGatingDetails")) {
      ageGatingDetails = new VideoAgeGating.fromJson(json["ageGatingDetails"]);
    }
    if (json.containsKey("contentDetails")) {
      contentDetails = new VideoContentDetails.fromJson(json["contentDetails"]);
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
  Map toJson() {
    var output = new Map();

    if (ageGatingDetails != null) {
      output["ageGatingDetails"] = ageGatingDetails.toJson();
    }
    if (contentDetails != null) {
      output["contentDetails"] = contentDetails.toJson();
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
  String toString() => JSON.stringify(this.toJson());

}

class VideoAgeGating {

  /** Indicates whether or not the video has alcoholic beverage content. Only users of legal purchasing age in a particular country, as identified by ICAP, can view the content. */
  bool alcoholContent;

  /** Age-restricted trailers. For redband trailers and adult-rated video-games. Only users aged 18+ can view the content. The the field is true the content is restricted to viewers aged 18+. Otherwise The field won't be present. */
  bool restricted;

  /** Video game rating, if any. */
  String videoGameRating;

  /** Create new VideoAgeGating from JSON data */
  VideoAgeGating.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A videoCategory resource identifies a category that has been or could be associated with uploaded videos. */
class VideoCategory {

  /** The ETag of the videoCategory resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the video category. */
  String id;

  /** The type of the API resource. For video category resources, the value will be youtube#videoCategory. */
  String kind;

  /** The snippet object contains basic details about the video category, including its title. */
  VideoCategorySnippet snippet;

  /** Create new VideoCategory from JSON data */
  VideoCategory.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of video categories returned as the response to a youtube.videoCategory.list call. */
class VideoCategoryListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of video categories that can be associated with YouTube videos. In this map, the video category ID is the map key, and its value is the corresponding videoCategory resource. */
  List<VideoCategory> items;

  /** The type of the API response. For this operation, the value will be youtube#videoCategoryListResponse. */
  String kind;

  /** Create new VideoCategoryListResponse from JSON data */
  VideoCategoryListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for VideoCategoryListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of VideoCategoryListResponse */
  String toString() => JSON.stringify(this.toJson());

}

class VideoCategorySnippet {

  /** The YouTube channel that created the video category. */
  String channelId;
  String title;

  /** Create new VideoCategorySnippet from JSON data */
  VideoCategorySnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for VideoCategorySnippet */
  Map toJson() {
    var output = new Map();

    if (channelId != null) {
      output["channelId"] = channelId;
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of VideoCategorySnippet */
  String toString() => JSON.stringify(this.toJson());

}

/** Details about the content of a YouTube Video. */
class VideoContentDetails {

  /** The value of captions indicates whether the video has captions or not. */
  String caption;

  /** The countryRestriction object contains information about the countries where a video is (or is not) viewable. */
  AccessPolicy countryRestriction;

  /** The value of definition indicates whether the video is available in high definition or only in standard definition. */
  String definition;

  /** The value of dimension indicates whether the video is available in 3D or in 2D. */
  String dimension;

  /** The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long. */
  String duration;

  /** The value of is_license_content indicates whether the video is licensed content. */
  bool licensedContent;

  /** The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property. */
  VideoContentDetailsRegionRestriction regionRestriction;

  /** Create new VideoContentDetails from JSON data */
  VideoContentDetails.fromJson(Map json) {
    if (json.containsKey("caption")) {
      caption = json["caption"];
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
  Map toJson() {
    var output = new Map();

    if (caption != null) {
      output["caption"] = caption;
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
  String toString() => JSON.stringify(this.toJson());

}

/** DEPRECATED Region restriction of the video. */
class VideoContentDetailsRegionRestriction {

  /** A list of region codes that identify countries where the video is viewable. If this property is present and a country is not listed in its value, then the video is blocked from appearing in that country. If this property is present and contains an empty list, the video is blocked in all countries. */
  List<String> allowed;

  /** A list of region codes that identify countries where the video is blocked. If this property is present and a country is not listed in its value, then the video is viewable in that country. If this property is present and contains an empty list, the video is viewable in all countries. */
  List<String> blocked;

  /** Create new VideoContentDetailsRegionRestriction from JSON data */
  VideoContentDetailsRegionRestriction.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (allowed != null) {
      output["allowed"] = new List();
      allowed.forEach((item) {
        output["allowed"].add(item);
      });
    }
    if (blocked != null) {
      output["blocked"] = new List();
      blocked.forEach((item) {
        output["blocked"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoContentDetailsRegionRestriction */
  String toString() => JSON.stringify(this.toJson());

}

/** Describes original video file properties, including technical details about audio and video streams, but also metadata information like content length, digitization time, or geotagging information. */
class VideoFileDetails {

  /** A list of audio streams contained in the uploaded video file. Each item in the list contains detailed metadata about an audio stream. */
  List<VideoFileDetailsAudioStream> audioStreams;

  /** The uploaded video file's combined (video and audio) bitrate in bits per second. */
  String bitrateBps;

  /** The uploaded video file's container format. */
  String container;

  /** The date and time when the uploaded video file was created. The value is specified in ISO 8601 format. Currently, the following ISO 8601 formats are supported:  
- Date only: YYYY-MM-DD 
- Naive time: YYYY-MM-DDTHH:MM:SS 
- Time with timezone: YYYY-MM-DDTHH:MM:SS+HH:MM */
  String creationTime;

  /** The length of the uploaded video in milliseconds. */
  String durationMs;

  /** The uploaded file's name. This field is present whether a video file or another type of file was uploaded. */
  String fileName;

  /** The uploaded file's size in bytes. This field is present whether a video file or another type of file was uploaded. */
  String fileSize;

  /** The uploaded file's type as detected by YouTube's video processing engine. Currently, YouTube only processes video files, but this field is present whether a video file or another type of file was uploaded. */
  String fileType;

  /** Geographic coordinates that identify the place where the uploaded video was recorded. Coordinates are defined using WGS 84. */
  GeoPoint recordingLocation;

  /** A list of video streams contained in the uploaded video file. Each item in the list contains detailed metadata about a video stream. */
  List<VideoFileDetailsVideoStream> videoStreams;

  /** Create new VideoFileDetails from JSON data */
  VideoFileDetails.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (audioStreams != null) {
      output["audioStreams"] = new List();
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
      output["videoStreams"] = new List();
      videoStreams.forEach((item) {
        output["videoStreams"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VideoFileDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Information about an audio stream. */
class VideoFileDetailsAudioStream {

  /** The audio stream's bitrate, in bits per second. */
  String bitrateBps;

  /** The number of audio channels that the stream contains. */
  int channelCount;

  /** The audio codec that the stream uses. */
  String codec;

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  String vendor;

  /** Create new VideoFileDetailsAudioStream from JSON data */
  VideoFileDetailsAudioStream.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Information about a video stream. */
class VideoFileDetailsVideoStream {

  /** The video content's display aspect ratio, which specifies the aspect ratio in which the video should be displayed. */
  num aspectRatio;

  /** The video stream's bitrate, in bits per second. */
  String bitrateBps;

  /** The video codec that the stream uses. */
  String codec;

  /** The video stream's frame rate, in frames per second. */
  num frameRateFps;

  /** The encoded video content's height in pixels. */
  int heightPixels;

  /** The amount that YouTube needs to rotate the original source content to properly display the video. */
  String rotation;

  /** A value that uniquely identifies a video vendor. Typically, the value is a four-letter vendor code. */
  String vendor;

  /** The encoded video content's width in pixels. You can calculate the video's encoding aspect ratio as width_pixelsÂ /Â height_pixels. */
  int widthPixels;

  /** Create new VideoFileDetailsVideoStream from JSON data */
  VideoFileDetailsVideoStream.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** A paginated list of videos returned as the response to a youtube.videos.list call. */
class VideoListResponse {

  /** The ETag of the response. */
  String etag;

  /** A list of videos that match the request criteria. */
  List<Video> items;

  /** The type of the API response. For this operation, the value will be youtube#videoListResponse. */
  String kind;

  /** Create new VideoListResponse from JSON data */
  VideoListResponse.fromJson(Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
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
  }

  /** Create JSON Object for VideoListResponse */
  Map toJson() {
    var output = new Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of VideoListResponse */
  String toString() => JSON.stringify(this.toJson());

}

/** Details about monetization of a YouTube Video. */
class VideoMonetizationDetails {

  /** The value of access indicates whether the video can be monetized or not. */
  AccessPolicy access;

  /** Create new VideoMonetizationDetails from JSON data */
  VideoMonetizationDetails.fromJson(Map json) {
    if (json.containsKey("access")) {
      access = new AccessPolicy.fromJson(json["access"]);
    }
  }

  /** Create JSON Object for VideoMonetizationDetails */
  Map toJson() {
    var output = new Map();

    if (access != null) {
      output["access"] = access.toJson();
    }

    return output;
  }

  /** Return String representation of VideoMonetizationDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Player to be used for a video playback. */
class VideoPlayer {

  /** An <iframe> tag that embeds a player that will play the video. */
  String embedHtml;

  /** Create new VideoPlayer from JSON data */
  VideoPlayer.fromJson(Map json) {
    if (json.containsKey("embedHtml")) {
      embedHtml = json["embedHtml"];
    }
  }

  /** Create JSON Object for VideoPlayer */
  Map toJson() {
    var output = new Map();

    if (embedHtml != null) {
      output["embedHtml"] = embedHtml;
    }

    return output;
  }

  /** Return String representation of VideoPlayer */
  String toString() => JSON.stringify(this.toJson());

}

/** Describes processing status and progress and availability of some other Video resource parts. */
class VideoProcessingDetails {

  /** This value indicates whether video editing suggestions, which might improve video quality or the playback experience, are available for the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  String editorSuggestionsAvailability;

  /** This value indicates whether file details are available for the uploaded video. You can retrieve a video's file details by requesting the fileDetails part in your videos.list() request. */
  String fileDetailsAvailability;

  /** The reason that YouTube failed to process the video. This property will only have a value if the processingStatus property's value is failed. */
  String processingFailureReason;

  /** This value indicates whether the video processing engine has generated suggestions that might improve YouTube's ability to process the the video, warnings that explain video processing problems, or errors that cause video processing problems. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  String processingIssuesAvailability;

  /** The processingProgress object contains information about the progress YouTube has made in processing the video. The values are really only relevant if the video's processing status is processing. */
  VideoProcessingDetailsProcessingProgress processingProgress;

  /** The video's processing status. This value indicates whether YouTube was able to process the video or if the video is still being processed. */
  String processingStatus;

  /** This value indicates whether keyword (tag) suggestions are available for the video. Tags can be added to a video's metadata to make it easier for other users to find the video. You can retrieve these suggestions by requesting the suggestions part in your videos.list() request. */
  String tagSuggestionsAvailability;

  /** This value indicates whether thumbnail images have been generated for the video. */
  String thumbnailsAvailability;

  /** Create new VideoProcessingDetails from JSON data */
  VideoProcessingDetails.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Video processing progress and completion time estimate. */
class VideoProcessingDetailsProcessingProgress {

  /** The number of parts of the video that YouTube has already processed. You can estimate the percentage of the video that YouTube has already processed by calculating:
100 * parts_processed / parts_total

Note that since the estimated number of parts could increase without a corresponding increase in the number of parts that have already been processed, it is possible that the calculated progress could periodically decrease while YouTube processes a video. */
  String partsProcessed;

  /** An estimate of the total number of parts that need to be processed for the video. The number may be updated with more precise estimates while YouTube processes the video. */
  String partsTotal;

  /** An estimate of the amount of time, in millseconds, that YouTube needs to finish processing the video. */
  String timeLeftMs;

  /** Create new VideoProcessingDetailsProcessingProgress from JSON data */
  VideoProcessingDetailsProcessingProgress.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Project specific details about the content of a YouTube Video. */
class VideoProjectDetails {

  /** A list of project tags associated with the video during the upload. */
  List<String> tags;

  /** Create new VideoProjectDetails from JSON data */
  VideoProjectDetails.fromJson(Map json) {
    if (json.containsKey("tags")) {
      tags = [];
      json["tags"].forEach((item) {
        tags.add(item);
      });
    }
  }

  /** Create JSON Object for VideoProjectDetails */
  Map toJson() {
    var output = new Map();

    if (tags != null) {
      output["tags"] = new List();
      tags.forEach((item) {
        output["tags"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoProjectDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Recording information associated with the video. */
class VideoRecordingDetails {

  /** The geolocation information associated with the video. */
  GeoPoint location;

  /** The text description of the location where the video was recorded. */
  String locationDescription;

  /** The date and time when the video was recorded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String recordingDate;

  /** Create new VideoRecordingDetails from JSON data */
  VideoRecordingDetails.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Basic details about a video, including title, description, uploader, thumbnails and category. */
class VideoSnippet {

  /** The YouTube video category associated with the video. */
  String categoryId;

  /** The ID that YouTube uses to uniquely identify the channel that the video was uploaded to. */
  String channelId;

  /** Channel title for the channel that the video belongs to. */
  String channelTitle;

  /** The video's description. */
  String description;

  /** The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A list of keyword tags associated with the video. Tags may contain spaces. This field is only visible to the video's uploader. */
  List<String> tags;

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ThumbnailDetails thumbnails;

  /** The video's title. */
  String title;

  /** Create new VideoSnippet from JSON data */
  VideoSnippet.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
      output["tags"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Statistics about the video, such as the number of times the video was viewed or liked. */
class VideoStatistics {

  /** The number of comments for the video. */
  String commentCount;

  /** The number of users who have indicated that they disliked the video by giving it a negative rating. */
  String dislikeCount;

  /** The number of users who currently have the video marked as a favorite video. */
  String favoriteCount;

  /** The number of users who have indicated that they liked the video by giving it a positive rating. */
  String likeCount;

  /** The number of times the video has been viewed. */
  String viewCount;

  /** Create new VideoStatistics from JSON data */
  VideoStatistics.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** The status of a video details the video's upload status and privacy status. */
class VideoStatus {

  /** This value indicates if the video can be embedded on another website. */
  bool embeddable;

  /** This value explains why a video failed to upload. This property is only present if the uploadStatus property indicates that the upload failed. */
  String failureReason;

  /** The video's license. */
  String license;

  /** The video's privacy status. */
  String privacyStatus;

  /** This value indicates if the extended video statistics on the watch page can be viewed by everyone. Note that the view count, likes, etc will still be visible if this is disabled. */
  bool publicStatsViewable;

  /** This value explains why YouTube rejected an uploaded video. This property is only present if the uploadStatus property indicates that the upload was rejected. */
  String rejectionReason;

  /** The status of the uploaded video. */
  String uploadStatus;

  /** Create new VideoStatus from JSON data */
  VideoStatus.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

/** Specifies suggestions on how to improve video content, including encoding hints, tag suggestions, and editor suggestions. */
class VideoSuggestions {

  /** A list of video editing operations that might improve the video quality or playback experience of the uploaded video. */
  List<String> editorSuggestions;

  /** A list of errors that will prevent YouTube from successfully processing the uploaded video video. These errors indicate that, regardless of the video's current processing status, eventually, that status will almost certainly be failed. */
  List<String> processingErrors;

  /** A list of suggestions that may improve YouTube's ability to process the video. */
  List<String> processingHints;

  /** A list of reasons why YouTube may have difficulty transcoding the uploaded video or that might result in an erroneous transcoding. These warnings are generated before YouTube actually processes the uploaded video file. In addition, they identify issues that are unlikely to cause the video processing to fail but that might cause problems such as sync issues, video artifacts, or a missing audio track. */
  List<String> processingWarnings;

  /** A list of keyword tags that could be added to the video's metadata to increase the likelihood that users will locate your video when searching or browsing on YouTube. */
  List<VideoSuggestionsTagSuggestion> tagSuggestions;

  /** Create new VideoSuggestions from JSON data */
  VideoSuggestions.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (editorSuggestions != null) {
      output["editorSuggestions"] = new List();
      editorSuggestions.forEach((item) {
        output["editorSuggestions"].add(item);
      });
    }
    if (processingErrors != null) {
      output["processingErrors"] = new List();
      processingErrors.forEach((item) {
        output["processingErrors"].add(item);
      });
    }
    if (processingHints != null) {
      output["processingHints"] = new List();
      processingHints.forEach((item) {
        output["processingHints"].add(item);
      });
    }
    if (processingWarnings != null) {
      output["processingWarnings"] = new List();
      processingWarnings.forEach((item) {
        output["processingWarnings"].add(item);
      });
    }
    if (tagSuggestions != null) {
      output["tagSuggestions"] = new List();
      tagSuggestions.forEach((item) {
        output["tagSuggestions"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of VideoSuggestions */
  String toString() => JSON.stringify(this.toJson());

}

/** A single tag suggestion with it's relevance information. */
class VideoSuggestionsTagSuggestion {

  /** A set of video categories for which the tag is relevant. You can use this information to display appropriate tag suggestions based on the video category that the video uploader associates with the video. By default, tag suggestions are relevant for all categories if there are no restricts defined for the keyword. */
  List<String> categoryRestricts;

  /** The keyword tag suggested for the video. */
  String tag;

  /** Create new VideoSuggestionsTagSuggestion from JSON data */
  VideoSuggestionsTagSuggestion.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

    if (categoryRestricts != null) {
      output["categoryRestricts"] = new List();
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
  String toString() => JSON.stringify(this.toJson());

}

/** Freebase topic information related to the video. */
class VideoTopicDetails {

  /** A list of Freebase topic IDs associated with the video. You can retrieve information about each topic using the Freebase Topic API. */
  List<String> topicIds;

  /** Create new VideoTopicDetails from JSON data */
  VideoTopicDetails.fromJson(Map json) {
    if (json.containsKey("topicIds")) {
      topicIds = [];
      json["topicIds"].forEach((item) {
        topicIds.add(item);
      });
    }
  }

  /** Create JSON Object for VideoTopicDetails */
  Map toJson() {
    var output = new Map();

    if (topicIds != null) {
      output["topicIds"] = new List();
      topicIds.forEach((item) {
        output["topicIds"].add(item);
      });
    }

    return output;
  }

  /** Return String representation of VideoTopicDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Branding properties for the watch. */
class WatchSettings {
  String backgroundColor;
  String featuredPlaylistId;
  String textColor;

  /** Create new WatchSettings from JSON data */
  WatchSettings.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

