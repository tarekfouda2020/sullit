import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/models/pay_method_domain_model.dart';
import 'package:flutter_tdd/features/user/gift_card/domain/repositories/gift_cards_repositories.dart';

class GetPayMethods implements UseCase<List<PayMethodDomainModel>, NoParams> {

  @override
  Future<List<PayMethodDomainModel>> call(NoParams param) async {
    var result = await getIt.get<GiftCardsRepositories>().getPayMethods();
    return result.fold(
          (l) => [],
          (r) => r,
    );
  }

}