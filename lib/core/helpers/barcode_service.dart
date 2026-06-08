import 'package:barcode/barcode.dart';
import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class BarcodeService {
  final Barcode code128 = Barcode.code128();

  String generateBarcode(String data, {bool showText = false}) {
    final String svg = code128.toSvg(
      data,
      width: 300,
      height: 100,
      drawText: showText,
    );
    return svg;
  }

  Future<String?> scanBarcode() async {
    try {
      final result = await BarcodeScanner.scan(
        options: ScanOptions(
          strings: {
            'cancel': tr('cancel'),
          },
        ),
      );

      final String barcode = result.rawContent;
      if (barcode.isEmpty) {
        return null;
      }
      return barcode;
    } catch (e) {
      CustomToast.showSimpleToast(
        msg: tr('scanCancel'),
        type: ToastType.error,
      );
      return null;
    }
  }
}
