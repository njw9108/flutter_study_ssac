import 'package:pixabay_image_search_2/core/result.dart';
import 'package:pixabay_image_search_2/domain/model/pixabay_data.dart';
import 'package:pixabay_image_search_2/domain/repository/pixabayDataRepository.dart';

class GetPixabayDataUseCase {
  final PixabayDataRepository repository;

  GetPixabayDataUseCase(this.repository);

  Future<Result<PixabayData>> call() async {
    return await repository.getPixabayData();
  }
}
