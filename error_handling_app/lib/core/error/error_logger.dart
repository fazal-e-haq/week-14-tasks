import 'package:firebase_crashlytics/firebase_crashlytics.dart';

class ErrorLogger {
  static void logError(Object error, StackTrace stack) {
    FirebaseCrashlytics.instance.recordError(error, stack);
  }

  static void logMessage(String message) {
    FirebaseCrashlytics.instance.log(message);
  }
}
