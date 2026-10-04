import 'package:flutter_tdd/core/helpers/user_location_params.dart';

class SendAiMessageParams {
  final String conversationId;
  final String macAddress;
  final String message;

  const SendAiMessageParams({
    required this.conversationId,
    required this.macAddress,
    required this.message,
  });

  Map<String, dynamic> toJson() {
    return {
      'mac_address': macAddress,
      'message': message,
      ...UserLocationParams().toJson(),
    };
  }
}
