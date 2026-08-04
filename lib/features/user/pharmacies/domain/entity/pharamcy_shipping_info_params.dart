
class  PharamcyShippingInfoParams {

  final int addressId;

  PharamcyShippingInfoParams({required this.addressId});


  Map<String,dynamic> toJson()=>{
    "address_id" : addressId,
  };


}