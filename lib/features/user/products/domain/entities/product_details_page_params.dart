part of '../../presentation/pages/product_details/product_details_imports.dart';

class ProductDetailsPageParams {
  final int productId;
  final bool isResale;
  final bool isFav;
  final bool fromSellerPage;
  final int? branchId;

  const ProductDetailsPageParams({
    required this.productId,
    required this.isResale,
    required this.isFav,
    this.fromSellerPage = false,
    this.branchId,
  });
}
