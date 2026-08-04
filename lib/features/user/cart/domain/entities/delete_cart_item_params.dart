class DeleteCartItemParams {
  int id;
  String? deviceId;

  DeleteCartItemParams({required this.id, this.deviceId});

  Map<String, dynamic> toJson() => {"mac_address": deviceId};

  String toQuery() => '/$id/delete';
}
