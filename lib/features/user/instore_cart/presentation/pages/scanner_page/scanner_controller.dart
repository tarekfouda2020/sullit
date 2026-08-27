part of 'scanner_page_imports.dart';

class ScannerController {
  final MobileScannerController scannerController = MobileScannerController();

  final GenericBloc<bool> refreshBloc = GenericBloc(false);

  final TextEditingController barcodeTextController = TextEditingController();

  final List<InstoreCartItemModel> cartProducts = [];
  final List<InstoreCartItemModel> pendingSheetItems = [];
  ProductDetailsDomainModel? _pendingDetails;

  bool _isScanned = false;

  ScannerController() {
    syncLocalCart();
  }

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

  List<InstoreCartItemModel> get sheetItems => pendingSheetItems;

  InstoreCartItemModel _toCartItem(
    ProductDetailsDomainModel value,
    Variant variant,
  ) {
    return InstoreCartItemModel(
      id: value.product.id!,
      variantId: variant.id!,
      qnt: 1,
      price: num.parse(variant.calculablePrice ?? '0'),
      name: variant.name?.isNotEmpty == true
          ? variant.name!
          : value.product.name ?? '',
      image: variant.image?.isNotEmpty == true
          ? variant.image!
          : value.product.thumbnailImage ?? '',
      sellerName: value.product.shop?.name ?? '',
    );
  }

  void _stageItem(ProductDetailsDomainModel value, Variant variant) {
    final variantId = variant.id;
    if (variantId == null) return;
    _pendingDetails = value;
    final index =
        pendingSheetItems.indexWhere((e) => e.variantId == variantId);
    if (index != -1) {
      final existing = pendingSheetItems[index];
      pendingSheetItems[index] = existing.copyWith(qnt: existing.qnt + 1);
    } else {
      pendingSheetItems.add(_toCartItem(value, variant));
    }
    _notifyChange();
  }

  Future<void> _commitPending() async {
    final details = _pendingDetails;
    if (details == null || pendingSheetItems.isEmpty) return;
    for (final item in pendingSheetItems) {
      await InstoreCartHelper.instance.addItemToCart(
        sellerId: details.product.sellerId!,
        sellerName: details.product.shop?.name ?? '',
        sellerImage: details.product.shop?.logo ?? '',
        item: item,
      );
    }
    pendingSheetItems.clear();
    _pendingDetails = null;
    syncLocalCart();
  }

  void _discardPending() {
    pendingSheetItems.clear();
    _pendingDetails = null;
  }

  // Cart

  Future<void> addOrUpdateItem(
    ProductDetailsDomainModel value,
    Variant variant,
  ) async {
    final variantId = variant.id;
    if (variantId == null) return;

    await InstoreCartHelper.instance.addItemToCart(
      sellerId: value.product.sellerId!,
      sellerName: value.product.shop?.name ?? '',
      sellerImage: value.product.shop?.logo ?? '',
      item: _toCartItem(value, variant),
    );

    syncLocalCart();
  }

  Future<void> updateItemQty(int variantId, int newQty) async {
    final pendingIndex =
        pendingSheetItems.indexWhere((item) => item.variantId == variantId);
    if (pendingIndex != -1) {
      if (newQty < 1) {
        pendingSheetItems.removeAt(pendingIndex);
      } else {
        pendingSheetItems[pendingIndex] =
            pendingSheetItems[pendingIndex].copyWith(qnt: newQty);
      }
      _notifyChange();
      return;
    }

    if (newQty < 1) return;

    int index = cartProducts.indexWhere(
      (item) => item.variantId == variantId,
    );

    if (index == -1) return;

    InstoreCartItemModel updatedItem = cartProducts[index].copyWith(
      qnt: newQty,
    );

    await InstoreCartHelper.instance.updateItemInCart(
      item: updatedItem,
    );

    syncLocalCart();
  }

  String? detectBarcode(BarcodeCapture capture) {
    if (_isScanned) return null;

    String? barcode = capture.barcodes.firstOrNull?.rawValue;

    if (barcode == null || barcode.isEmpty) {
      return null;
    }

    _isScanned = true;

    return barcode;
  }

  void resetScan() {
    _isScanned = false;
  }

  double totalPriceResult() {
    return cartProducts.fold(
      0,
      (sum, item) => sum + item.totalPrice,
    );
  }

  int totalQntResult() {
    return cartProducts.fold(
      0,
      (sum, item) => sum + item.qnt,
    );
  }

  Future<void> submitBarcodeText(
    BuildContext context,
  ) async {
    final sku = barcodeTextController.text.trim();

    if (sku.isEmpty) return;

    await submitBarcodeAndShowSheet(context);

    barcodeTextController.clear();
  }

  Future<void> getProductWithSku(
    BuildContext context,
    String sku,
  ) async {

    CustomToast.showSnakeBar(
      "Product Scanned with code : $sku",
      type: ToastType.success,
    );

    await Future.delayed(const Duration(milliseconds: 180));

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
    _isScanned = false;
  }

  Future<void> addNewItem(
    BuildContext context,
    ProductDetailsDomainModel value,
  ) async {
    final product = value.product;

    if (_hasMultipleVariants(product)) {
      await showVariantsSheet(context, value);
      _isScanned = false;
      return;
    }

    final variant = product.variant;

    if (variant?.id == null) return;

    await addOrUpdateItem(value, variant!);
  }

  Future<void> submitBarcodeAndShowSheet(
    BuildContext context,
  ) async {
    String sku = barcodeTextController.text.trim();

    if (sku.isEmpty) return;

    ProductDetailsDomainModel? value = await _getProduct(context, sku);

    barcodeTextController.clear();

    if (!context.mounted || value == null) return;

    Product product = value.product;

    if (_hasMultipleVariants(product)) {
      await showVariantsSheet(context, value, fromSearchField: true);
      return;
    }

    Variant? variant = product.variant;

    if (variant?.id == null) return;

    _stageItem(value, variant!);

    if (!context.mounted) return;

    showAddedCartSheet(context);
  }

  void showAddedCartSheet(BuildContext context) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      enableDrag: false,
      backgroundColor: Colors.transparent,
      builder: (_) => ProductDetailsSheet(
        controller: this,
      ),
    );
    _discardPending();
    _isScanned = false;
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

  Future<void> showVariantsSheet(BuildContext context, ProductDetailsDomainModel value,{bool fromSearchField = false}) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) {
        return InstoreVariantSheetWidget(
          productDetails: value,
          onVariantSelected: (variant) async {
            Navigator.pop(context);

            if (fromSearchField) {
              _stageItem(value, variant);
              if (!context.mounted) return;
              showAddedCartSheet(context);
              return;
            }

            await addOrUpdateItem(value, variant);
          },
        );
      },
    );

    syncLocalCart();
  }

  bool _hasMultipleVariants(Product product) {
    return product.isMultiple == true &&
        (product.variants?.isNotEmpty ?? false);
  }

  void dispose() {
    scannerController.dispose();
    barcodeTextController.dispose();
  }

  Future<void> closeSheet(BuildContext context) async {
    await _commitPending();
    CustomToast.showSimpleToast(
      msg: "Items added to your cart",
      type: ToastType.success,
      toastGravity: ToastGravity.BOTTOM,
    );
    Navigator.pop(context);
    _isScanned = false;
  }
}
