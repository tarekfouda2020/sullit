import 'package:flutter_tdd/features/user/best_sellers/data/enums/shop_type_enum.dart';
import 'package:flutter_tdd/features/user/search/domain/entities/search_result_params.dart';

class ShopsParams {
  final SearchResultParams params;
  final ShopTypeEnum type;

  ShopsParams({required this.params, this.type = ShopTypeEnum.merchant});

  Map<String, dynamic> toJons() => {
        ...params.toJson(),
        "type": type.getKey(),
      };
}
