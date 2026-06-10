import 'dart:developer';

import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/summary.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_details_model/order_details_model.dart';
import 'package:flutter_tdd/features/user/purchasing/data/models/order_model/order_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_discount_domain.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';

class OrderSummaryDomainModel extends BaseDomainModel {
  Summary? summary;

  List<Orders>? sectionOrders;

  String? transactionUrl;

  OrderModel? orderDetails;

  OrderSummaryDomainModel({
    this.summary,
    this.sectionOrders,
    this.transactionUrl,
    this.orderDetails,
  });

  double _sumBy(double? Function(Orders e) selector) {
    return (sectionOrders ?? <Orders>[])
        .map((e) => selector(e) ?? 0.0)
        .fold(0.0, (prev, element) => prev + element);
  }

  double get subTotal => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.subtotal),
      );

  double get shippingTotal => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.shipping),
      );

  double get tax => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.tax),
      );

  double get serviceFees => _sumBy(
        (e) => getIt<Utilities>()
            .extractFormattedNumberToDouble(e.serviceFees ?? "0.0"),
      );
  double get envFees => _sumBy(
        (e) => getIt<Utilities>()
            .extractFormattedNumberToDouble(e.environmentFees),
      );

  double get techFees => _sumBy(
        (e) => getIt<Utilities>()
            .extractFormattedNumberToDouble(e.technologyFees ?? "0.0"),
      );

  double get _totalFeesAmount => _sumBy(
        (e) => getIt<Utilities>()
            .extractFormattedNumberToDouble(e.vatFeeAmount ?? "0.0"),
      );

  double get totalServiceFees => techFees + serviceFees;

  double get totalVat => tax + _totalFeesAmount;

  double get total => _sumBy(
        (e) => getIt<Utilities>().extractFormattedNumberToDouble(e.total),
      );

  double get loyaltyPointsDiscount => _sumBy(
        (e) => getIt<Utilities>()
            .extractFormattedNumberToDouble(e.loyaltyPointsValue),
      );

  double get discounts => _sumBy(
        (e) =>
            getIt<Utilities>().extractFormattedNumberToDouble(e.couponDiscount),
      );

  double get pointsRedeemed => _sumBy(
        (e) => e.loyaltyPoints.toDouble(),
      );

  int getTotalItems() {
    var orderDetailsList =
        sectionOrders!.expand((element) => element.orderDetails).toList();
    var quantityList = orderDetailsList.map((e) => e.quantity).toList();
    return quantityList.fold(
        0, (previousValue, element) => previousValue + element);
  }

  // int getTotalItems() => sectionOrders!.fold(0, (previousValue, element) => previousValue+element.totalItems);

  double getSubTotalWithoutVat() {
    var sub = subTotal;
    var vatAmount = sub / 1.015;
    return vatAmount;
  }

  double vatAmount() {
    var different = subTotal - getSubTotalWithoutVat();
    return different;
  }

  List<OrderDiscountDomain> get discountList {
    return (sectionOrders ?? <Orders>[])
        .expand<OrderDiscountDomain>((element) => element.orderDiscounts!)
        .toList();
  }

  // double gainedBezatPoints(){
  //   var different = getSubTotalWithoutVat() * 10;
  //   return different;
  // }


 /// for pharmacy


  bool get pharmNormalOrder {
    for (final order in sectionOrders ?? <Orders>[]) {
      final insuranceCount = order.insuranceAttachments?.length ?? 0;
      final prescriptionCount = order.prescriptionAttachments?.length ?? 0;

      log(
        'Order ${order.id}: '
            'insurance=$insuranceCount, prescription=$prescriptionCount',
      );

      if (insuranceCount > 0 || prescriptionCount > 0) {
        log(
          'Order ${order.id} is NOT a normal pharmacy order',
        );
      }
    }

    return sectionOrders?.every(
          (element) =>
      (element.insuranceAttachments ?? []).isEmpty &&
          (element.prescriptionAttachments ?? []).isEmpty,
    ) ==
        true;
  }
bool get pharmOrderWithPrescription => sectionOrders?.any((element) => (element.prescriptionAttachments??[]).isNotEmpty) == true;

bool get pharmOrderWithInsurance => sectionOrders?.any((element) => (element.insuranceAttachments??[]).isNotEmpty) == true;

// bool get pharmNormalOrder => true;


}
