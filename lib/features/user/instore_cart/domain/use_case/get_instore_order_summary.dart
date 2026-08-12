import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/instore_cart/data/models/instore_order_summary_model/instore_order_summary_model.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/entity/instore_order_preview_params.dart';
import 'package:flutter_tdd/features/user/instore_cart/domain/repository/instore_cart_repository.dart';

class GetInstoreOrderSummary
    extends UseCase<InstoreOrderSummaryModel?, InstoreOrderPreviewParams> {
  @override
  Future<InstoreOrderSummaryModel?> call(
    InstoreOrderPreviewParams params,
  ) async {
    final result =
        await getIt<InstoreCartRepository>().getOrderSummary(params);
    return result.fold((_) => null, (data) => data);
  }
}
