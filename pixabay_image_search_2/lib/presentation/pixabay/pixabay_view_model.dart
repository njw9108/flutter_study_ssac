import 'package:flutter/cupertino.dart';
import 'package:pixabay_image_search_2/domain/use_case/getPixabayDataUseCase.dart';
import 'package:pixabay_image_search_2/presentation/pixabay/pixabay_state.dart';

class PixabayViewModel with ChangeNotifier {
  final GetPixabayDataUseCase getPixabayData;

  PixabayViewModel(this.getPixabayData) {
    searchPicture('iphone');
  }

  PixabayState _state = PixabayState();

  PixabayState get state => _state;

  Future<void> searchPicture(String query) async {
    _state = state.copyWith(
      isLoading: true,
    );
    notifyListeners();
    final result = await getPixabayData(query);
    result.when(success: (data) {
      _state = state.copyWith(
        pixabayData: data,
      );
    }, error: (message) {
      print(message);
    });
    _state = state.copyWith(
      isLoading: false,
    );
    notifyListeners();
  }
}
