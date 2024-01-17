import 'dart:convert' hide Converter;

import 'package:flutter/services.dart';
import 'package:kiri/services/api/source/api_response.dart';

Future<List<T>> convertJson<T>(String path) async {
  final String response = await rootBundle.loadString(path);
  final map = json.decode(response);
  final res = List<T>.from((map).map((x) => Converter<T?>().fromJson(x)));
  return res;
}
