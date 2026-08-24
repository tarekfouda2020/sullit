class ProductDetailsPageRouteParams {
  final int productId;
  final bool isResale;
  final bool isFav;
  final bool fromSellerPage;
  final int? branchId;

  const ProductDetailsPageRouteParams({
    required this.productId,
    this.isResale = false,
    this.isFav = false,
    this.fromSellerPage = false,
    this.branchId,
  });
}
