

import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/entity/pharmacy_branches_params.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/models/pharmacy_branch_domain_model.dart';
import 'package:flutter_tdd/features/user/pharmacies/domain/repository/pharmacies_repository.dart';

class GetPharmacyBranches extends UseCase<List<PharmacyBranchDomainModel>, PharmacyBranchesParams> {
  @override
  Future<List<PharmacyBranchDomainModel>> call(PharmacyBranchesParams params) async {
    var result = await getIt<PharmaciesRepository>().getPharmacyBranches(params);
    return result.fold(
            (l) => [],
            (branches) {
              for(PharmacyBranchDomainModel item in branches){
                item.isSelected = item.isDefault;
              }
              return branches;
            }
    );
  }
}