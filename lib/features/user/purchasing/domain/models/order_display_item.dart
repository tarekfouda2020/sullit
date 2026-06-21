import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_modification_domain_model.dart';

class OrderDisplayItem {
  final OrderDetails? current;
  final OrderModificationDomainModel? history;

  const OrderDisplayItem({this.current, this.history});

  bool get isAdded => history?.isAdd == true;
  bool get isRemoved => history?.isRemove == true;
  bool get isReplace => history?.isReplace == true;
  bool get isModifiedInPlace =>
      history != null && !isAdded && !isRemoved && !isReplace;

  String get thumbnailImage {
    if (isRemoved || isReplace) {
      return history!.oldProduct.thumbnailImage;
    }
    if (isAdded) {
      return history?.newProduct?.thumbnailImage ??
          current?.product?.thumbnailImage ??
          "";
    }
    return current?.product?.thumbnailImage ?? "";
  }

  String get name {
    if (isRemoved || isReplace) {
      return history!.oldProduct.name;
    }
    if (isAdded) {
      return history?.newProduct?.name ?? current?.product?.name ?? "";
    }
    return current?.product?.name ?? "";
  }

  double get price {
    if (isRemoved || isReplace) {
      return double.tryParse(history!.oldPrice ?? "0.0") ?? 0.0;
    }
    if (isAdded) {
      return double.tryParse(history?.newPrice ?? "0.0") ??
          current?.getPrice ??
          0.0;
    }
    return current?.getPrice ?? 0.0;
  }

  int get quantity {
    if ((isRemoved || isReplace) && history!.oldQuantity != null) {
      return history!.oldQuantity!;
    }
    if (isAdded) {
      return history?.newQuantity ?? current?.quantity ?? 0;
    }
    return current?.quantity ?? 0;
  }
}
