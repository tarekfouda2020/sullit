class AiChatParticipantParams {
  final String macAddress;
  final bool refresh;
  const AiChatParticipantParams({required this.macAddress, this.refresh = true});

  Map<String, dynamic> toJson() => {'mac_address': macAddress};

  String query() => '?mac_address=$macAddress';
}
