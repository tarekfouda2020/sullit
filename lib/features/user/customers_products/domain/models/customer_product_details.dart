import 'package:flutter_tdd/core/models/domain_model/base_domain_model.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/customer_product.dart';

class CustomersProductDetails extends BaseDomainModel {
  CustomerProduct customerProduct;
  List<CustomerProduct> relatedProducts;

  CustomersProductDetails({
    required this.customerProduct,
    required this.relatedProducts,
  });
}
