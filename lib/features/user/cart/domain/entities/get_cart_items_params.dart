class CartParams {
  String macAddress ;
  bool refresh ;
  CartParams({required this.macAddress, required this.refresh });

  Map<String, dynamic> toJson ()=> {
    "mac_address":  macAddress
  };

  String toQuery ()=> 'cart?mac_address=$macAddress';
}