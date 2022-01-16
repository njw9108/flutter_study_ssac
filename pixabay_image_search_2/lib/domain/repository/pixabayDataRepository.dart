import 'package:pixabay_image_search_2/core/result.dart';
import 'package:pixabay_image_search_2/domain/model/pixabay_data.dart';

abstract class PixabayDataRepository {
  Future<Result<PixabayData>> getPixabayData();
}
