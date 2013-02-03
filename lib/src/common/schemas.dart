part of youtube_v3_api_client;

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

  /** The description of the resource primarily associated with the activity. */
  String description;

  /** The group ID associated with the activity. A group ID identifies user events that are associated with the same user and resource. For example, if a user rates a video and marks the same video as a favorite, the entries for those events would have the same group ID in the user's activity feed. In your user interface, you can avoid repetition by grouping events with the same groupId value. */
  String groupId;

  /** The date and time that the activity occurred. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ActivitySnippetThumbnails thumbnails;

  /** The title of the resource primarily associated with the activity. */
  String title;

  /** The type of activity that the resource describes. */
  String type;

  /** Create new ActivitySnippet from JSON data */
  ActivitySnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
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
      thumbnails = new ActivitySnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the resource that is primarily associated with the activity. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class ActivitySnippetThumbnails {

  /** Create new ActivitySnippetThumbnails from JSON data */
  ActivitySnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for ActivitySnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of ActivitySnippetThumbnails */
  String toString() => JSON.stringify(this.toJson());

}

/** A channel resource contains information about a YouTube channel. */
class Channel {

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

/** Details about the content of a channel. */
class ChannelContentDetails {

  /** The relatedPlaylists object is a map that identifies playlists associated with the channel, such as the channel's uploaded videos or favorite videos. You can retrieve any of these playlists using the playlists.list method. */
  ChannelContentDetailsRelatedPlaylists relatedPlaylists;

  /** Create new ChannelContentDetails from JSON data */
  ChannelContentDetails.fromJson(Map json) {
    if (json.containsKey("relatedPlaylists")) {
      relatedPlaylists = new ChannelContentDetailsRelatedPlaylists.fromJson(json["relatedPlaylists"]);
    }
  }

  /** Create JSON Object for ChannelContentDetails */
  Map toJson() {
    var output = new Map();

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

/** Basic details about a channel, including title, description and thumbnails. */
class ChannelSnippet {
  String description;

  /** The date and time that the channel was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  ChannelSnippetThumbnails thumbnails;

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
      thumbnails = new ChannelSnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the channel. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class ChannelSnippetThumbnails {

  /** Create new ChannelSnippetThumbnails from JSON data */
  ChannelSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for ChannelSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of ChannelSnippetThumbnails */
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

/** Basic details about an item included in a playlist, including title, description, thumbnails, playlist the item is part of and position of the item inside the playlist. */
class PlaylistItemSnippet {

  /** The ID that YouTube uses to uniquely identify the user that added the item to the playlist. */
  String channelId;

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

  /** A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  PlaylistItemSnippetThumbnails thumbnails;

  /** The item's title. */
  String title;

  /** Create new PlaylistItemSnippet from JSON data */
  PlaylistItemSnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
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
      thumbnails = new PlaylistItemSnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the playlist item. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class PlaylistItemSnippetThumbnails {

  /** Create new PlaylistItemSnippetThumbnails from JSON data */
  PlaylistItemSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for PlaylistItemSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of PlaylistItemSnippetThumbnails */
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

  /** The playlist's description. */
  String description;

  /** The date and time that the playlist was created. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  PlaylistSnippetThumbnails thumbnails;

  /** The playlist's title. */
  String title;

  /** Create new PlaylistSnippet from JSON data */
  PlaylistSnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new PlaylistSnippetThumbnails.fromJson(json["thumbnails"]);
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
  }

  /** Create JSON Object for PlaylistSnippet */
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
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.toJson();
    }
    if (title != null) {
      output["title"] = title;
    }

    return output;
  }

  /** Return String representation of PlaylistSnippet */
  String toString() => JSON.stringify(this.toJson());

}

/** A map of thumbnail images associated with the playlist. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class PlaylistSnippetThumbnails {

  /** Create new PlaylistSnippetThumbnails from JSON data */
  PlaylistSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for PlaylistSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of PlaylistSnippetThumbnails */
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

/** A resource id is a generic reference that points to another YouTube resource. */
class ResourceId {

  /** The ID that YouTube uses to uniquely identify the referred resource, if that resource is a channel. This property is only present if the resourceId.kind value is youtube#channel. */
  String channelId;

  /** The kind, or type, of the referred resource. */
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

  /** The ETag of the search result. */
  String etag;

  /** The id object contains information that can be used to uniquely identify the resource that matches the search request. */
  ResourceId id;

  /** The type of the API response. For this resource, the value will be youtube#searchResult. */
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

/** Basic details about a search result, including title, description and thumbnails of the item referenced by the search result. */
class SearchResultSnippet {

  /** The value that YouTube uses to uniquely identify the channel that published the resource that the search result identifies. */
  String channelId;

  /** A description of the search result. */
  String description;

  /** The creation date and time of the resource that the search result identifies. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  SearchResultSnippetThumbnails thumbnails;

  /** The title to display for the search result. */
  String title;

  /** Create new SearchResultSnippet from JSON data */
  SearchResultSnippet.fromJson(Map json) {
    if (json.containsKey("channelId")) {
      channelId = json["channelId"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("publishedAt")) {
      publishedAt = json["publishedAt"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = new SearchResultSnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the search result. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class SearchResultSnippetThumbnails {

  /** Create new SearchResultSnippetThumbnails from JSON data */
  SearchResultSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for SearchResultSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of SearchResultSnippetThumbnails */
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
  SubscriptionSnippetThumbnails thumbnails;

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
      thumbnails = new SubscriptionSnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the subscription. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class SubscriptionSnippetThumbnails {

  /** Create new SubscriptionSnippetThumbnails from JSON data */
  SubscriptionSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for SubscriptionSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of SubscriptionSnippetThumbnails */
  String toString() => JSON.stringify(this.toJson());

}

class Thumbnail {
  int height;

  /** The thumbnail image's URL. */
  String url;
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

/** A video resource represents a YouTube video. */
class Video {

  /** The contentDetails object contains information about the video content, including the length of the video and its aspect ratio. */
  VideoContentDetails contentDetails;

  /** The ETag of the video resource. */
  String etag;

  /** The ID that YouTube uses to uniquely identify the video. */
  String id;

  /** The type of the API resource. For video resources, the value will be youtube#video. */
  String kind;

  /** The monetizationDetails object encapsulates information about the monetization status of the video. */
  VideoMonetizationDetails monetizationDetails;

  /** The player object contains information that you would use to play the video in an embedded player. */
  VideoPlayer player;

  /** The recordingDetails object encapsulates information about the location, date and address where the video was recorded. */
  VideoRecordingDetails recordingDetails;

  /** The snippet object contains basic details about the video, such as its title, description, and category. */
  VideoSnippet snippet;

  /** The statistics object contains statistics about the video. */
  VideoStatistics statistics;

  /** The status object contains information about the video's uploading, processing, and privacy statuses. */
  VideoStatus status;

  /** The topicDetails object encapsulates information about Freebase topics associated with the video. */
  VideoTopicDetails topicDetails;

  /** Create new Video from JSON data */
  Video.fromJson(Map json) {
    if (json.containsKey("contentDetails")) {
      contentDetails = new VideoContentDetails.fromJson(json["contentDetails"]);
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
    if (json.containsKey("monetizationDetails")) {
      monetizationDetails = new VideoMonetizationDetails.fromJson(json["monetizationDetails"]);
    }
    if (json.containsKey("player")) {
      player = new VideoPlayer.fromJson(json["player"]);
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
    if (json.containsKey("topicDetails")) {
      topicDetails = new VideoTopicDetails.fromJson(json["topicDetails"]);
    }
  }

  /** Create JSON Object for Video */
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
    if (monetizationDetails != null) {
      output["monetizationDetails"] = monetizationDetails.toJson();
    }
    if (player != null) {
      output["player"] = player.toJson();
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
    if (topicDetails != null) {
      output["topicDetails"] = topicDetails.toJson();
    }

    return output;
  }

  /** Return String representation of Video */
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

/** Basic details about a video category, such as its localized title. */
class VideoCategorySnippet {

  /** The YouTube channel that created the video category. */
  String channelId;

  /** The video category's title. */
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

class VideoContentDetails {

  /** The value of captions indicates whether the video has captions or not. */
  String caption;

  /** The value of definition indicates whether the video is available in high definition or only in standard definition. */
  String definition;

  /** The value of dimension indicates whether the video is available in 3D or in 2D. */
  String dimension;

  /** The length of the video. The tag value is an ISO 8601 duration in the format PT#M#S, in which the letters PT indicate that the value specifies a period of time, and the letters M and S refer to length in minutes and seconds, respectively. The # characters preceding the M and S letters are both integers that specify the number of minutes (or seconds) of the video. For example, a value of PT15M51S indicates that the video is 15 minutes and 51 seconds long. */
  String duration;

  /** The regionRestriction object contains information about the countries where a video is (or is not) viewable. The object will contain either the contentDetails.regionRestriction.allowed property or the contentDetails.regionRestriction.blocked property. */
  VideoContentDetailsRegionRestriction regionRestriction;

  /** Create new VideoContentDetails from JSON data */
  VideoContentDetails.fromJson(Map json) {
    if (json.containsKey("caption")) {
      caption = json["caption"];
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
    if (definition != null) {
      output["definition"] = definition;
    }
    if (dimension != null) {
      output["dimension"] = dimension;
    }
    if (duration != null) {
      output["duration"] = duration;
    }
    if (regionRestriction != null) {
      output["regionRestriction"] = regionRestriction.toJson();
    }

    return output;
  }

  /** Return String representation of VideoContentDetails */
  String toString() => JSON.stringify(this.toJson());

}

/** Region restriction of the video. */
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

  /** The video's description. */
  String description;

  /** The date and time that the video was uploaded. The value is specified in ISO 8601 (YYYY-MM-DDThh:mm:ss.sZ) format. */
  String publishedAt;

  /** A list of keyword tags associated with the video. Tags may contain spaces. This field is only visible to the video's uploader. */
  List<String> tags;

  /** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
  VideoSnippetThumbnails thumbnails;

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
      thumbnails = new VideoSnippetThumbnails.fromJson(json["thumbnails"]);
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

/** A map of thumbnail images associated with the video. For each object in the map, the key is the name of the thumbnail image, and the value is an object that contains other information about the thumbnail. */
class VideoSnippetThumbnails {

  /** Create new VideoSnippetThumbnails from JSON data */
  VideoSnippetThumbnails.fromJson(Map json) {
  }

  /** Create JSON Object for VideoSnippetThumbnails */
  Map toJson() {
    var output = new Map();


    return output;
  }

  /** Return String representation of VideoSnippetThumbnails */
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

