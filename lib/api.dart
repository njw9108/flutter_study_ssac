import 'dart:convert';

import 'package:conference_information/model/conference_data.dart';
import 'package:http/http.dart' as http;

import 'constance.dart' as constance;

Future<List<ConferenceData>> fetchList() async {
  final response = await http.get(constance.url);

  Iterable jsonResponse = jsonDecode(response.body);
  List<ConferenceData> conferences =
      jsonResponse.map((e) => ConferenceData.fromJson(e)).toList();

  return conferences;
}
