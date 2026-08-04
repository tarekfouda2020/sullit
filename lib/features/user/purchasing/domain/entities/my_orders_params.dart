import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/purchasing/data/enums/order_type_enum.dart';

class MyOrdersParams {

  final GenericPaginateParams paginateParams;

  final OrderTypeEnum? type;

  MyOrdersParams({required this.paginateParams,  this.type});


  Map<String,dynamic> toJson(){
    return {
      ...paginateParams.toJson(),
     if(type!= null && type == OrderTypeEnum.pharmacy) "shop_type" : type!.getKey()
    };
  }


  bool get refresh => paginateParams.refresh;


}