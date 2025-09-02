import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_paginate_params.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/repositories/vip_repositories.dart';

class GetSubscriptions implements UseCase<List<VipSubscribeDomainModel>, GenericPaginateParams> {

  @override
  Future<List<VipSubscribeDomainModel>> call(GenericPaginateParams param) async {
    var result = await getIt.get<VipRepositories>().getSubscriptions(param);
    return result.fold(
      (l) => [],
      (r) => r,
    );
  }
} 