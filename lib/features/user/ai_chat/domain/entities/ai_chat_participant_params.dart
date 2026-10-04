class AiChatParticipantParams {
  final String macAddress;

  const AiChatParticipantParams({required this.macAddress});

  Map<String, dynamic> toJson() => {'mac_address': macAddress};

  String query() => '?mac_address=$macAddress';
}
