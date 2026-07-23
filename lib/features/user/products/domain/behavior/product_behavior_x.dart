import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior_registry.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_type.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

extension ProductBehaviorX on Product {
  ProductType get productType => ProductType.fromString(type);

  ProductBehavior get behavior =>
      getIt<ProductBehaviorRegistry>().forType(productType);
}
