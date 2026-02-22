
class ClearCartParams {
  final String macAddress ;
 int? sellerId;

  ClearCartParams({required this.macAddress,this.sellerId});

  Map<String, dynamic> toJson ()=> {
    "mac_address":  macAddress,
    if(sellerId!=null) "seller_id" : sellerId
  };

}