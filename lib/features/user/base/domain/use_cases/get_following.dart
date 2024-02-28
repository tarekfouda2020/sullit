import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/base/domain/repository/base_repository.dart';
import 'package:flutter_tdd/features/user/products/domain/models/shop.dart';

class GetFollowing extends UseCase<List<Shop>, bool> {
  @override
  Future<List<Shop>> call(bool params) async {
    var result = await getIt<BaseRepository>().getFollowing(params);
    return result.fold((l) => [], (r) => r);
  }
}
