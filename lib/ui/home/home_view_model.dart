import 'package:flutter/material.dart';
import 'package:image_search/data/pixabay_repository.dart';
import 'package:image_search/model/pixabay_data.dart';

class HomeViewModel with ChangeNotifier {
  final PixabayRepository api;
  PixabayData? pixabayData;

  HomeViewModel(this.api);

  void searchItem(String search) {
    api.fetch(search).then((result) {
      pixabayData = result;
      notifyListeners();
    });
  }
}
