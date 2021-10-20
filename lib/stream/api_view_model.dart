import 'dart:async';

import 'package:image_search/model/pixabay_data.dart';
import 'package:image_search/stream/pixabay_api.dart';

class ApiViewModel {
  final _api = PixabayApi();
  final _pixabayStreamController = StreamController<PixabayData>();

  Stream<PixabayData> get hitsStream => _pixabayStreamController.stream;

  void searchItem(String url) {
    _api.fetch(url).then((result) => _pixabayStreamController.add(result));
  }

  void dispose() {
    _pixabayStreamController.close();
  }
}
