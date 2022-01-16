import 'dart:convert' as convert;

import 'package:conference_info_2/core/result.dart';
import 'package:conference_info_2/domain/model/conference_info.dart';
import 'package:http/http.dart' as http;

class HttpConferenceDataSource {
  String baseUrl =
      "https://raw.githubusercontent.com/junsuk5/mock_json/main/conferences.json";

  Future<Result<List<ConferenceInfo>>> getConferenceInfo() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));

      if (response.statusCode == 200) {
        Iterable jsonResponse = convert.jsonDecode(response.body);
        List<ConferenceInfo> result =
            jsonResponse.map((e) => ConferenceInfo.fromJson(e)).toList();
        return Result.success(result);
      } else {
        return Result.error(
            'Request failed with status: ${response.statusCode}.');
      }
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}
