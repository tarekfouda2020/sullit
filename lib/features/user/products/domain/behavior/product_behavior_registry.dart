import 'package:flutter_tdd/features/user/products/domain/behavior/general_product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/pharmacy_product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_type.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ProductBehaviorRegistry {
  final Map<ProductType, ProductBehavior> _behaviors;

  ProductBehaviorRegistry(
    GeneralProductBehavior general,
    PharmacyProductBehavior pharmacy,
  ) : _behaviors = {
          ProductType.general: general,
          ProductType.pharmacy: pharmacy,
        };

  ProductBehavior forType(ProductType type) {
    final behavior = _behaviors[type];
    if (behavior == null) {
      throw StateError('No ProductBehavior registered for $type');
    }
    return behavior;
  }
}
