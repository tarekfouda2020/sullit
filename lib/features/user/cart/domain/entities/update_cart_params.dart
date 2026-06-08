class UpdateCartItemParams {
  String? macAddress;
  int id;
  int qty;

  UpdateCartItemParams(
      {required this.macAddress, required this.qty, required this.id});

  Map<String, dynamic> toJson() {
    return {
      'quantity': qty,
    };
  }

  String toQuery() => 'cart/$id/update?_method=put&mac_address=$macAddress';
}
