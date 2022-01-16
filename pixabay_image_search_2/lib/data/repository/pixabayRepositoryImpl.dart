import 'package:pixabay_image_search_2/core/result.dart';
import 'package:pixabay_image_search_2/data/data_source/pixabay_data_source.dart';
import 'package:pixabay_image_search_2/domain/model/pixabay_data.dart';
import 'package:pixabay_image_search_2/domain/repository/pixabayDataRepository.dart';

class PixabayRepositoryImpl implements PixabayDataRepository {
  final PixbayDataSource _dataSource;

  PixabayRepositoryImpl(this._dataSource);

  @override
  Future<Result<PixabayData>> getPixabayData() async {
    return await _dataSource.getPixabayData();
  }
}
