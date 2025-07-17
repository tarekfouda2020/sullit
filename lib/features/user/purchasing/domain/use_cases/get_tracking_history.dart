import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/track_order_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/repository/purchasing_repository.dart';

class GetTrackHistory implements UseCase<TrackOrderModel?, int>  {
  @override
  Future<TrackOrderModel?> call(int param)async {
    var result = await getIt<PurchasingRepository>().trackingHistory(param);
    return result.fold((l) => null, (r) => r);
  }
}