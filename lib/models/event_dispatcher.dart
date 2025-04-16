import 'dart:async';

import 'package:flutter_fit_events/models/app_event.dart';

/// Global event dispatcher.
class AppEventsDispatcher {
  static final AppEventsDispatcher _singleton = AppEventsDispatcher._internal();

  final StreamController<AppEvent> _streamController = StreamController();
  late final Stream<AppEvent?> _stream = _streamController.stream.asBroadcastStream();

  Stream<AppEvent?> get stream => _stream;

  factory AppEventsDispatcher() {
    return _singleton;
  }

  AppEventsDispatcher._internal();

  /// Sends a new [AppEvent] through dispatch.
  void publish(AppEvent event) {
    _streamController.add(event);
  }

  /// Listens for a specific type of [AppEvent].
  StreamSubscription<T> listenTo<T extends AppEvent>(
    void Function(T event) onData, {
    Function? onError,
    void Function()? onDone,
    bool? cancelOnError,
  }) {
    return _stream.where((event) => event is T).cast<T>().listen(
      onData,
      onError: onError,
      onDone: onDone,
      cancelOnError: cancelOnError,
    );
  }
}
