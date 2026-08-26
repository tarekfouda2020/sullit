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
    final histories = List<OrderModificationDomainModel>.of(
      data.orderDetailHistories ?? <OrderModificationDomainModel>[],
    );
    final usedHistoryIds = <int>{};

    OrderModificationDomainModel? takeHistory(OrderDetails item) {
      final productId = item.product?.id;
      if (productId == null) return null;
      final index = histories.indexWhere((h) {
        if (usedHistoryIds.contains(h.id)) return false;
        if (h.isAdd && h.newProduct?.id == productId) return true;
        return h.oldProduct?.id == productId;
      });
      if (index < 0) return null;
      usedHistoryIds.add(histories[index].id);
      return histories[index];
    }

    final regular = <OrderDisplayItem>[];
    final removed = <OrderDisplayItem>[];
    final added = <OrderDisplayItem>[];

    for (final item in data.orderDetails) {
      final hist = takeHistory(item);
      if (hist == null) {
        regular.add(OrderDisplayItem(current: item));
      } else if (hist.isAdd) {
        added.add(OrderDisplayItem(current: item, history: hist));
      } else if (hist.isRemove || hist.isReplace) {
        removed.add(OrderDisplayItem(current: item, history: hist));
      } else {
        regular.add(OrderDisplayItem(current: item, history: hist));
      }
    }

    for (final hist in histories) {
      if (usedHistoryIds.contains(hist.id)) continue;
      if (hist.isRemove || hist.isReplace) {
        removed.add(OrderDisplayItem(history: hist));
      } else if (hist.isAdd) {
        added.add(OrderDisplayItem(history: hist));
      }
    }

    data.displayItems = [...regular, ...removed, ...added];
    return data;
  }
}
