import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_display_item.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/order_modification_domain_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/orders.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetOrderDetails extends UseCase<Orders?, GenericParams> {
  @override
  Future<Orders?> call(GenericParams params) async {
    var result = await getIt<PurchasingRepository>().getOrderDetails(params);
    return result.fold(
      (l) => null,
      (r) => _handleAllProducts(r),
    );
  }

  Orders _handleAllProducts(Orders data) {
    final currentMap = <int, OrderDetails>{
      for (final item in data.orderDetails)
        if (item.product != null) item.product!.id!: item,
    };

    final historyMap = <int, OrderModificationDomainModel>{
      for (OrderModificationDomainModel h in data.orderDetailHistories ?? <OrderModificationDomainModel>[])
       if(h.oldProduct!= null) h.oldProduct!.id: h,
    };

    final addedHistoryMap = <int, OrderModificationDomainModel>{
      for (final h in data.orderDetailHistories ?? <OrderModificationDomainModel>[])
        if (h.isAdd && h.newProduct != null) h.newProduct!.id: h,
    };

    final allIds = {...currentMap.keys, ...historyMap.keys};

    final regular = <OrderDisplayItem>[];
    final removed = <OrderDisplayItem>[];
    final added = <OrderDisplayItem>[];

    for (final id in allIds) {
      final current = currentMap[id];
      final hist = historyMap[id];

      if (hist == null) {
        final addHist = addedHistoryMap[id];
        if (addHist != null) {
          added.add(OrderDisplayItem(current: current, history: addHist));
        } else {
          regular.add(OrderDisplayItem(current: current));
        }
      } else if (hist.isAdd) {
        added.add(OrderDisplayItem(current: current, history: hist));
      } else if (hist.isRemove || hist.isReplace) {
        removed.add(OrderDisplayItem(current: current, history: hist));
      } else {
        regular.add(OrderDisplayItem(current: current, history: hist));
      }
    }

    data.displayItems = [...regular, ...removed, ...added];
    return data;
  }
}
