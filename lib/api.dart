import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/model/pixabay_picture.dart';
import 'package:image_search/model/pixabay_total.dart';

import 'constant.dart' as constant;

Future<PixabayTotal> fetch(String url) async {
  final response = await http.get(url);

  print('1////');
  print(response.body);
  print(response.statusCode);
  Map<String, dynamic> jsonResponse = jsonDecode(response.body);
  print('2////');

  // List<PixabayTotal> total =
  //     jsonResponse.map((e) => PixabayTotal.fromJson(e)).toList();

  PixabayTotal total = PixabayTotal.fromJson(jsonResponse);

  print('3////');
  print(total.total);
  print(total.totalHits);
  print('4////');
  return total;
}

String MakeApiUrl(String search) {
  String url;
  url = constant.searchURL + search;
  return url;
}
