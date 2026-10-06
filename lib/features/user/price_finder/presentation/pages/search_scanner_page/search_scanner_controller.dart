part of 'search_scanner_imports.dart';

class SearchScannerController {
  final MobileScannerController scannerController = MobileScannerController();

  final TextEditingController barcodeTextController = TextEditingController();

  bool _isScanned = false;

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

  Future<void> submitBarcodeText(
    BuildContext context,
  ) async {
    final sku = barcodeTextController.text.trim();

    if (sku.isEmpty) return;

    barcodeTextController.clear();
  }

  Future<void> getProductWithSku(BuildContext context, String sku) async {


    await Future.delayed(const Duration(milliseconds: 180));

    getIt<LoadingHelper>().showLoadingDialog();

    ProductDetailsDomainModel? value = await GetSkuProduct().call(sku);

    getIt<LoadingHelper>().dismissDialog();

    if (value == null) {
      CustomToast.showSnakeBar(
        tr('productNotFound'),
        type: ToastType.error,
      );
      _isScanned = false;
      return;
    }
    CreatePriceComparisonParams params = CreatePriceComparisonParams(productId: value.product.id!);
    var comparison = await CreatePriceComparison().call(params);
    if (comparison == null || !context.mounted) return;

    AutoRouter.of(context).push(
       PriceFinderWorkingRoute(priceComparisonsId: comparison.id),
    );

    _isScanned = false;
  }

  void dispose() {
    scannerController.dispose();
    barcodeTextController.dispose();
  }
}
