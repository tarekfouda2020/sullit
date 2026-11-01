class HandoffParams {
  final String conversationId;
  final String macAddress;
  final String? reason;
  final String? contactName;
  final String? contactEmail;
  final String? contactPhone;

  const HandoffParams({
    required this.conversationId,
    required this.macAddress,
    this.reason,
    this.contactName,
    this.contactEmail,
    this.contactPhone,
  });

  Map<String, dynamic> toJson() {
    return {
      'mac_address': macAddress,
      if (reason != null && reason!.isNotEmpty) 'reason': reason,
      if (contactName != null && contactName!.isNotEmpty)
        'contact_name': contactName,
      if (contactEmail != null && contactEmail!.isNotEmpty)
        'contact_email': contactEmail,
      if (contactPhone != null && contactPhone!.isNotEmpty)
        'contact_phone': contactPhone,
    };
  }
}
