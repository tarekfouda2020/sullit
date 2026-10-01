import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerItemWidget extends StatelessWidget {
  final MobileScannerController scannerController;
  final String? Function(BarcodeCapture capture) detectBarcode;
  final void Function(BuildContext context, String barcode) getProductWithSku;

  const ScannerItemWidget({
    super.key,
    required this.scannerController,
    required this.detectBarcode,
    required this.getProductWithSku,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: MobileScanner(
          controller: scannerController,
          onDetect: (capture) {
            final String? barcode = detectBarcode(capture);

            if (barcode == null) return;
            if (!context.mounted) return;

            getProductWithSku(context, barcode);
          },
        ),
      ),
    );
  }
}
