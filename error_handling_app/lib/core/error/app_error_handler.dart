import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class  AppErrorHandler {
  static void handleFlutterError(FlutterErrorDetails details) {
    FirebaseCrashlytics.instance.recordFlutterError(details);
  }

  static void handleZoneError(Object error, StackTrace stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
  }
}
