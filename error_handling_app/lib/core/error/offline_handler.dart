import 'dart:io';

class OfflineHandler {
  static Future<bool> isOffline() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      return result.isEmpty;
    } catch (_) {
      return true;
    }
  }
}
