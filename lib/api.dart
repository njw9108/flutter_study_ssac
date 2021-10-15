import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:subway_info_app/model/subway_data.dart';

Future<SubwayData> fetch(String url) async {
  final response = await http.get(Uri.parse(url));

  Map<String, dynamic> jsonResponse = jsonDecode(response.body);

  SubwayData data = SubwayData.fromJson(jsonResponse);

  return data;
}

String MakeApiUrl(String search) {
  String url;
  url =
      'http://swopenapi.seoul.go.kr/api/subway/sample/json/realtimeStationArrival/0/5/' +
          search;
  return url;
}
