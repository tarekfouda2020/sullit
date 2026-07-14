// import 'package:flutter/material.dart';
// import 'package:flutter_tdd/core/helpers/barcode_scanner_service.dart';
// import 'package:flutter_tdd/core/helpers/custom_toast.dart';
// import 'package:flutter_tdd/core/localization/localization_methods.dart';
//
// class SimpleBarcodeScanner {
//
//   /// Scans barcode and returns SKU number
//   /// This method extracts SKU directly from the barcode or generates one
//   /// Note: Requires BuildContext for the scanner dialog
//   static Future<String?> scanAndGetSku(BuildContext context) async {
//     try {
//       // Use the new BarcodeScannerService
//       final result = await BarcodeScannerService.scanAndGetSku(context);
//
//       if (!result['success']) {
//         CustomToast.showSimpleToast(
//           msg: result['message'],
//           type: ToastType.error,
//         );
//         return null;
//       }
//
//       String sku = result['sku'] ?? '';
//
//       // Show success message
//       CustomToast.showSimpleToast(
//         msg: '${tr('skuFound')}: $sku',
//         type: ToastType.success,
//       );
//
//       return sku;
//
//     } catch (e) {
//       CustomToast.showSimpleToast(
//         msg: tr('scanError'),
//         type: ToastType.error,
//       );
//       return null;
//     }
//   }
//
//   /// Scans barcode and returns both barcode and SKU
//   /// Returns a map with 'barcode' and 'sku' keys
//   /// Note: Requires BuildContext for the scanner dialog
//   static Future<Map<String, String?>> scanBarcodeAndSku(BuildContext context) async {
//     try {
//       final result = await BarcodeScannerService.scanAndGetSku(context);
//
//       if (!result['success']) {
//         return {'barcode': null, 'sku': null};
//       }
//
//       return {
//         'barcode': result['barcode'],
//         'sku': result['sku'],
//       };
//
//     } catch (e) {
//       return {'barcode': null, 'sku': null};
//     }
//   }
//
//   /// Extracts SKU from barcode using different strategies
//   static String extractSkuFromBarcode(String barcode) {
//     // Strategy 1: If barcode contains "SKU" or similar pattern
//     if (barcode.toUpperCase().contains('SKU')) {
//       return barcode;
//     }
//
//     // Strategy 2: For UPC/EAN barcodes, use the last 6-8 digits as SKU
//     if (barcode.length >= 12) {
//       // For UPC-A (12 digits), use last 6 digits
//       if (barcode.length == 12) {
//         return 'SKU_${barcode.substring(6)}';
//       }
//       // For EAN-13 (13 digits), use last 7 digits
//       if (barcode.length == 13) {
//         return 'SKU_${barcode.substring(6)}';
//       }
//     }
//
//     // Strategy 3: For shorter barcodes, use the whole barcode
//     if (barcode.length < 12) {
//       return 'SKU_$barcode';
//     }
//
//     // Strategy 4: Default - use last 8 characters
//     return 'SKU_${barcode.substring(barcode.length - 8)}';
//   }
//
//   /// Scans barcode and returns product information
//   /// Returns a map with product details
//   /// Note: Requires BuildContext for the scanner dialog
//   static Future<Map<String, dynamic>> scanAndGetProductInfo(BuildContext context) async {
//     try {
//       final result = await BarcodeScannerService.scanAndGetSku(context);
//
//       if (!result['success']) {
//         return {
//           'success': false,
//           'message': result['message'],
//         };
//       }
//
//       return {
//         'success': true,
//         'barcode': result['barcode'],
//         'sku': result['sku'],
//         'product_name': result['product_name'],
//         'brand': result['brand'],
//         'category': result['category'],
//         'message': result['message'],
//       };
//
//     } catch (e) {
//       return {
//         'success': false,
//         'message': tr('scanError'),
//       };
//     }
//   }
//
//   /// Validates barcode format
//   static bool isValidBarcode(String barcode) {
//     if (barcode.isEmpty) return false;
//
//     // Check for common barcode formats
//     // UPC-A: 12 digits
//     if (barcode.length == 12 && RegExp(r'^\d{12}$').hasMatch(barcode)) {
//       return true;
//     }
//
//     // UPC-E: 8 digits
//     if (barcode.length == 8 && RegExp(r'^\d{8}$').hasMatch(barcode)) {
//       return true;
//     }
//
//     // EAN-13: 13 digits
//     if (barcode.length == 13 && RegExp(r'^\d{13}$').hasMatch(barcode)) {
//       return true;
//     }
//
//     // EAN-8: 8 digits
//     if (barcode.length == 8 && RegExp(r'^\d{8}$').hasMatch(barcode)) {
//       return true;
//     }
//
//     // Code 128, Code 39, etc. (variable length)
//     if (barcode.length >= 8 && barcode.length <= 50) {
//       return true;
//     }
//
//     return false;
//   }
//
//   /// Generates a unique SKU from barcode
//   static String generateUniqueSku(String barcode) {
//     final timestamp = DateTime.now().millisecondsSinceEpoch;
//     final shortBarcode = barcode.length > 8 ? barcode.substring(0, 8) : barcode;
//     return 'SKU_${shortBarcode}_${timestamp.toString().substring(timestamp.toString().length - 4)}';
//   }
// }
