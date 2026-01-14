class CustomAddressModel {
  final String? countryName;
  final String? city;
  final String? region;
  final String? streetAddress;
  final String? countryCode;

  const CustomAddressModel({
    this.countryName,
    this.city,
    this.region,
    this.streetAddress,
    this.countryCode,
  });


  Map<String,dynamic> toJson()=>{
    "country_name":countryName,
    "city":city,
    "region":region,
    "streetAddress":streetAddress,
    "countryCode":countryCode,
  };



}

