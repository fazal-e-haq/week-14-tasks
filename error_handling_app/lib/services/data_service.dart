import 'package:error_handling_app/core/error/error_logger.dart';

class DataService {
  Future<String> fetchData() async {
    try {
      await Future.delayed(const Duration(seconds: 1));
      throw Exception('API Field');
    } catch (e, stack) {
      ErrorLogger.logError(e, stack);
    rethrow;
    }
  }
}
