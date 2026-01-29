import 'dart:async';

class Throttler {
  // Interval timer
  Timer? _interval;

  // To execute next timing
  Function? _nextFn;

  final Duration delay;

  Throttler({this.delay = const Duration(milliseconds: 1000)});

  /// Call this intance as a function
  void call(Function fn) {
    if (_interval != null) {
      _nextFn = fn;
      return;
    }

    _interval = Timer.periodic(delay, (timer) {
      if (_nextFn == null) {
        cancel();
        return;
      }
      _nextFn!();
      _nextFn = null;
    });

    fn();
  }

  void cancel() {
    _interval?.cancel();
    _interval = null;
  }
}
