import 'package:barcode/barcode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_barcode_scanner/simple_barcode_scanner.dart';

@lazySingleton
class BarcodeService {
  final Barcode code128 = Barcode.code128();
  final Barcode qrCode = Barcode.qrCode();
  String generateBarcode(String data,{bool showText = false}){
    final String svg = code128.toSvg(
      data,
      width: 300,
      height: 100,
      drawText: showText,
    );
    return svg;
  }
  String generateQrCode(String data) {
    return qrCode.toSvg(
      data,
      width: 300,
      height: 300,
    );
  }


  Future<String?> scanBarcode(BuildContext context) async {
    try {
      final result = await SimpleBarcodeScanner.scanBarcode(
        context,
        barcodeAppBar:  const BarcodeAppBar(
          appBarTitle: 'ShalaShop',
          centerTitle: true,
          enableBackButton: true,
          backButtonIcon: Icon(Icons.arrow_back_ios),
        ),
        isShowFlashIcon: true,
        delayMillis: 500,
        cameraFace: CameraFace.back,
        scanFormat: ScanFormat.ONLY_BARCODE,
      );
      final String? barcode = result;
      if (barcode?.isEmpty == true || barcode == null) {
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