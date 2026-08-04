import 'package:flutter_alice/alice.dart';
import 'package:flutter_alice/core/alice_core.dart';
import 'package:flutter_alice/core/alice_dio_interceptor.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';

class HttpTrackingInterceptor {

   HttpTrackingInterceptor._();

  static final HttpTrackingInterceptor instance = HttpTrackingInterceptor._();

  Alice? _alice;
  bool _isInitialized = false;
  void init() {
    if (!_isInitialized) {
      _alice = Alice(
        navigatorKey: getIt<GlobalContext>().navigationKey,
        showInspectorOnShake: false,
        showNotification: true,
        darkTheme: true
      );
      _isInitialized = true;
    }
  }

  AliceCore get _aliceCore {
    if (!_isInitialized) init();
    return AliceCore(
      getIt<GlobalContext>().navigationKey,
      true,
      false,
      true,
      "@mipmap/ic_launcher",
    );
  }

  int get requestsCount => _aliceCore.callsSubject.value.length;

  Stream<int> get requestsCountStream =>
      _aliceCore.callsSubject.map((calls) => calls.length);

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
