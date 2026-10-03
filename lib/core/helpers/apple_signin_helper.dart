import 'dart:convert';
import 'dart:developer';
import 'dart:math' show Random;

import 'package:crypto/crypto.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

@lazySingleton
class AppleSignInHelper {

  String? lastRawNonce;

  static const List<AppleIDAuthorizationScopes> _scopes = [
    AppleIDAuthorizationScopes.email,
    AppleIDAuthorizationScopes.fullName,
  ];

  Future<bool> get isAvailable async => SignInWithApple.isAvailable();

  Future<String?> signIn() async {
    if (!await isAvailable) {
      return null;
    }

    String rawNonce = _generateNonce();
    lastRawNonce = rawNonce;

    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: _scopes,
        nonce: _sha256ofString(rawNonce),
      );

      String? identityToken = credential.identityToken;

      return identityToken;
    } on SignInWithAppleAuthorizationException catch (e) {
      log("==== apple sign in error is ===>>>>>> ${e.code} ${e.message} ====");
      return null;
    }
  }

  String _generateNonce([int length = 32]) {
    const charset =
        '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
    final random = Random.secure();
    return List.generate(length, (_) => charset[random.nextInt(charset.length)])
        .join();
  }

  String _sha256ofString(String input) {
    final bytes = utf8.encode(input);
    final digest = sha256.convert(bytes);
    return digest.toString();
  }
}
