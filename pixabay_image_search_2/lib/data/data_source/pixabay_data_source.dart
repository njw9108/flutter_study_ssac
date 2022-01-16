import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pixabay_image_search_2/core/result.dart';
import 'package:pixabay_image_search_2/domain/model/pixabay_data.dart';

class PixbayDataSource {
  String baseUrl =
      'https://pixabay.com/api/?key=17828481-17c071c7f8eadf406822fada3&q=iphone&image_type=photo';

  Future<Result<PixabayData>> getPixabayData() async {
    try {
      final response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        return Result.success(PixabayData.fromJson(jsonResponse));
      } else {
        return Result.error(
            'Request failed with status: ${response.statusCode}.');
      }
    } on Exception catch (e) {
      return Result.error(e.toString());
    }
  }
}
