import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/model/pixabay_data.dart';

import 'constant.dart' as constant;

Future<PixabayData> fetch(String url) async {
  final response = await http.get(url);

  Map<String, dynamic> jsonResponse = jsonDecode(response.body);

  PixabayData total = PixabayData.fromJson(jsonResponse);

  return total;
}

String MakeApiUrl(String search) {
  String url;
  url = constant.searchURL + search;
  return url;
}
