import 'package:kiri/services/api/fetch_data.dart';
import 'package:kiri/services/api/request_method.dart';

class QrRepo {
  static Future getQr() async {
    try {
      var result = await fetchData(
        url: "/api/v1/qr",
        method: RequestMethod.GET,
        isAlert: true,
      );

      return result.data!;
    } catch (err) {
      rethrow;
    }
  }
}
