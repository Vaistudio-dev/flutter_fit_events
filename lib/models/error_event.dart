import 'package:flutter_fit_events/models/index.dart';

/// Gravity of an [ErrorEvent].
enum ErrorGravity {
  /// The error is minor.
  info,
  /// The error has some gravity but has been handled.
  warning,
  /// The error is fatal and has caused a crash.
  fatal,
}

/// Event that indicates that an error happened.
class ErrorEvent extends AppEvent {
  /// Gravity of the error.
  final ErrorGravity gravity;

  /// Exception that occured.
  final Exception? exception;

  /// StackTrace of the exception.
  final StackTrace? stackTrace;

  /// Event that indicates that an error happened.
  const ErrorEvent(this.exception, this.stackTrace, {this.gravity = ErrorGravity.fatal, super.description});
}