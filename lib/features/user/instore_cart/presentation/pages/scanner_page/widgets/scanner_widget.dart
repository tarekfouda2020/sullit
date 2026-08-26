part of 'imports.dart';

class ScannerWidget extends StatelessWidget {
  final ScannerController controller;

  const ScannerWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      color: context.colors.black.withOpacity(.83),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: MobileScanner(
                controller: controller.scannerController,
                onDetect: (capture) {
                  final barcode = controller.detectBarcode(capture);
                  if (barcode == null) return;
                  if (!context.mounted) return;
                  controller.getProductWithSku(context, barcode);
                },
              ),
            ),
          ),
          Gaps.vGap20,
          GenericTextField(
            controller: controller.barcodeTextController,
            hint: 'Search By Barcode no.',
            suffixIcon: IconButton(
              icon: Icon(
                Icons.search_rounded,
                color: context.colors.grey,
              ),
              onPressed: () => controller.submitBarcodeText(context),
            ),
            fieldTypes: FieldTypes.normal,
            type: TextInputType.number,
            action: TextInputAction.search,
            onSubmit: () => controller.submitBarcodeAndShowSheet(context),
            validate: (value) {},
          ),
        ],
      ),
    );
  }
}
