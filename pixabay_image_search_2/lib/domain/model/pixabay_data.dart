import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pixabay_image_search_2/domain/model/hits.dart';

part 'pixabay_data.freezed.dart';

part 'pixabay_data.g.dart';

@freezed
class PixabayData with _$PixabayData {
  factory PixabayData({
    required int total,
    required int totalHits,
    required List<Hits> hits,
  }) = _PixabayData;

  factory PixabayData.fromJson(Map<String, dynamic> json) =>
      _$PixabayDataFromJson(json);
}
