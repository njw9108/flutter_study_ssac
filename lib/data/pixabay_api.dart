import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:image_search/data/pixabay_repository.dart';
import 'package:image_search/model/pixabay_data.dart';

class PixabayApi implements PixabayRepository<PixabayData> {
  @override
  Future<PixabayData> fetch(String search) async {
    String url;
    url = makeApiUrl(search);

    final response = await http.get(Uri.parse(url));

    Map<String, dynamic> jsonResponse = jsonDecode(response.body);

    PixabayData data = PixabayData.fromJson(jsonResponse);

    return data;
  }

  String makeApiUrl(String search) {
    String url;
    url = 'https://pixabay.com/api/?key=23724506-c08a900ec14a0baa52676e2fd&q=' +
        search +
        '&image_type=photo';
    return url;
  }
}
