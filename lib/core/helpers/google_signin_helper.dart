
import 'dart:developer';

import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class GoogleSignInHelper {
  final GoogleSignIn _googleSignIn = GoogleSignIn.instance;

   final List<String> _scopes = [
    'email',
    'profile',
  ];


  /// iOS OAuth client from GoogleService-Info.plist CLIENT_ID.
  /// Do not pass a deleted Web client as serverClientId (Google 401 deleted_client).
  static const String _iosClientId =
      "644512695362-ja4kp085a2tgg9s3qudn47b7r9eekno4.apps.googleusercontent.com";

  Future<GoogleSignInAccount> get accountAuthorization async =>
      await _googleSignIn.authenticate(scopeHint: _scopes);

  Future<void> initialize({String? clientId, String? serverClientId}) async {
    await _googleSignIn.initialize(
      clientId: clientId ?? _iosClientId,
      serverClientId: serverClientId,
    );
  }

  Future<String?> signIn() async {
    final GoogleSignInAccount account = await accountAuthorization;

    final GoogleSignInClientAuthorization authorization =
    await account.authorizationClient.authorizeScopes(
      _scopes,
    );

    log("===>>>access token =>${authorization.accessToken} <<<<<<====");

    return authorization.accessToken;
  }

  Future<String?> getUserIdToken() async {
    final GoogleSignInAccount account = await accountAuthorization;

    String? idToken = account.authentication.idToken;

    log("===>>>idToken token =>$idToken <<<<<<====");

    return account.authentication.idToken;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
  }
}