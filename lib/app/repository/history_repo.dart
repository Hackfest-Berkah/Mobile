import 'package:kiri/app/models/response/history/history_model.dart';
import 'package:kiri/services/api/fetch_data.dart';
import 'package:kiri/services/api/request_method.dart';

class HistoryRepo {
  static Future<List<HistoryResponse>> getData() async {
    try {
      var result = await fetchMultipleData<HistoryResponse>(
        url: "/api/v1/history",
        method: RequestMethod.GET,
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }
}
