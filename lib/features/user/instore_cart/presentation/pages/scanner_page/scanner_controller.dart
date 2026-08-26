part of 'scanner_page_imports.dart';

class ScannerController {
  final MobileScannerController scannerController = MobileScannerController();

  final GenericBloc<bool> refreshBloc = GenericBloc(false);

  final TextEditingController barcodeTextController = TextEditingController();

  final List<InstoreCartItemModel> cartProducts = [];

  bool _isScanned = false;

  ScannerController() {
    syncLocalCart();
  }

  // Helpers

  void _notifyChange() {
    refreshBloc.onUpdateData(!refreshBloc.state.data);
  }

  void syncLocalCart() {
    cartProducts
      ..clear()
      ..addAll(
        InstoreCartHelper.instance.getCartItems(),
      );

    _notifyChange();
  }

  // Cart

  Future<void> addOrUpdateItem(
    ProductDetailsDomainModel value,
    Variant variant,
  ) async {
    final variantId = variant.id;
    if (variantId == null) return;

    final item = InstoreCartItemModel(
      id: value.product.id!,
      variantId: variantId,
      qnt: 1,
      price: num.parse(variant.calculablePrice ?? '0'),
      name: variant.name?.isNotEmpty == true ? variant.name! : value.product.name ?? '',
      image: variant.image?.isNotEmpty == true ? variant.image! : value.product.thumbnailImage ?? '',
    );

    await InstoreCartHelper.instance.addItemToCart(
      sellerId: value.product.sellerId!,
      sellerName: value.product.shop?.name ?? '',
      item: item,
    );

    syncLocalCart();
  }

  Future<void> updateItemQty(int variantId, int newQty) async {
    if (newQty < 1) return;

    final index = cartProducts.indexWhere(
      (item) => item.variantId == variantId,
    );

    if (index == -1) return;

    final updatedItem = cartProducts[index].copyWith(
      qnt: newQty,
    );

    await InstoreCartHelper.instance.updateItemInCart(
      item: updatedItem,
    );

    syncLocalCart();
  }

  // Barcode

  String? detectBarcode(BarcodeCapture capture) {
    if (_isScanned) return null;

    final barcode = capture.barcodes.firstOrNull?.rawValue;

    if (barcode == null || barcode.isEmpty) {
      return null;
    }

    _isScanned = true;

    return barcode;
  }

  void resetScan() {
    _isScanned = false;
  }

  // Totals

  double totalPriceResult() {
    return cartProducts.fold(
      0,
      (sum, item) => sum + item.totalPrice,
    );
  }

  double totalQntResult() {
    return cartProducts.fold(
      0,
      (sum, item) => sum + item.qnt,
    );
  }

  // Barcode Text

  Future<void> submitBarcodeText(
    BuildContext context,
  ) async {
    final sku = barcodeTextController.text.trim();

    if (sku.isEmpty) return;

    await getProductWithSku(context, sku);

    barcodeTextController.clear();
  }

  Future<void> getProductWithSku(
    BuildContext context,
    String sku,
  ) async {
    getIt<LoadingHelper>().showLoadingDialog();

    final value = await GetSkuProduct().call(sku);

    getIt<LoadingHelper>().dismissDialog();

    if (!context.mounted) return;

    if (value == null) {
      CustomToast.showSnakeBar(
        tr('productNotFound'),
        type: ToastType.error,
      );
      return;
    }

    await addNewItem(context, value);
  }

  Future<void> addNewItem(
    BuildContext context,
    ProductDetailsDomainModel value,
  ) async {
    final product = value.product;

    if (_hasMultipleVariants(product)) {
      await showVariantsSheet(context, value);
      return;
    }

    final variant = product.variant;

    if (variant?.id == null) return;

    await addOrUpdateItem(value, variant!);
  }

  // Product Details Sheet

  Future<void> submitBarcodeAndShowSheet(
    BuildContext context,
  ) async {
    final sku = barcodeTextController.text.trim();

    if (sku.isEmpty) return;

    final value = await _getProduct(context, sku);

    barcodeTextController.clear();

    if (!context.mounted || value == null) return;

    final product = value.product;

    if (_hasMultipleVariants(product)) {
      await showVariantsSheet(context, value);
      return;
    }

    final variant = product.variant;

    if (variant?.id == null) return;

    await addOrUpdateItem(value, variant!);

    if (!context.mounted) return;

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: context.colors.transparent,
      builder: (_) => ProductDetailsSheet(
        controller: this,
        variantId: variant.id!,
      ),
    );
  }

  Future<ProductDetailsDomainModel?> _getProduct(
    BuildContext context,
    String sku,
  ) async {
    getIt<LoadingHelper>().showLoadingDialog();

    try {
      return await GetSkuProduct().call(sku);
    } catch (_) {
      return null;
    } finally {
      getIt<LoadingHelper>().dismissDialog();
    }
  }

  // Variants

  Future<void> showVariantsSheet(
    BuildContext context,
    ProductDetailsDomainModel value,
  ) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return InstoreVariantSheetWidget(
          productDetails: value,
          onVariantSelected: (variant) async {
            Navigator.pop(context);

            await addOrUpdateItem(value, variant);

            if (!context.mounted) return;

            final variantId = variant.id;

            if (variantId == null) return;

            await showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              builder: (_) => ProductDetailsSheet(
                controller: this,
                variantId: variantId,
              ),
            );
          },
        );
      },
    );

    syncLocalCart();
  }

  // Utils

  bool _hasMultipleVariants(Product product) {
    return product.isMultiple == true && (product.variants?.isNotEmpty ?? false);
  }

  // Dispose
  void dispose() {
    scannerController.dispose();
    barcodeTextController.dispose();
  }
}
