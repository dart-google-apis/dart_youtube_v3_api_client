library youtube_v3_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_youtube_v3_api/src/browser_client.dart';
import "package:google_youtube_v3_api/youtube_v3_api_client.dart";

/** Programmatic access to YouTube features. */
@deprecated
class Youtube extends Client with BrowserClient {

  /** OAuth Scope2: Manage your YouTube account */
  static const String YOUTUBE_SCOPE = "https://www.googleapis.com/auth/youtube";

  /** OAuth Scope2: View your YouTube account */
  static const String YOUTUBE_READONLY_SCOPE = "https://www.googleapis.com/auth/youtube.readonly";

  /** OAuth Scope2: Manage your YouTube videos */
  static const String YOUTUBE_UPLOAD_SCOPE = "https://www.googleapis.com/auth/youtube.upload";

  /** OAuth Scope2: View and manage your assets and associated content on YouTube */
  static const String YOUTUBEPARTNER_SCOPE = "https://www.googleapis.com/auth/youtubepartner";

  /** OAuth Scope2: View private information of your YouTube channel relevant during the audit process with a YouTube partner */
  static const String YOUTUBEPARTNER_CHANNEL_AUDIT_SCOPE = "https://www.googleapis.com/auth/youtubepartner-channel-audit";

  final oauth.OAuth2 auth;

  Youtube([oauth.OAuth2 this.auth]);
}
