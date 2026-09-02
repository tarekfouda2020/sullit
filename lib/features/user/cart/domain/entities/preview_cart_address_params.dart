class PreviewCartAddressParams {
  final int addressId;

  PreviewCartAddressParams({required this.addressId});

  Map<String, dynamic> toJson() {
    return {
      'address_id': addressId,
    };
  }
}
