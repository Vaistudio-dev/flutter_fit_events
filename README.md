A flutter package that handles listening and publishing events throughout your app, with the observer
pattern.

## Features

- Publish events
- Listen to all events
- Listen to specific types of events

## Getting started

- Go inside your pubspec.yaml file
- Add this line under the dependencies:
```
flutter_fit_events: ^1.0.1
```
- Get dependencies
```
flutter pub get
```

## Usage

First, AppEventsDispatcher is a Singleton, so you can use it easily everywhere.

1. Send an event for dispatch with
```AppEventsDispatcher().publish(event)```
2. Listen to all events with
```AppEventsDispatcher().stream.listen((AppEvent event) {})```
3. Listen to a specific type of event with
```AppEventsDispatcher().listenTo<AppEventType>((AppEvent event) {})```

## Additional information

Inspired from [this article](https://apparencekit.dev/blog/flutter-app-events).
Feel free to [give any feedback](https://github.com/Vaistudio-dev/flutter_fit_events/issues) ! This package is also open to contributions.
