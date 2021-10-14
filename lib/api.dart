import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/model/pixabay_data.dart';

import 'constant.dart' as constant;

Future<PixabayData> fetch(String url) async {
  final response = await http.get(Uri.parse(url));

  Map<String, dynamic> jsonResponse = jsonDecode(response.body);

  PixabayData data = PixabayData.fromJson(jsonResponse);

  return data;
}

String MakeApiUrl(String search) {
  String url;
  url = constant.searchURL + search + constant.endLine;
  return url;
}
