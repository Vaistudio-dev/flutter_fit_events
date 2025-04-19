import 'package:flutter_fit_events/models/event_dispatcher.dart';

/// Event that can be dispatched through [AppEventsDispatcher].
abstract class AppEvent {
  /// Optional description of the event.
  final String description;

  const AppEvent({this.description = ""});
}
