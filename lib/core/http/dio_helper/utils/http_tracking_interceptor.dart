import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_alice/alice.dart';
import 'package:flutter_alice/core/alice_dio_interceptor.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';

class HttpTrackingInterceptor {
  HttpTrackingInterceptor._();

  static HttpTrackingInterceptor instance = HttpTrackingInterceptor._();

  Alice? _alice;
  bool _isInitialized = false;
  bool _isAliceOpened = false;

  void init() {
    if (!_isInitialized) {
      _alice = Alice(
        navigatorKey: getIt<GlobalContext>().navigationKey,
        showInspectorOnShake: false,
        showNotification: true,
      );
      _isInitialized = true;
    }
  }

  Alice get alice {
    if (_alice == null) {
      init();
    }
    return _alice!;
  }

  AliceDioInterceptor getDioInterceptor() {
    if (!_isInitialized) {
      init();
    }
    return _alice!.getDioInterceptor();
  }

  void showAlice() {
    alice.showInspector();
    // if (kDebugMode) {
    //   alice.showInspector();
    // }
    }
  }
