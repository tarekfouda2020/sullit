import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class CustomFlutterError {
   CustomFlutterError._();

  static final CustomFlutterError instance = CustomFlutterError._();

   final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 5,
      errorMethodCount: 8,
      lineLength: 120,
      colors: true,
      printEmojis: true,
    ),
  );

  void initFlutterError() {
    FlutterError.onError = (FlutterErrorDetails details) {
      if (kDebugMode) {
        FlutterError.presentError(details);
        _logFlutterError(details);
      }
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    };

    PlatformDispatcher.instance.onError = (error, stack) {
      if(kDebugMode){
        _logger.e(error, error: error, stackTrace: stack);
      }
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  void _logFlutterError(FlutterErrorDetails details) {
    const red = '\x1B[31m';
    const bold = '\x1B[1m';
    const reset = '\x1B[0m';

    final message = '''
$red$bold
 ${details.exceptionAsString()}

 $reset
''';
    _logger.e(message);
  }
}
