import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/enum/order_modification_enum.dart';

class OrderModificationDomainModel extends BaseDomainModel {
  final int id;
  final String action;
  final String actionLabel;
  final String notes;
  final String? oldPrice;
  final String? newPrice;
  final int? oldQuantity;
  final int? newQuantity;
  final NewProductDomainModel? oldProduct;
  final NewProductDomainModel? newProduct;
  final String oldVariation;
  final String newVariation;
  final String createdAt;

  const OrderModificationDomainModel({
    required this.id,
    required this.action,
    required this.actionLabel,
    required this.notes,
    required this.oldPrice,
    required this.newPrice,
    required this.oldQuantity,
    required this.newQuantity,
    required this.oldProduct,
    this.newProduct,
    required this.oldVariation,
    required this.newVariation,
    required this.createdAt,
  });


  OrderModificationEnum? getModificationType(){
    switch(action){
      case "add" : return OrderModificationEnum.add ;
      case "remove" : return OrderModificationEnum.remove ;
      case "reduce" : return OrderModificationEnum.reduce ;
      case "replace" : return OrderModificationEnum.replace ;
      case "update_price" : return OrderModificationEnum.updatePrice ;
      default: return null;
    }
  }


  bool get isAdd => getModificationType() == OrderModificationEnum.add;

  bool get isRemove => getModificationType() == OrderModificationEnum.remove;

  bool get isReduce => getModificationType() == OrderModificationEnum.reduce;

  bool get isReplace => getModificationType() == OrderModificationEnum.replace;

  bool get isUpdatePrice => getModificationType() == OrderModificationEnum.updatePrice;



}

class NewProductDomainModel extends BaseDomainModel  {
  final int id;
  final String name;
  final String barcode;
  final String unit;
  final bool isFresh;
  final String thumbnailImage;

  const NewProductDomainModel({
    required this.id,
    required this.name,
    required this.barcode,
    required this.unit,
    required this.isFresh,
    required this.thumbnailImage,
  });
}