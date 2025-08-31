import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/summary.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';

class OrderSummary extends BaseDomainModel {
  Summary? summary;

  List<Orders>? sectionOrders;

  String? transactionUrl;

  OrderSummary({
    this.summary,
    this.sectionOrders,
    this.transactionUrl,
  });

  double _sumBy(double? Function(Orders e) selector) {
    return (sectionOrders ?? <Orders>[]).map((e) => selector(e) ?? 0.0).fold(0.0, (prev, element) => prev + element);
  }

  double get subTotal => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.subtotal),
      );

  double get tax => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.tax),
      );

  double get shippingTotal => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.shipping),
      );

  double get total => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.total),
      );

  double get loyaltyPointsDiscount => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.loyaltyPointsValue),
      );

  double get discounts => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.couponDiscount),
      );

   int getTotalItems() {
    var  orderDetailsList = sectionOrders!.expand((element) => element.orderDetails).toList();
    var quantityList = orderDetailsList.map((e) => e.quantity).toList();
    return quantityList.fold(0, (previousValue, element) => previousValue+element);
   }

   // int getTotalItems() => sectionOrders!.fold(0, (previousValue, element) => previousValue+element.totalItems);

}
