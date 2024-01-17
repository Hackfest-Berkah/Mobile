import 'package:kiri/services/api/fetch_data.dart';
import 'package:kiri/services/api/request_method.dart';

class TopupRepo {
  static Future topup(int method, int amount) async {
    try {
      var result = await fetchData(
        url: "/api/v1/topup",
        method: RequestMethod.POST,
        queryParameters: {
          "method": method,
          "amount": amount,
        },
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }
}
