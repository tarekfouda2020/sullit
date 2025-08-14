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

  double get subTotal {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) => getIt<Utilities>().extractFormattedNumberToDouble(e.subtotal) ?? 0.0)
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

  double get tax {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) => getIt<Utilities>().extractFormattedNumberToDouble(e.tax) ?? 0.0)
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

  double get shippingTotal {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) => getIt<Utilities>().extractFormattedNumberToDouble(e.shipping) ?? 0.0)
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

  double get total {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) {
          print("===========>>>>>>>>>>>> total ${e.total} <<<<<<<<<<<");
          var uuu = getIt<Utilities>().extractFormattedNumberToDouble(e.total);
          print("===========>>>>>>>>>>>> total $uuu <<<<<<<<<<<");
          return getIt<Utilities>().extractFormattedNumberToDouble(e.total) ?? 0.0;
    })
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

  double get loyaltyPointsDiscount {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) {
      return getIt<Utilities>().extractFormattedNumberToDouble(e.loyaltyPointsValue) ?? 0.0;
    })
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

  double get discounts {
    var subTotalList = (sectionOrders ?? <Orders>[])
        .map((e) {
      return getIt<Utilities>().extractFormattedNumberToDouble(e.couponDiscount) ?? 0.0;
    })
        .toList();
    return subTotalList.fold(0.0, (previousValue, element) => previousValue+element);
  }

}
