import 'dart:async';
import 'package:flutter_tdd/core/constants/app_constants.dart';
import 'package:rxdart/rxdart.dart';

/// use this debounce if you want single action in one place
/// this is a shred listener to use in all app cancel it in any place will cancel it in all other places
class DebounceHelper {
  DebounceHelper._();

  static final DebounceHelper instance = DebounceHelper._();

  final PublishSubject<_DebounceRequest> _subject =
      PublishSubject<_DebounceRequest>();

  StreamSubscription<_DebounceRequest>? _subscription;

  void startSearch(
      {required String value,
      required void Function(String val) onSearch,
      int? milliseconds}) {
    // ensure listener exists
    _init(milliseconds: milliseconds);

    // send value and callback
    _subject.add(_DebounceRequest(value, onSearch));
  }

  void _init({int? milliseconds}) {
    _subscription ??= _subject
        .debounceTime(Duration(
            milliseconds:
                milliseconds ?? AppConstants.instance.debounceTimeSearch))
        .listen((req) {
      req.onSearch(req.value);
    });
  }

  void cancel() {
    _subscription?.cancel();
    _subscription = null;
  }

  void dispose() {
    _subscription?.cancel();
    _subject.close();
  }
}

// internal wrapper class
class _DebounceRequest {
  final String value;
  final void Function(String) onSearch;

  _DebounceRequest(this.value, this.onSearch);
}








/// A keyed debounce helper that allows each key to have its own copy
///  when you have multiple items (products)
/// and don't want debounce operations on one item to affect others.
class KeyedDebounceHelper {
  KeyedDebounceHelper._();

  static final KeyedDebounceHelper instance = KeyedDebounceHelper._();

  final Map<String, Timer> _timers = {};

  /// Starts an action for the given [key].
  void start({
    required String key,
    required String value,
    required void Function(String val) onSearch,
    int? milliseconds,
  }) {
    _timers[key]?.cancel();
    _timers[key] = Timer(
      Duration(
          milliseconds:
              milliseconds ?? AppConstants.instance.debounceTimeSearch),
      () {
        onSearch(value);
        _timers.remove(key);
      },
    );
  }

  /// Cancels the debounce timer for the given [key] only.
  void cancel(String key) {
    _timers[key]?.cancel();
    _timers.remove(key);
  }

  /// Cancels all debounce timers.
  void cancelAll() {
    for (final timer in _timers.values) {
      timer.cancel();
    }
    _timers.clear();
  }

  /// Disposes all timers.
  void dispose() {
    cancelAll();
  }
}
