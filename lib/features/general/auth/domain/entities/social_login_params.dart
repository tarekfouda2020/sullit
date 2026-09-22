class SocialLoginParams {
  final String socialProvider;
  final String accessToken;
  final String macAddress;

  SocialLoginParams({
    required this.socialProvider,
    required this.accessToken,
    required this.macAddress,
  });

  Map<String, dynamic> toJson() => {
        "social_provider": socialProvider,
        "access_token": accessToken,
        "mac_address": macAddress,
      };
}
