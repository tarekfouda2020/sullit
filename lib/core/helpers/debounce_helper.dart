import 'dart:async';
import 'package:rxdart/rxdart.dart';

class DebounceHelper {
  DebounceHelper._();

  static final DebounceHelper instance = DebounceHelper._();

  final PublishSubject<_DebounceRequest> _subject =
  PublishSubject<_DebounceRequest>();

  StreamSubscription<_DebounceRequest>? _subscription;


  void startSearch({
    required String value,
    required void Function(String val) onSearch,
  }) {
    // ensure listener exists
    init();

    // send value and callback
    _subject.add(_DebounceRequest(value, onSearch));
  }

  void init() {
    _subscription ??= _subject
        .debounceTime(const Duration(milliseconds: 300))
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
